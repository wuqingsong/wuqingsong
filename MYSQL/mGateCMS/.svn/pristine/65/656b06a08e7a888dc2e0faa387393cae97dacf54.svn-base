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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.llbt.cms.bean.ResponseData;
import com.llbt.cms.common.BaseController;
import com.llbt.cms.entity.SystemService;
import com.llbt.cms.service.SystemServiceService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;

/**
 * SystemServiceController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/systemService")
@SuppressWarnings("unused")
public class SystemServiceController extends BaseController {
	@Autowired
	private SystemServiceService systemServiceService;

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

	@RequestMapping("/list")
	public ModelAndView systemServiceList(Page<SystemService> page) {
		modelAndView = new ModelAndView("/systemService/list");
		List<SystemService> systemServiceList = systemServiceService
				.queryPage(page);
		page.setResult(systemServiceList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}

	@RequestMapping(value = "/detail")
	public ModelAndView systemServiceDetail(String id) {
		modelAndView = new ModelAndView("/systemService/detail");
		SystemService systemService = systemServiceService.getById(id);
		modelAndView.addObject("systemService", systemService);
		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddSystemServicePage() {
		return "/systemService/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addSystemService(SystemService systemService) {
		systemService.setId(PrimaryKeyUtils.getUUID());
		systemService.setCreateBy(super.getLogonUserId(session));
		systemService.setCreateDate(new Date());
		systemService.setServiceState("1");
		try {
			systemServiceService.insert(systemService);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addSystemService", e);
		}

		return responseData;
	}

	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateSystemService(SystemService systemService) {
		systemService.setUpdateBy(super.getLogonUserId(session));
		systemService.setUpdateDate(new Date());
		try {
			systemServiceService.update(systemService);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateSystemService", e);
		}
		return responseData;
	}

	/*@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteSystemServices(
			@RequestParam(required = false) List<String> ids) {
		try {
			systemServiceService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteSystemServices", e);
		}
		return responseData;
	}*/

}
