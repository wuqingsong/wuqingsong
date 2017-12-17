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
import com.llbt.cms.entity.ServiceAgreement;
import com.llbt.cms.service.ServiceAgreementService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;


/**
 * ServiceAgreementController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/serviceAgreement")
@SuppressWarnings("unused")
public class ServiceAgreementController extends BaseController{
    @Autowired
	private ServiceAgreementService serviceAgreementService;
	
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
	public ModelAndView serviceAgreementList(Page<ServiceAgreement> page){
		modelAndView=new ModelAndView("/serviceAgreement/list");
		List<ServiceAgreement> serviceAgreementList = serviceAgreementService.queryPage(page);
		page.setResult(serviceAgreementList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView serviceAgreementDetail(String id) {
		modelAndView = new ModelAndView("/serviceAgreement/detail");
		ServiceAgreement  serviceAgreement =  serviceAgreementService.getById(id);
		modelAndView.addObject("serviceAgreement", serviceAgreement);
		return modelAndView;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddServiceAgreementPage(){
		return "/serviceAgreement/add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addServiceAgreement(ServiceAgreement serviceAgreement) {
		serviceAgreement.setId(PrimaryKeyUtils.getUUID());
		serviceAgreement.setCreateBy(super.getLogonUserId(session));
		serviceAgreement.setCreateDate(new Date());
		try{
		 serviceAgreementService.insert(serviceAgreement);
		 responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addServiceAgreement", e);
		}
		
		return responseData;
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateServiceAgreement(ServiceAgreement serviceAgreement) {
		serviceAgreement.setUpdateBy(super.getLogonUserId(session));
		serviceAgreement.setUpdateDate(new Date());
		try{
			serviceAgreementService.update(serviceAgreement);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateServiceAgreement", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteServiceAgreements(@RequestParam(required=false)List<String> ids) {
		try {
			serviceAgreementService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteServiceAgreements", e);
		}
		return responseData;
	}
	
	
}
