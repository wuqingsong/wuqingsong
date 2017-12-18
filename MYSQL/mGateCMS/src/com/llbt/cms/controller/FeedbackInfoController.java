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
import com.llbt.cms.entity.FeedbackInfo;
import com.llbt.cms.service.FeedbackInfoService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;


/**
 * FeedbackInfoController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/feedback")
@SuppressWarnings("unused")
public class FeedbackInfoController extends BaseController{
    @Autowired
	private FeedbackInfoService feedbackInfoService;
	
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
	public ModelAndView feedbackInfoList(Page<FeedbackInfo> page,@RequestParam(required=false)String refSystem){
		modelAndView=new ModelAndView("/feedback/list");
		refSystem=refSystem==null?"1":refSystem;
		List<FeedbackInfo> feedbackInfoList = feedbackInfoService.queryPage(page,refSystem);
		page.setResult(feedbackInfoList);
		modelAndView.addObject("page", page);
		modelAndView.addObject("refSystem", refSystem);
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView feedbackInfoDetail(String id) {
		modelAndView = new ModelAndView("/feedback/detail");
		FeedbackInfo  feedbackInfo =  feedbackInfoService.getById(id);
		modelAndView.addObject("feedbackInfo", feedbackInfo);
		return modelAndView;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddFeedbackInfoPage(){
		return "/feedback/add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addFeedbackInfo(FeedbackInfo feedbackInfo) {
		feedbackInfo.setId(PrimaryKeyUtils.getUUID());
		feedbackInfo.setCreateBy(super.getLogonUserId(session));
		feedbackInfo.setCreateDate(new Date());
		try{
		 feedbackInfoService.insert(feedbackInfo);
		 responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addFeedbackInfo", e);
		}
		
		return responseData;
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateFeedbackInfo(FeedbackInfo feedbackInfo) {
		feedbackInfo.setCreateBy(super.getLogonUserId(session));
		feedbackInfo.setCreateDate(new Date());
		try{
			feedbackInfoService.update(feedbackInfo);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateFeedbackInfo", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteFeedbackInfos(@RequestParam(required=false)List<String> ids) {
		try {
			feedbackInfoService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteFeedbackInfos", e);
		}
		return responseData;
	}
	
	
}
