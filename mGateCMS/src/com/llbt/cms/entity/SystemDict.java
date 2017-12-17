/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.entity;

import com.llbt.cms.common.BaseEntity;

/**
 * SystemDict实体对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public class SystemDict extends BaseEntity {
	private static final long serialVersionUID = -4038636505574119528L;
	/** 字典key */
	private String dictKey;
	/** 字典值 */
	private String dictValue;
	/** 字典名称,前端回显 */
	private String dictName;
	/** 字典排序 */
	private Integer dictSeq;
	/** 字典描述 */
	private String dictDesc;
	/** 删除状态:0未删除 1已删除 */
	private int isDelete;

	/**
	 * @return the dictKey
	 */
	public String getDictKey() {
		return this.dictKey;
	}

	/**
	 * @param dictKey
	 *            the dictKey to set
	 */
	public void setDictKey(String dictKey) {
		this.dictKey = dictKey;
	}

	/**
	 * @return the dictValue
	 */
	public String getDictValue() {
		return this.dictValue;
	}

	/**
	 * @param dictValue
	 *            the dictValue to set
	 */
	public void setDictValue(String dictValue) {
		this.dictValue = dictValue;
	}

	/**
	 * @return the dictName
	 */
	public String getDictName() {
		return this.dictName;
	}

	/**
	 * @param dictName
	 *            the dictName to set
	 */
	public void setDictName(String dictName) {
		this.dictName = dictName;
	}

	/**
	 * @return the dictSeq
	 */
	public Integer getDictSeq() {
		return this.dictSeq;
	}

	/**
	 * @param dictSeq
	 *            the dictSeq to set
	 */
	public void setDictSeq(Integer dictSeq) {
		this.dictSeq = dictSeq;
	}

	/**
	 * @return the dictDesc
	 */
	public String getDictDesc() {
		return this.dictDesc;
	}

	/**
	 * @param dictDesc
	 *            the dictDesc to set
	 */
	public void setDictDesc(String dictDesc) {
		this.dictDesc = dictDesc;
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
