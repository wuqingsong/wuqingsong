/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.llbt.cms.common.MyBatisDao;
import com.llbt.cms.entity.LoginRecord;
import com.llbt.cms.entity.User;
import com.llbt.cms.vo.Page;

/**
 * GateUserDAO
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface UserMapper extends MyBatisDao<User, String> {

	User getUserByUserName(User user);

	int getUserCount(Page<User> page);

	void insertUserRoles(@Param("userId") String userId,
			@Param("roleIds") List<String> roleIds);

	void deleteUserRoles(String userId);
	int countUsername(String value);
	int insertLoginRecord(LoginRecord loginRecord);
	int countLoginError(String userId);
	
}