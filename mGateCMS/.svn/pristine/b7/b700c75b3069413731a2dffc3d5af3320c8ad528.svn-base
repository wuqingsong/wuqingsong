/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.entity;

import java.util.List;

import com.llbt.cms.common.BaseEntity;

/**
 * GateMenu值对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public class Menu extends BaseEntity {
	/** 序列化ID */
	private static final long serialVersionUID = -1026181520448703835L;
	/** 上级菜单ID */
	private String parentId;
	/** 菜单名称 */
	private String menuName;
	/** 菜单映射地址 */
	private String menuUrl;
	/** 菜单描述 */
	private String menuDesc;
	/** 菜单类型 */
	private String menuType;
	/** 菜单代码,方便树查询 */
	private String menuCode;
	/** 删除状态:0未删除 1已删除 */
	private int isDelete;

	private int distribution;

	private List<Menu> childMenus;

	public List<Menu> getChildMenus() {
		return childMenus;
	}

	public void setChildMenus(List<Menu> childMenus) {
		this.childMenus = childMenus;
	}

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
	 * @return the menuName
	 */
	public String getMenuName() {
		return this.menuName;
	}

	/**
	 * @param menuName
	 *            the menuName to set
	 */
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	/**
	 * @return the menuUrl
	 */
	public String getMenuUrl() {
		return this.menuUrl;
	}

	/**
	 * @param menuUrl
	 *            the menuUrl to set
	 */
	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	/**
	 * @return the menuDesc
	 */
	public String getMenuDesc() {
		return this.menuDesc;
	}

	/**
	 * @param menuDesc
	 *            the menuDesc to set
	 */
	public void setMenuDesc(String menuDesc) {
		this.menuDesc = menuDesc;
	}

	/**
	 * @return the menuType
	 */
	public String getMenuType() {
		return this.menuType;
	}

	/**
	 * @param menuType
	 *            the menuType to set
	 */
	public void setMenuType(String menuType) {
		this.menuType = menuType;
	}

	/**
	 * @return the menuCode
	 */
	public String getMenuCode() {
		return this.menuCode;
	}

	/**
	 * @param menuCode
	 *            the menuCode to set
	 */
	public void setMenuCode(String menuCode) {
		this.menuCode = menuCode;
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

	public int getDistribution() {
		return distribution;
	}

	public void setDistribution(int distribution) {
		this.distribution = distribution;
	}
}
