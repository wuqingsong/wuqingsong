/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.entity;

import com.llbt.cms.common.BaseEntity;

/**
 * SystemService实体对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public class SystemService extends BaseEntity {
	private static final long serialVersionUID = -4066536292774898414L;
	/** 业务交易码 */
	private String serviceCode;
	/** 业务名称 */
	private String serviceName;
	/** 业务描述 */
	private String serviceDesc;
	/** 业务类型,关联数据字典表 */
	private String dictId;
	/** 名单控制类型:0无名单 1黑名单 2白名单 */
	private String listType;
	/** 业务状态:0关闭 1开启 */
	private String serviceState;
	/** 删除状态:0未删除 1已删除 */
	private int isDelete;

	/**
	 * @return the serviceCode
	 */
	public String getServiceCode() {
		return this.serviceCode;
	}

	/**
	 * @param serviceCode
	 *            the serviceCode to set
	 */
	public void setServiceCode(String serviceCode) {
		this.serviceCode = serviceCode;
	}

	/**
	 * @return the serviceName
	 */
	public String getServiceName() {
		return this.serviceName;
	}

	/**
	 * @param serviceName
	 *            the serviceName to set
	 */
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	/**
	 * @return the serviceDesc
	 */
	public String getServiceDesc() {
		return this.serviceDesc;
	}

	/**
	 * @param serviceDesc
	 *            the serviceDesc to set
	 */
	public void setServiceDesc(String serviceDesc) {
		this.serviceDesc = serviceDesc;
	}

	/**
	 * @return the dictId
	 */
	public String getDictId() {
		return this.dictId;
	}

	/**
	 * @param dictId
	 *            the dictId to set
	 */
	public void setDictId(String dictId) {
		this.dictId = dictId;
	}

	/**
	 * @return the listType
	 */
	public String getListType() {
		return this.listType;
	}

	/**
	 * @param listType
	 *            the listType to set
	 */
	public void setListType(String listType) {
		this.listType = listType;
	}

	/**
	 * @return the serviceState
	 */
	public String getServiceState() {
		return this.serviceState;
	}

	/**
	 * @param serviceState
	 *            the serviceState to set
	 */
	public void setServiceState(String serviceState) {
		this.serviceState = serviceState;
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
}
