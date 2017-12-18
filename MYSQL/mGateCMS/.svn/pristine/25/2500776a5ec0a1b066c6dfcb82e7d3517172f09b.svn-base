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
import com.llbt.cms.entity.Notice;
import com.llbt.cms.service.NoticeService;
import com.llbt.cms.vo.Page;


/**
 * NoticeController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/notice")
@SuppressWarnings("unused")
public class NoticeController extends BaseController{
    @Autowired
	private NoticeService noticeService;
	
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
	public ModelAndView noticeList(Page<Notice> page,@RequestParam(required=false)String noticeState){
		modelAndView=new ModelAndView("/notice/list");
		List<Notice> noticeList = noticeService.queryPage(page,noticeState);
		page.setResult(noticeList);
		modelAndView.addObject("page", page);
		modelAndView.addObject("noticeState",noticeState);
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView noticeDetail(String id) {
		modelAndView = new ModelAndView("/notice/detail");
		Notice  notice =  noticeService.getById(id);
		modelAndView.addObject("notice", notice);
		return modelAndView;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddNoticePage(){
		return "/notice/add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addNotice(Notice notice) {
		notice.setCreateBy(super.getLogonUserId(session));
		notice.setCreateDate(new Date());
		try{
		 noticeService.insert(notice);
		 responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addNotice", e);
		}
		
		return responseData;
	}
	
	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateNotice(Notice notice) {
		notice.setUpdateBy(super.getLogonUserId(session));
		notice.setUpdateDate(new Date());
		try{
			noticeService.update(notice);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateNotice", e);
		}
		return responseData;
	}
	
	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteNotices(@RequestParam(required=false)List<String> ids) {
		try {
			noticeService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteNotices", e);
		}
		return responseData;
	}
	
	
}
