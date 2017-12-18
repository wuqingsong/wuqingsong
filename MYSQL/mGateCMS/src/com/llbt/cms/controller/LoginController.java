package com.llbt.cms.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.llbt.cms.bean.ResponseData;
import com.llbt.cms.cache.MenuCache;
import com.llbt.cms.common.BaseController;
import com.llbt.cms.entity.LoginRecord;
import com.llbt.cms.entity.Menu;
import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;
import com.llbt.cms.enumm.ReturnType;
import com.llbt.cms.interceptor.SessionInterceptor;
import com.llbt.cms.service.UserService;
import com.llbt.cms.util.CookieUtils;
import com.llbt.cms.util.MmsUtils;
import com.llbt.cms.util.PasswordEncryption;

/**
 * 
 * @author Jiannian Lin
 * 
 * @date 2017-4-11
 * @description opreators login controller
 */
@Controller
@RequestMapping("/")
@SuppressWarnings("unused")
public class LoginController extends BaseController {

	@Autowired
	private MenuCache menuCache;
	@Autowired
	private UserService userService;
	private HttpSession session;
	private HttpServletResponse response;
	private HttpServletRequest request;

	@ModelAttribute
	public void init(HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
		this.session = session;
		this.request = request;
		this.response = response;
	}

	/**
	 * Verication Code
	 * 
	 * @param session
	 * @param response
	 */
	@RequestMapping("veriCode")
	public void getVeriCode() {
		try {
			String veriCode = MmsUtils.setVeriCode(response);
			session.setAttribute(ReserveDist.VERICODE_EFFECTIVE_TIME_KEY,
					new Date());
			session.setAttribute(ReserveDist.VERICODE_KEY, veriCode);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData doLogin(String veriCode, User user,
			@RequestParam(required = false) String remFlag) {
		// 1.先验证验证码信息,然后再入库查询用户
		ResponseData responseData = null;
		String verifyCode = (String) session
				.getAttribute(ReserveDist.VERICODE_KEY);
		Date effectiveTime = (Date) session
				.getAttribute(ReserveDist.VERICODE_EFFECTIVE_TIME_KEY);
		if (effectiveTime != null
				& new Date().getTime() - effectiveTime.getTime() > ReserveDist.VERICODE_EFFECTIVE_TIME) {
			responseData = new ResponseData(-15, "Validation code expired!");
			return responseData;
		}
		// 校验验证码
		if (verifyCode != null && !verifyCode.equalsIgnoreCase(veriCode)) {
			responseData = new ResponseData(-10, "Verify code error!");
			return responseData;
		}
		User gateUser = userService.getUserByUserName(user);
		if (gateUser == null) {
			responseData = new ResponseData(-17, "user name does not exist!");
			return responseData;
		}
		String loginInfo = null;
		String loginState = "0";
		ReturnType returnType;
		if (PasswordEncryption.authenticate(user.getUserPassword(),
				gateUser.getUserPassword())) {
			if (gateUser.getUserState().equals(ReserveDist.USER_STATE_PAUSED)) {
				returnType = ReturnType.LOGIN_ERROR_USER_STATE;
				LoginRecord loginRecord = new LoginRecord(gateUser.getId(),
						MmsUtils.getIpAddress(request), returnType);
				userService.insertLoginRecord(loginRecord);
				return ResponseData.createFailRes(returnType);
			}
			// 单会话登陆控制
			String userId = gateUser.getId();
			HttpSession userSession = SessionInterceptor.userSessionMap
					.get(userId);
			if (userSession != null) {
				try {
					userSession.removeAttribute(ReserveDist.USER_SESSION_INFO);
				} catch (Exception e) {
				}
				CookieUtils.delCookies(response,
						ReserveDist.USER_LOGIN_COOKIE_NAME);
			}
			session.setAttribute(ReserveDist.USER_SESSION_INFO, gateUser);
			SessionInterceptor.userSessionMap.put(userId, session);
			returnType = ReturnType.OK;
			responseData = ResponseData.createSuccessRes(returnType.getInfo());
			// 记住密码
			CookieUtils.rememberUser(response, gateUser, remFlag);
		} else {
			// 查询登陆记录表当前的登录失败记录数 如果大于等于5 修改用户状态为停用 并且返回失败信息
			int errorCout = userService.countLoginError(gateUser.getId());
			if (errorCout >= 5) {
				User updUser = new User();
				updUser.setId(gateUser.getId());
				updUser.setUserState(ReserveDist.USER_STATE_PAUSED);
				userService.update(updUser);
				returnType = ReturnType.LOGIN_ERROR_WRONG;
				LoginRecord loginRecord = new LoginRecord(gateUser.getId(),
						MmsUtils.getIpAddress(request), returnType);
				userService.insertLoginRecord(loginRecord);
				return ResponseData.createFailRes(returnType);
			}
			returnType = ReturnType.LOGIN_ERROR_PASSWORD;
			responseData = ResponseData.createFailRes(returnType);
		}
		// 插入登陆记录
		LoginRecord loginRecord = new LoginRecord(gateUser.getId(),
				MmsUtils.getIpAddress(request), returnType);
		userService.insertLoginRecord(loginRecord);
		return responseData;
	}

	@RequestMapping("index")
	public ModelAndView toHomePage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("/main/home");
		// 在这里读取用户信息,以及菜单列表,存在session中
		User user = (User) session.getAttribute(ReserveDist.USER_SESSION_INFO);
		List<Menu> userMenus = null;
		if (user != null
				&& user.getUserType()
						.equals(ReserveDist.USER_TYPE_SUPERMANAGER)) {
			userMenus = menuCache.getAllMenus();
		} else {
			userMenus = menuCache.getUserMenus(user.getId());
		}
		session.setAttribute(ReserveDist.USER_MENUS_LIST, userMenus);
		String codeString = menuCache.getUserMenuCodeString(user.getId());
		session.setAttribute(ReserveDist.USER_MENUS_MENUCODE_STRING, codeString);

		return model;
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String toLoginPage() {
		return "redirect:/login.jsp";
	}

	@RequestMapping("logout")
	public String doLogOut() {
		CookieUtils.delCookies(response, ReserveDist.USER_LOGIN_COOKIE_NAME);
		if (session != null) {
			User user = (User) session
					.getAttribute(ReserveDist.USER_SESSION_INFO);
			String userId = user.getId();
			HttpSession userSession = SessionInterceptor.userSessionMap
					.get(userId);
			if (userSession != null) {
				userSession.removeAttribute(ReserveDist.USER_SESSION_INFO);
			}
			session.removeAttribute(ReserveDist.USER_SESSION_INFO);
		}

		return "redirect:/login.jsp";
	}
}
