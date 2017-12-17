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
import com.llbt.cms.common.BaseController;
import com.llbt.cms.entity.Department;
import com.llbt.cms.service.DepartmentService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;

/**
 * DepartmentController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/department")
@SuppressWarnings("unused")
public class DepartmentController extends BaseController {
	@Autowired
	private DepartmentService departmentService;

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
	public ModelAndView departmentList(Page<Department> page) {
		modelAndView = new ModelAndView("/department/list");
		List<Department> departmentList = departmentService.queryPage(page);
		page.setResult(departmentList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}

	@RequestMapping(value = "/detail")
	public ModelAndView departmentDetail(String id) {
		modelAndView = new ModelAndView("/department/detail");
		Department department = departmentService.getById(id);
		modelAndView.addObject("department", department);
		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView toAddDepartmentPage() {
		modelAndView = new ModelAndView("/department/add");
		modelAndView.addObject("departmentDept", departmentService.getAll());
		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addDepartment(Department department) {
		department.setId(PrimaryKeyUtils.getUUID());
		department.setCreateBy(super.getLogonUserId(session));
		department.setCreateDate(new Date());
		String parentId = department.getParentId();
		if (parentId == null || parentId.equals("0")) {
			department.setDeptLevel(1);
		} else {
			Department parentDept = departmentService.getById(parentId);
			department.setDeptLevel(parentDept.getDeptLevel() + 1);
		}
		try {
			departmentService.insert(department);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addDepartment", e);
		}

		return responseData;
	}

	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateDepartment(Department department) {
		department.setUpdateBy(super.getLogonUserId(session));
		department.setUpdateDate(new Date());
		try {
			departmentService.update(department);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateDepartment", e);
		}
		return responseData;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteDepartments(
			@RequestParam(required = false) List<String> ids) {
		try {
			departmentService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteDepartments", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/validate")
	@ResponseBody
	public boolean validateDeptName(String deptName) {
		int count = departmentService.countDeptName(deptName);
		return count <= 0;
	}

}
