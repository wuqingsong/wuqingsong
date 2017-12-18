/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;


import com.llbt.cms.entity.Department;
import com.llbt.cms.common.MyBatisDao;

/**
 * Department service接口
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface DepartmentService extends MyBatisDao<Department,String>{
	int countDeptName(String value);
}
