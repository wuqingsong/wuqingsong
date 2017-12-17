/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;

import java.util.List;

import com.llbt.cms.entity.LoginRecord;
import com.llbt.cms.entity.User;
import com.llbt.cms.common.MyBatisDao;

/**
 * GateUser service接口
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface UserService extends MyBatisDao<User, String> {

	User getUserByUserName(User user);

	int initializationPassword(User user);

	void addUser(User user, List<String> roleIds);

	void updateUser(User user, List<String> roleIds);
	int countUsername(String value);
	int insertLoginRecord(LoginRecord loginRecord);
	int countLoginError(String userId);
}
