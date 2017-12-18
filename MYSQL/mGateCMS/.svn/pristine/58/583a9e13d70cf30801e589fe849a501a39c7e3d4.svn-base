package com.llbt.cms.interceptor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.llbt.cms.cache.MenuCache;
import com.llbt.cms.entity.Menu;
import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;
import com.llbt.cms.service.UserService;
import com.llbt.cms.util.Base64;
import com.llbt.cms.util.CookieUtils;
import com.llbt.cms.util.MmsUtils;

/**
 * 
 * @author JianNian Lin
 * @date 2017年4月13日
 * @description session拦截器
 */
public class SessionInterceptor implements HandlerInterceptor {

	@Autowired
	private UserService userService;

	@Autowired
	private MenuCache menuCache;

	/**
	 * 用户会话集合Map key:用户id Value:用户会话
	 */
	public static Map<String, HttpSession> userSessionMap = new HashMap<String, HttpSession>();

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object arg2) throws Exception {
		HttpSession session = request.getSession();

		if (session.getAttribute(ReserveDist.USER_SESSION_INFO) == null) {
			// 如果会话不存在用户信息,则进cookie查找
			String userCookie = CookieUtils.getCookieByName(request,
					ReserveDist.USER_LOGIN_COOKIE_NAME);
			if (StringUtils.isEmpty(userCookie)) {
				response.sendRedirect(MmsUtils.getServerPath(request)
						+ "/login.jsp");
				return false;
			}
			String userId = Base64.getFromBase64(userCookie);
			User user = userService.getById(userId);
			HttpSession userSession = SessionInterceptor.userSessionMap
					.get(userId);
			if (user == null || userSession != null) {
				if (userSession != null) {
					CookieUtils.delCookies(response,
							ReserveDist.USER_LOGIN_COOKIE_NAME);
					response.sendRedirect(MmsUtils.getServerPath(request)
							+ "/login.jsp?code=10001");
				}else {
					response.sendRedirect(MmsUtils.getServerPath(request)
							+ "/login.jsp?code=10002");
				}
				return false;
			} else {
				session.setAttribute(ReserveDist.USER_SESSION_INFO, user);
				// 单会话登陆控制

				SessionInterceptor.userSessionMap.put(userId, session);

				List<Menu> userMenus = null;
				if (user != null
						&& user.getUserType().equals(
								ReserveDist.USER_TYPE_SUPERMANAGER)) {
					userMenus = menuCache.getAllMenus();
				} else {
					userMenus = menuCache.getUserMenus(user.getId());
				}
				session.setAttribute(ReserveDist.USER_MENUS_LIST, userMenus);
				String codeString = menuCache.getUserMenuCodeString(user
						.getId());
				session.setAttribute(ReserveDist.USER_MENUS_MENUCODE_STRING,
						codeString);
				return true;
			}
		}

		return true;
	}

}
