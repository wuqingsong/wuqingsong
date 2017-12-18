/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.dao;

import java.util.List;
import java.util.Map;

import com.llbt.cms.entity.SystemDict;
import com.llbt.cms.vo.Page;
import com.llbt.cms.common.MyBatisDao;

/**
 * SystemDictDAO
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface SystemDictMapper extends MyBatisDao<SystemDict,String> {
	int getSystemDictCount(Page<SystemDict> page);
	List<Map<String, String>> getDictName(String dictName);
	int getKey(String dictKey);
}