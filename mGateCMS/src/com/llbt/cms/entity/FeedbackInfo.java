/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.entity;

import com.llbt.cms.common.BaseEntity;

/**
 * FeedbackInfo实体对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public class FeedbackInfo extends BaseEntity {
	private static final long serialVersionUID = -7519129998207364737L;
	/** 上次回复关联ID */
	private String parentId;
	/** 反馈内容 */
	private String content;
	/** 回复状态:0未回复 1已回复 */
	private Integer replyState;
	/** 回复类型:0顾客回复 1操作员回复 */
	private String replyType;

	private String refSystem;
	private String replyContent;
	private String replyUserName;
	private String userName;
	/**
	 * @return the parentId
	 */
	public String getParentId() {
		return this.parentId;
	}

	/**
	 * @param parentId
	 *            the parentId to set
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return this.content;
	}

	/**
	 * @param content
	 *            the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * @return the replyState
	 */
	public Integer getReplyState() {
		return this.replyState;
	}

	/**
	 * @param replyState
	 *            the replyState to set
	 */
	public void setReplyState(Integer replyState) {
		this.replyState = replyState;
	}

	/**
	 * @return the replyType
	 */
	public String getReplyType() {
		return this.replyType;
	}

	/**
	 * @param replyType
	 *            the replyType to set
	 */
	public void setReplyType(String replyType) {
		this.replyType = replyType;
	}

	public String getRefSystem() {
		return refSystem;
	}

	public void setRefSystem(String refSystem) {
		this.refSystem = refSystem;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getReplyUserName() {
		return replyUserName;
	}

	public void setReplyUserName(String replyUserName) {
		this.replyUserName = replyUserName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	
	
}
