/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.dao;

import java.util.Map;

import org.apache.ibatis.annotations.MapKey;

import com.llbt.cms.entity.SystemParam;
import com.llbt.cms.common.MyBatisDao;

/**
 * SystemParamDAO
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface SystemParamMapper extends MyBatisDao<SystemParam,String> {
	int getSystemParamCount();

	@MapKey("paramKey")
	Map<String, SystemParam> getSysParamsMap();
}