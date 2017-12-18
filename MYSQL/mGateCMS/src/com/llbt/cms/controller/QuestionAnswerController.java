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
import com.llbt.cms.entity.QuestionAnswer;
import com.llbt.cms.service.QuestionAnswerService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;

/**
 * QuestionAnswerController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/questionAnswer")
@SuppressWarnings("unused")
public class QuestionAnswerController extends BaseController {
	@Autowired
	private QuestionAnswerService questionAnswerService;

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
	public ModelAndView questionAnswerList(Page<QuestionAnswer> page) {
		modelAndView = new ModelAndView("/questionAnswer/list");
		List<QuestionAnswer> questionAnswerList = questionAnswerService
				.queryPage(page);
		page.setResult(questionAnswerList);
		modelAndView.addObject("page", page);
		return modelAndView;
	}

	@RequestMapping(value = "/detail")
	public ModelAndView questionAnswerDetail(String id) {
		modelAndView = new ModelAndView("/questionAnswer/detail");
		QuestionAnswer questionAnswer = questionAnswerService.getById(id);
		modelAndView.addObject("questionAnswer", questionAnswer);
		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String toAddQuestionAnswerPage() {
		return "/questionAnswer/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addQuestionAnswer(QuestionAnswer questionAnswer) {
		questionAnswer.setId(PrimaryKeyUtils.getUUID());
		questionAnswer.setCreateBy(super.getLogonUserId(session));
		questionAnswer.setCreateDate(new Date());
		try {
			questionAnswerService.insert(questionAnswer);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addQuestionAnswer", e);
		}

		return responseData;
	}

	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateQuestionAnswer(QuestionAnswer questionAnswer) {
		questionAnswer.setUpdateBy(super.getLogonUserId(session));
		questionAnswer.setUpdateDate(new Date());
		try {
			questionAnswerService.update(questionAnswer);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateQuestionAnswer", e);
		}
		return responseData;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteQuestionAnswers(
			@RequestParam(required = false) List<String> ids) {
		try {
			questionAnswerService.deleteByIds(ids);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteQuestionAnswers", e);
		}
		return responseData;
	}

}
