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
 * AppVersion实体对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public class AppVersion extends BaseEntity {
	private static final long serialVersionUID = -6719938022909482637L;
	/** APP名称 */
	private String appName;
	/** APP版本号 */
	private String versionNo;
	/** APP下载地址 */
	private String downloadUrl;
	/** 版本描述 */
	private String appDesc;
	/** 更新标识:1不升级 2可选升级 3强制升级 */
	private String upgradeIdentifier;
	/** 更新类型:IOS Android */
	private String upgradeType;
	/** 更新信息APP回显给用户 */
	private String upgradeInfo;
	/** 版本发布时间 */
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date publishDate;
	/** 删除状态:0未删除 1已删除 */
	private int isDelete;

	/**
	 * @return the appName
	 */
	public String getAppName() {
		return this.appName;
	}

	/**
	 * @param appName
	 *            the appName to set
	 */
	public void setAppName(String appName) {
		this.appName = appName;
	}

	/**
	 * @return the versionNo
	 */
	public String getVersionNo() {
		return this.versionNo;
	}

	/**
	 * @param versionNo
	 *            the versionNo to set
	 */
	public void setVersionNo(String versionNo) {
		this.versionNo = versionNo;
	}

	/**
	 * @return the downloadUrl
	 */
	public String getDownloadUrl() {
		return this.downloadUrl;
	}

	/**
	 * @param downloadUrl
	 *            the downloadUrl to set
	 */
	public void setDownloadUrl(String downloadUrl) {
		this.downloadUrl = downloadUrl;
	}

	/**
	 * @return the appDesc
	 */
	public String getAppDesc() {
		return this.appDesc;
	}

	/**
	 * @param appDesc
	 *            the appDesc to set
	 */
	public void setAppDesc(String appDesc) {
		this.appDesc = appDesc;
	}

	/**
	 * @return the upgradeIdentifier
	 */
	public String getUpgradeIdentifier() {
		return this.upgradeIdentifier;
	}

	/**
	 * @param upgradeIdentifier
	 *            the upgradeIdentifier to set
	 */
	public void setUpgradeIdentifier(String upgradeIdentifier) {
		this.upgradeIdentifier = upgradeIdentifier;
	}

	/**
	 * @return the upgradeType
	 */
	public String getUpgradeType() {
		return this.upgradeType;
	}

	/**
	 * @param upgradeType
	 *            the upgradeType to set
	 */
	public void setUpgradeType(String upgradeType) {
		this.upgradeType = upgradeType;
	}

	/**
	 * @return the upgradeInfo
	 */
	public String getUpgradeInfo() {
		return this.upgradeInfo;
	}

	/**
	 * @param upgradeInfo
	 *            the upgradeInfo to set
	 */
	public void setUpgradeInfo(String upgradeInfo) {
		this.upgradeInfo = upgradeInfo;
	}

	/**
	 * @return the publishDate
	 */
	public Date getPublishDate() {
		return this.publishDate;
	}

	/**
	 * @param publishDate
	 *            the publishDate to set
	 */
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	/**
	 * @return the isDelete
	 */
	public Integer getIsDelete() {
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
