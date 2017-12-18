/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.entity;

import java.util.Date;

import com.llbt.cms.common.BaseEntity;
import com.llbt.cms.enumm.ReturnType;
import com.llbt.cms.util.PrimaryKeyUtils;

/**
 * LoginRecord实体对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public class LoginRecord extends BaseEntity {
	private static final long serialVersionUID = 7852541695360086361L;
	/** 操作员ID */
	
	private String userId;
	/** 登陆时间 */
	private Date loginDate;
	/** 登陆状态:1成功 0失败 */
	private String loginState;
	/** 登陆IP地址 */
	private String loginIp;
	/** 登陆信息:登陆状态为1则为成功信息,否则为登陆失败原因 */
	private String loginInfo;

	public LoginRecord(String userId, String loginIp,ReturnType returnType) {
		super();
		this.userId = userId;
		this.loginDate = new Date();
		this.loginIp = loginIp;
		if (returnType!=null&&returnType.getCode()!=10000) {
			this.loginState="0";
			this.loginInfo=returnType.getInfo();
		}else {
			this.loginState="1";
			this.loginInfo="Login success!";
		}
		this.id=PrimaryKeyUtils.getUUID();
		
	}

	/**
	 * @return the userId
	 */
	public String getUserId() {
		return this.userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * @return the loginDate
	 */
	public Date getLoginDate() {
		return this.loginDate;
	}

	/**
	 * @param loginDate
	 *            the loginDate to set
	 */
	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}

	/**
	 * @return the loginState
	 */
	public String getLoginState() {
		return this.loginState;
	}

	/**
	 * @param loginState
	 *            the loginState to set
	 */
	public void setLoginState(String loginState) {
		this.loginState = loginState;
	}

	/**
	 * @return the loginIp
	 */
	public String getLoginIp() {
		return this.loginIp;
	}

	/**
	 * @param loginIp
	 *            the loginIp to set
	 */
	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	/**
	 * @return the loginInfo
	 */
	public String getLoginInfo() {
		return this.loginInfo;
	}

	/**
	 * @param loginInfo
	 *            the loginInfo to set
	 */
	public void setLoginInfo(String loginInfo) {
		this.loginInfo = loginInfo;
	}
}
