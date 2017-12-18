/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.dao;

import com.llbt.cms.entity.OperateLog;
import com.llbt.cms.common.MyBatisDao;

/**
 * OperateLogDAO
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface OperateLogMapper extends MyBatisDao<OperateLog,String> {
	int getOperateLogCount();
}