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
import com.llbt.cms.entity.CodeConstrast;
import com.llbt.cms.service.CodeConstrastService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;


/**
 * CodeConstrastController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/codeConstrast")
@SuppressWarnings("unused")
public class CodeConstrastController extends BaseController{
    @Autowired
	private CodeConstrastService codeConstrastService;
	
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
	public ModelAndView codeConstrastList(CodeConstrast codeConstrast,Page<CodeConstrast> page){
		modelAndView=new ModelAndView("/codeConstrast/list");
		page.setEntity(codeConstrast);
		List<CodeConstrast> codeConstrastList = codeConstrastService.queryPage(page);
		page.setResult(codeConstrastList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView codeConstrastDetail(String id) {
		modelAndView = new ModelAndView("/codeConstrast/detail");
		CodeConstrast  codeConstrast =  codeConstrastService.getById(id);
		modelAndView.addObject("codeConstrast", codeConstrast);
		return modelAndView;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddCodeConstrastPage(){
		return "/codeConstrast/add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addCodeConstrast(CodeConstrast codeConstrast) {
		codeConstrast.setId(PrimaryKeyUtils.getUUID());
		codeConstrast.setCreateBy(super.getLogonUserId(session));
		codeConstrast.setCreateDate(new Date());
		try{
		 codeConstrastService.insert(codeConstrast);
		 responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addCodeConstrast", e);
		}
		
		return responseData;
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateCodeConstrast(CodeConstrast codeConstrast) {
		codeConstrast.setUpdateBy(super.getLogonUserId(session));
		codeConstrast.setUpdateDate(new Date());
		try{
			codeConstrastService.update(codeConstrast);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateCodeConstrast", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteCodeConstrasts(@RequestParam(required=false)List<String> ids) {
		try {
			codeConstrastService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteCodeConstrasts", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/validate")
	@ResponseBody
	public boolean validateConstrastName(@RequestParam(required = false) String errorCode,@RequestParam(required = false) String cpsErrorCode) {
			if(errorCode!=null){
				int count = codeConstrastService.countConstrasteErrorCode(errorCode);
				return count <= 0;
			}
				int count = codeConstrastService.countConstrastCpsErrorCode(cpsErrorCode);
				return count <= 0;
	}
	
	
}
