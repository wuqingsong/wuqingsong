/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.dao;

import com.llbt.cms.entity.CodeConstrast;
import com.llbt.cms.entity.SystemDict;
import com.llbt.cms.vo.Page;
import com.llbt.cms.common.MyBatisDao;

/**
 * CodeConstrastDAO
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface CodeConstrastMapper extends MyBatisDao<CodeConstrast,String> {
	int getCodeConstrastCount(Page<CodeConstrast> page);
	int countConstrasteErrorCode(String value);
	int countConstrastCpsErrorCode(String value);
}