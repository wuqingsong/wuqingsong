/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.controller;

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
import org.springframework.web.servlet.ModelAndView;

import com.llbt.cms.bean.ResponseData;
import com.llbt.cms.cache.MenuCache;
import com.llbt.cms.common.BaseController;
import com.llbt.cms.entity.Menu;
import com.llbt.cms.entity.Role;
import com.llbt.cms.service.RoleService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;

/**
 * GateRoleController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/role")
@SuppressWarnings("unused")
public class RoleController extends BaseController {
	@Autowired
	private RoleService roleService;

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

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView toAddRolePage() {
		modelAndView = new ModelAndView("/role/add");
		List<Menu> menus = menuCache.getAllAuths();
		modelAndView.addObject("menus", super.jsonConvert(menus));
		
		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addRole(Role role,
			@RequestParam(required = false) List<String> menuIds) {
		role.setId(PrimaryKeyUtils.getUUID());
		role.setCreateBy(super.getLogonUserId(session));
		role.setCreateDate(new Date());
		try {
			roleService.addRole(role, menuIds);
			menuCache.doRelationRefresh();
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
		}

		return responseData;
	}

	@RequestMapping(value = "/list")
	public ModelAndView roleList(Page<Role> page) {
		modelAndView = new ModelAndView("/role/list");
		List<Role> roleList = roleService.queryPage(page);
		page.setResult(roleList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}

	@RequestMapping(value = "/detail")
	public ModelAndView roleDetail(String id) {
		modelAndView = new ModelAndView("/role/detail");
		Role role = roleService.getById(id);
		modelAndView.addObject("role", role);
		List<Menu> menuList = roleService.getRoleMenus(id);
		modelAndView.addObject("menus", super.jsonConvert(menuList));
		return modelAndView;
	}

	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateRole(Role role,
			@RequestParam(required = false) List<String> menuIds) {
		role.setUpdateBy(super.getLogonUserId(session));
		role.setUpdateDate(new Date());
		try {
			roleService.updateRole(role, menuIds);
			menuCache.doRelationRefresh();
			responseData = ResponseData.createSuccessRes("success");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("fail");
		}
		return responseData;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteRoles(
			@RequestParam(required = false) List<String> ids) {
		try {
			roleService.deleteRoles(ids);
			responseData = ResponseData.createSuccessRes("success");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			e.printStackTrace();
		}
		return responseData;
	}

	/*
	 * @RequestMapping("authTree")
	 * 
	 * @ResponseBody public List<Menu> roleAuthTree(String roleId) { List<Menu>
	 * roleMenuTree = menuCache.getRoleAuthTree(roleId); return roleMenuTree; }
	 */
	@RequestMapping(value = "/validate")
	@ResponseBody
	public boolean validateRoleName(String roleName) {
		int count = roleService.countRoleName(roleName);
		return count <= 0;
	}
}
