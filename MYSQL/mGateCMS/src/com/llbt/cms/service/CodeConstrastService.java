/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;


import com.llbt.cms.entity.CodeConstrast;
import com.llbt.cms.common.MyBatisDao;

/**
 * CodeConstrast service接口
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface CodeConstrastService extends MyBatisDao<CodeConstrast,String>{
	int countConstrasteErrorCode(String value);
	int countConstrastCpsErrorCode(String value);
}
