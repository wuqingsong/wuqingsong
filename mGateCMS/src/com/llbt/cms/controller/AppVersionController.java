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
import com.llbt.cms.entity.AppVersion;
import com.llbt.cms.service.AppVersionService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;


/**
 * AppVersionController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/appVersion")
@SuppressWarnings("unused")
public class AppVersionController extends BaseController{
    @Autowired
	private AppVersionService appVersionService;
	
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
	public ModelAndView appVersionList(Page<AppVersion> page){
		modelAndView=new ModelAndView("/appVersion/list");
		List<AppVersion> appVersionList = appVersionService.queryPage(page);
		page.setResult(appVersionList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView appVersionDetail(String id) {
		modelAndView = new ModelAndView("/appVersion/detail");
		AppVersion  appVersion =  appVersionService.getById(id);
		modelAndView.addObject("appVersion", appVersion);
		return modelAndView;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddAppVersionPage(){
		return "/appVersion/add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addAppVersion(AppVersion appVersion) {
		appVersion.setId(PrimaryKeyUtils.getUUID());
		appVersion.setCreateBy(super.getLogonUserId(session));
		appVersion.setCreateDate(new Date());
		try{
		 appVersionService.insert(appVersion);
		 responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addAppVersion", e);
		}
		
		return responseData;
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateAppVersion(AppVersion appVersion) {
		appVersion.setUpdateBy(super.getLogonUserId(session));
		appVersion.setUpdateDate(new Date());
		try{
			appVersionService.update(appVersion);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateAppVersion", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteAppVersions(@RequestParam(required=false)List<String> ids) {
		try {
			appVersionService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteAppVersions", e);
		}
		return responseData;
	}
	
	
}
