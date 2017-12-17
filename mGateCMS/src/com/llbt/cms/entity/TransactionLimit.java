/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.entity;

import com.llbt.cms.common.BaseEntity;

/**
 * TransactionLimit实体对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public class TransactionLimit extends BaseEntity {
	private static final long serialVersionUID = -2905330434545261529L;
	/** 业务交易ID */
	private String serviceId;
	/** 限额类型:0:单笔限额 1:日累计限额 */
	private String limitType;
	/** 交易限额 */
	private Double limitAmount;
	/** 删除状态:0未删除 1已删除 */
	private int isDelete;
	/** 币种 */
	private String currency;
	
	private String serviceName;

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	/**
	 * @return the serviceId
	 */
	public String getServiceId() {
		return this.serviceId;
	}

	/**
	 * @param serviceId
	 *            the serviceId to set
	 */
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}

	/**
	 * @return the limitType
	 */
	public String getLimitType() {
		return this.limitType;
	}

	/**
	 * @param limitType
	 *            the limitType to set
	 */
	public void setLimitType(String limitType) {
		this.limitType = limitType;
	}

	/**
	 * @return the limitAmount
	 */
	public Double getLimitAmount() {
		return this.limitAmount;
	}

	/**
	 * @param limitAmount
	 *            the limitAmount to set
	 */
	public void setLimitAmount(Double limitAmount) {
		this.limitAmount = limitAmount;
	}

	/**
	 * @return the isDelete
	 */
	public int getIsDelete() {
		return this.isDelete;
	}

	/**
	 * @param isDelete
	 *            the isDelete to set
	 */
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}

	/**
	 * @return the currency
	 */
	public String getCurrency() {
		return this.currency;
	}

	/**
	 * @param currency
	 *            the currency to set
	 */
	public void setCurrency(String currency) {
		this.currency = currency;
	}
}
