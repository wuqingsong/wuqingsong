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
import javax.xml.ws.RequestWrapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import com.llbt.cms.entity.Role;
import com.llbt.cms.entity.User;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;
import com.llbt.cms.entity.OperateLog;
import com.llbt.cms.service.OperateLogService;


/**
 * OperateLogController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/operateLog")
@SuppressWarnings("unused")
public class OperateLogController extends BaseController{
    @Autowired
	private OperateLogService operateLogService;
	
	private HttpSession session;
	private HttpServletResponse response;
	private HttpServletRequest request;
	
	private ResponseData responseData = null;
	@ModelAttribute
	public void init(HttpSession session, HttpServletResponse response,
			HttpServletRequest request) {
		this.session = session;
		this.request = request;
		this.response = response;
	}
	
	@RequestMapping("/list")
	public ModelAndView operateLogList(Page<OperateLog> page){
		ModelAndView modelAndView=new ModelAndView("/operateLog/list");
		List<OperateLog> operateLogList = operateLogService.queryPage(page);
		page.setResult(operateLogList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView operateLogDetail(String id) {
		ModelAndView modelAndView = new ModelAndView("/operateLog/detail");
		OperateLog  operateLog =  operateLogService.getById(id);
		modelAndView.addObject("operateLog", operateLog);
		return modelAndView;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddOperateLogPage(){
		return "/operateLog/add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addOperateLog(OperateLog operateLog) {
		operateLog.setId(PrimaryKeyUtils.getUUID());
		operateLog.setCreateBy(super.getLogonUserId(session));
		operateLog.setCreateDate(new Date());
		try{
		 operateLogService.insert(operateLog);
		 responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addOperateLog", e);
		}
		
		return responseData;
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateOperateLog(OperateLog operateLog) {
		operateLog.setUpdateBy(super.getLogonUserId(session));
		operateLog.setUpdateDate(new Date());
		try{
			operateLogService.update(operateLog);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateOperateLog", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteOperateLogs(@RequestParam(required=false)List<String> ids) {
		try {
			operateLogService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteOperateLogs", e);
		}
		return responseData;
	}
	
	
}
