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
import com.llbt.cms.cache.SystemParamsCache;
import com.llbt.cms.common.BaseController;
import com.llbt.cms.entity.SystemParam;
import com.llbt.cms.service.SystemParamService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;


/**
 * SystemParamController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/systemParam")
@SuppressWarnings("unused")
public class SystemParamController extends BaseController{
    @Autowired
	private SystemParamService systemParamService;
    @Autowired
    private SystemParamsCache systemParamsCache ;
	
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
	public ModelAndView systemParamList(Page<SystemParam> page){
		modelAndView=new ModelAndView("/systemParam/list");
		List<SystemParam> systemParamList = systemParamService.queryPage(page);
		page.setResult(systemParamList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView systemParamDetail(String id) {
		modelAndView = new ModelAndView("/systemParam/detail");
		SystemParam  systemParam =  systemParamService.getById(id);
		modelAndView.addObject("systemParam", systemParam);
		return modelAndView;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddSystemParamPage(){
		return "/systemParam/add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addSystemParam(SystemParam systemParam) {
		systemParam.setId(PrimaryKeyUtils.getUUID());
		systemParam.setCreateBy(super.getLogonUserId(session));
		systemParam.setCreateDate(new Date());
		try{
		 systemParamService.insert(systemParam);
		 systemParamsCache.doRefresh();
		 responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addSystemParam", e);
		}
		
		return responseData;
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateSystemParam(SystemParam systemParam) {
		systemParam.setUpdateBy(super.getLogonUserId(session));
		systemParam.setUpdateDate(new Date());
		try{
			systemParamService.update(systemParam);
			systemParamsCache.doRefresh();
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateSystemParam", e);
		}
		return responseData;
	}
	
/*	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteSystemParams(@RequestParam(required=false)List<String> ids) {
		try {
			systemParamService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteSystemParams", e);
		}
		return responseData;
	}*/
	
	
}
