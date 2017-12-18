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
import com.llbt.cms.entity.CommandConstrast;
import com.llbt.cms.service.CommandConstrastService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;


/**
 * CommandConstrastController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/commandConstrast")
@SuppressWarnings("unused")
public class CommandConstrastController extends BaseController{
    @Autowired
	private CommandConstrastService commandConstrastService;
	
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
	public ModelAndView commandConstrastList(Page<CommandConstrast> page,CommandConstrast commandConstrast){
		modelAndView=new ModelAndView("/commandConstrast/list");
		page.setEntity(commandConstrast);
		List<CommandConstrast> commandConstrastList = commandConstrastService.queryPage(page);
		page.setResult(commandConstrastList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView commandConstrastDetail(String id) {
		modelAndView = new ModelAndView("/commandConstrast/detail");
		CommandConstrast  commandConstrast =  commandConstrastService.getById(id);
		modelAndView.addObject("commandConstrast", commandConstrast);
		return modelAndView;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddCommandConstrastPage(){
		return "/commandConstrast/add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addCommandConstrast(CommandConstrast commandConstrast) {
		commandConstrast.setId(PrimaryKeyUtils.getUUID());
		commandConstrast.setCreateBy(super.getLogonUserId(session));
		commandConstrast.setCreateDate(new Date());
		try{
		 commandConstrastService.insert(commandConstrast);
		 responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addCommandConstrast", e);
		}
		
		return responseData;
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateCommandConstrast(CommandConstrast commandConstrast) {
		commandConstrast.setUpdateBy(super.getLogonUserId(session));
		commandConstrast.setUpdateDate(new Date());
		try{
			commandConstrastService.update(commandConstrast);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateCommandConstrast", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteCommandConstrasts(@RequestParam(required=false)List<String> ids) {
		try {
			commandConstrastService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteCommandConstrasts", e);
		}
		return responseData;
	}
	
	
}
