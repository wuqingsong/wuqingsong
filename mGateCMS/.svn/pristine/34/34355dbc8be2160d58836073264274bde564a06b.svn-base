/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.llbt.cms.bean.ResponseData;
import com.llbt.cms.cache.SystemDictCache;
import com.llbt.cms.common.BaseController;
import com.llbt.cms.entity.SystemDict;
import com.llbt.cms.service.SystemDictService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;


/**
 * SystemDictController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/systemDict")
@SuppressWarnings("unused")
public class SystemDictController extends BaseController{
    @Autowired
	private SystemDictService systemDictService;
    @Autowired 
    private SystemDictCache systemDictCache;
	
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
	public ModelAndView systemDictList(SystemDict systemDict,Page<SystemDict> page){
		modelAndView=new ModelAndView("/systemDict/list");
		page.setEntity(systemDict);
		List<SystemDict> systemDictList = systemDictService.queryPage(page);
		page.setResult(systemDictList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView systemDictDetail(String id) {
		modelAndView = new ModelAndView("/systemDict/detail");
		SystemDict  systemDict =  systemDictService.getById(id);
		modelAndView.addObject("systemDict", systemDict);
		return modelAndView;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddSystemDictPage(){
		return "/systemDict/add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addSystemDict(SystemDict systemDict) {
		int count = systemDictService.getKey(systemDict.getDictKey());
		System.out.println("count="+count);
		if(count>=0){
			systemDict.setDictSeq(count+1);
		}
		systemDict.setId(PrimaryKeyUtils.getUUID());
		systemDict.setCreateBy(super.getLogonUserId(session));
		systemDict.setCreateDate(new Date());
		try{
		 systemDictService.insert(systemDict);
		 systemDictCache.doRefresh();
		 responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addSystemDict", e);
		}
		
		return responseData;
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateSystemDict(SystemDict systemDict) {
		systemDict.setUpdateBy(super.getLogonUserId(session));
		systemDict.setUpdateDate(new Date());
		try{
			systemDictService.update(systemDict);
			systemDictCache.doRefresh();
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateSystemDict", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteSystemDicts(@RequestParam(required=false)List<String> ids) {
		try {
			systemDictService.deleteByIds(ids);
			systemDictCache.doRefresh();
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteSystemDicts", e);
		}
		return responseData;
	}
	
}
