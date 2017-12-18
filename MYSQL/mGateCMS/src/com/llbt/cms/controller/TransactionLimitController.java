/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.llbt.cms.cache.SystemParamsCache;
import com.llbt.cms.common.BaseController;
import com.llbt.cms.entity.SystemService;
import com.llbt.cms.entity.TransactionLimit;
import com.llbt.cms.enumm.ReserveDist;
import com.llbt.cms.service.SystemServiceService;
import com.llbt.cms.service.TransactionLimitService;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;

/**
 * TransactionLimitController对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
@Controller
@RequestMapping("/transactionLimit")
@SuppressWarnings("unused")
public class TransactionLimitController extends BaseController {
	@Autowired
	private TransactionLimitService transactionLimitService;

	@Autowired
	private SystemServiceService systemServiceService;

	@Autowired
	private SystemParamsCache systemParamsCache;
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

	@RequestMapping(value = "/list")
	public ModelAndView transactionLimitList(
			@RequestParam(required = false) String serviceId,TransactionLimit transactionLimit,Page<SystemService> page,Page<TransactionLimit> newpage) {
		modelAndView = new ModelAndView("/transactionLimit/list");
		List<SystemService> serviceList = systemServiceService
				.queryPage(page);
		modelAndView.addObject("serviceList", serviceList);
		newpage.setEntity(transactionLimit);
		List<TransactionLimit> limitListByService = transactionLimitService.queryPage(newpage);
		newpage.setResult(limitListByService);
		modelAndView.addObject("page", newpage);
			List<TransactionLimit> limitListByServiceId = transactionLimitService
					.getLimitListByServiceId(serviceId);
			modelAndView.addObject("limitList", limitListByServiceId);
			modelAndView.addObject("serviceId", serviceId);
		return modelAndView;
	}

	/*@RequestMapping(value = "/detail")
	public ModelAndView transactionLimitDetail(String id) {
		modelAndView = new ModelAndView("/transactionLimit/detail");
		TransactionLimit transactionLimit = transactionLimitService.getById(id);
		modelAndView.addObject("transactionLimit", transactionLimit);
		return modelAndView;
	}*/

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView toAddTransactionLimitPage(String serviceId) {
		modelAndView = new ModelAndView("/transactionLimit/add");
		SystemService business = systemServiceService.getById(serviceId);
		modelAndView.addObject("business", business);
		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData addTransactionLimit(TransactionLimit transactionLimit) {
		transactionLimit.setId(PrimaryKeyUtils.getUUID());
		transactionLimit.setCreateBy(super.getLogonUserId(session));
		transactionLimit.setCreateDate(new Date());
		try {
			// 判断货币是否已经存在
			int count = transactionLimitService
					.countBusinessCurrency(transactionLimit);
			String id = transactionLimit.getServiceId();
			String limitType = transactionLimit.getLimitType();
			int getLimitType = transactionLimitService.countGetLimitType(id,limitType);
			if(getLimitType>0){
				return ResponseData
						.createFailRes("This service limit already exists!");
			}
			/*if (count > 0) {
				return ResponseData
						.createFailRes("This currency limit already exits!");
			}*/
			transactionLimitService.insert(transactionLimit);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("addTransactionLimit", e);
		}
		return responseData;
	}

	@RequestMapping(value = "/update")
	@ResponseBody
	public ResponseData updateTransactionLimit(TransactionLimit transactionLimit) {
		transactionLimit.setUpdateBy(super.getLogonUserId(session));
		transactionLimit.setUpdateDate(new Date());
		try {
			transactionLimitService.update(transactionLimit);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createFailRes("Failed!");
			logger.error("updateTransactionLimit", e);
		}
		return responseData;
	}

	@RequestMapping(value = "/delete")
	@ResponseBody
	public ResponseData deleteTransactionLimits(String id) {
		try {
			TransactionLimit limit = transactionLimitService.getById(id);
			if (limit.getCurrency().equals(
					systemParamsCache.getParamValue("SYSTEM_DEFAULT_CURRENCY"))) {
				return ResponseData
						.createFailRes("Can not delete default currency limit!");
			}
			transactionLimitService.delete(id);
			responseData = ResponseData.createSuccessRes("Succeed!");
		} catch (Exception e) {
			responseData = ResponseData.createErrorRes();
			logger.error("deleteTransactionLimits", e);
		}
		return responseData;
	}

}
