/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.llbt.cms.common.BaseEntity;

/**
 * Notice实体对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public class Notice extends BaseEntity {
	private static final long serialVersionUID = 8889324887052801633L;
	/** 公告标题 */
	private String title;
	/** 公告文本内容 */
	private String contentText;
	/** 开始时间 */
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date startDate;
	/** 结束时间 */
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date endDate;
	/** 删除状态:0未删除 1已删除 */
	private int isDelete;
	/** 公告状态 */
	private String noticeState;

	/**
	 * @return the title
	 */
	public String getTitle() {
		return this.title;
	}

	/**
	 * @param title
	 *            the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the contentText
	 */
	public String getContentText() {
		return this.contentText;
	}

	/**
	 * @param contentText
	 *            the contentText to set
	 */
	public void setContentText(String contentText) {
		this.contentText = contentText;
	}

	/**
	 * @return the startDate
	 */
	public Date getStartDate() {
		return this.startDate;
	}

	/**
	 * @param startDate
	 *            the startDate to set
	 */
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	/**
	 * @return the endDate
	 */
	public Date getEndDate() {
		return this.endDate;
	}

	/**
	 * @param endDate
	 *            the endDate to set
	 */
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
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

	public String getNoticeState() {
		return noticeState;
	}

	public void setNoticeState(String noticeState) {
		this.noticeState = noticeState;
	}
}
