/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.dao;

import com.llbt.cms.entity.SystemService;
import com.llbt.cms.common.MyBatisDao;

/**
 * SystemServiceDAO
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface SystemServiceMapper extends MyBatisDao<SystemService,String> {
	int getSystemServiceCount();
}