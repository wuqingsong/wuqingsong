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
import com.llbt.cms.entity.TableRule;

import com.llbt.cms.service.TableRuleService;


/**
 * TableRuleController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/tableRule")
@SuppressWarnings("unused")
public class TableRuleController extends BaseController{
    @Autowired
	private TableRuleService tableRuleService;
	
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
	public ModelAndView tableRuleList(Page<TableRule> page){
		ModelAndView modelAndView=new ModelAndView("/tableRule/list");
		List<TableRule> tableRuleList = tableRuleService.queryPage(page);
		page.setResult(tableRuleList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView tableRuleDetail(String id) {
		ModelAndView modelAndView = new ModelAndView("/tableRule/detail");
		TableRule  tableRule =  tableRuleService.getById(id);
		modelAndView.addObject("tableRule", tableRule);
		return modelAndView;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddTableRulePage(){
		return "/tableRule/add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addTableRule(TableRule tableRule) {
		tableRule.setId(PrimaryKeyUtils.getUUID());
		tableRule.setCreateBy(super.getLogonUserId(session));
		tableRule.setCreateDate(new Date());
		try{
		 tableRuleService.insert(tableRule);
		 responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addTableRule", e);
		}
		
		return responseData;
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateTableRule(TableRule tableRule) {
		tableRule.setUpdateBy(super.getLogonUserId(session));
		tableRule.setUpdateDate(new Date());
		try{
			tableRuleService.update(tableRule);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateTableRule", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteTableRules(@RequestParam(required=false)List<String> ids) {
		try {
			tableRuleService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteTableRules", e);
		}
		return responseData;
	}
	
	
}
