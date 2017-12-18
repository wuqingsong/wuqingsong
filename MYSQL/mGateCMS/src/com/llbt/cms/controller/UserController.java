/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.controller;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Date;
import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.llbt.cms.bean.ResponseData;
import com.llbt.cms.cache.MenuCache;
import com.llbt.cms.common.BaseController;
import com.llbt.cms.entity.User;
import com.llbt.cms.enumm.ReserveDist;
import com.llbt.cms.service.DepartmentService;
import com.llbt.cms.service.RoleService;
import com.llbt.cms.service.UserService;
import com.llbt.cms.util.PasswordEncryption;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.util.UploadUtil;
import com.llbt.cms.vo.Page;

/**
 * GateUserController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/user")
@SuppressWarnings("unused")
public class UserController extends BaseController {

	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private MenuCache menuCache;
	
	private HttpSession session;
	private HttpServletResponse response;
	private HttpServletRequest request;

	private ModelAndView modelAndView;
	private ResponseData responseData = null;

	@ModelAttribute
	public void init(HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
		this.session = session;
		this.request = request;
		this.response = response;
	}

	@RequestMapping("list")
	public ModelAndView userList(Page<User> page,User user) {
		modelAndView = new ModelAndView("/user/list");
		page.setEntity(user);
		List<User> userList = userService.queryPage(page);
		page.setResult(userList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}

	@RequestMapping(value = "/detail")
	public ModelAndView userDetail(String id) {
		modelAndView = new ModelAndView("/user/detail");
		User user = userService.getById(id);
		modelAndView.addObject("user", user);
		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView toAddUserPage() {
		modelAndView = new ModelAndView("/user/add");
		modelAndView.addObject("roleList", roleService.getAll());
		modelAndView.addObject("deptList", departmentService.getAll());
		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addUser(User user,@RequestParam(required=false)List<String> roleIds) {
		user.setId(PrimaryKeyUtils.getUUID());
		user.setCreateBy(super.getLogonUserId(session));
		user.setCreateDate(new Date());
		user.setUserType(ReserveDist.USER_TYPE_NORMAL);
		user.setUserState(ReserveDist.USER_STATE_NORMAL);
		String password=user.getUserPassword();
		try {
			user.setUserPassword(PasswordEncryption.getEncryptedPassword(password));
			userService.addUser(user,roleIds);
			menuCache.doRelationRefresh();
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addUser", e);
		}

		return responseData;
	}

	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateUser(final User user,@RequestParam(required=false)List<String> roleIds) {
		user.setUpdateBy(super.getLogonUserId(session));
		user.setUpdateDate(new Date());
		try {
			userService.updateUser(user,roleIds);
			menuCache.doRelationRefresh();
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addUser", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteUsers(
			@RequestParam(required = false) List<String> ids) {
		try {
			userService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("addUser", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/initializationPassword")
	@ResponseBody
	public ResponseData InitializationPassword(User user) {
		try {
			String pwd = ReserveDist.USER_INITIALIAZTION_PASSWORD;
			user.setUserPassword(PasswordEncryption.getEncryptedPassword(pwd));
			userService.initializationPassword(user);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
		}
		return responseData;
	}
	
	@RequestMapping(value = "/validate")
	@ResponseBody
	public boolean validateUsername(String userName){
		int count =userService.countUsername(userName);
		return count <=0;
	}
	
	@RequestMapping(value = "/initPassword", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData getUserName(String userId){
		User user = userService.getById(userId);
		String userName = user.getUserName();
		 String pwd=userName.substring(userName.length()- 4);
		String password = "MM"+pwd;
				try {
					User newUser = new User();
					newUser.setId(userId);
					newUser.setUserPassword(PasswordEncryption.getEncryptedPassword(password));
					newUser.setUpdateBy(super.getLogonUserId(session));
					newUser.setUpdateDate(new Date());
					int count = userService.update(newUser);
					if(count>0){
						responseData = ResponseData.createSuccessRes("Succeed!");
					}
				}catch (Exception e) {
							responseData = ResponseData.createFailRes("Failed!");
						}
		return responseData;
	}
	@RequestMapping(value = "/getUpload", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addCmsImg(@RequestParam(value="file",required=false)MultipartFile file) {
			String msg = UploadUtil.uploadPhoto(file);
	        return responseData = ResponseData.createSuccessRes(msg);
	}
}
