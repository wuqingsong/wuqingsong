/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.llbt.cms.dao.UserMapper;
import com.llbt.cms.entity.LoginRecord;
import com.llbt.cms.entity.User;
import com.llbt.cms.vo.Page;

/**
 * GateUser service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "gateUserService")
public class UserServiceImpl implements UserService {
	/**
	 * GateUser DAO
	 */
	@Autowired
	private UserMapper gateUserDao;

	@Override
	public User getById(String id) {
		// TODO Auto-generated method stub
		return gateUserDao.getById(id);
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return gateUserDao.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return gateUserDao.delete(id);
	}

	@Override
	public int delete(User entity) {
		// TODO Auto-generated method stub
		return gateUserDao.delete(entity);
	}

	@Override
	public int update(User entity) {
		// TODO Auto-generated method stub
		return gateUserDao.update(entity);
	}

	@Override
	public int insert(User entity) {
		// TODO Auto-generated method stub
		return gateUserDao.insert(entity);
	}

	@Override
	public int deleteByIds(List<String> ids) {
		if (CollectionUtils.isNotEmpty(ids)) {
			for (String userId : ids) {
				gateUserDao.deleteUserRoles(userId);
			}
		}
		return gateUserDao.deleteByIds(ids);
	}

	@Override
	public String insertForReturnPk(User entity) {
		// TODO Auto-generated method stub
		return gateUserDao.insertForReturnPk(entity);
	}

	@Override
	public User getUserByUserName(User user) {
		return gateUserDao.getUserByUserName(user);
	}

	@Override
	public List<User> queryPage(Page<User> page) {
		int count = gateUserDao.getUserCount(page);
		page.setTotalCount(count);
		return gateUserDao.queryPage(page);
	}

	@Override
	public int initializationPassword(User user) {
		return gateUserDao.update(user);
	}

	@Override
	public void addUser(User user, List<String> list) {
		gateUserDao.insert(user);
		if (CollectionUtils.isNotEmpty(list)) {
			gateUserDao.insertUserRoles(user.getId(), list);
		}
	}

	@Override
	public void updateUser(User user, List<String> roleIds) {
		gateUserDao.update(user);
		String userId = user.getId();
		gateUserDao.deleteUserRoles(userId);
		if (CollectionUtils.isNotEmpty(roleIds)) {
			gateUserDao.insertUserRoles(userId, roleIds);
		}
	}

	@Override
	public int countUsername(String value) {
		return gateUserDao.countUsername(value);
	}

	@Override
	public int insertLoginRecord(LoginRecord loginRecord) {
		// TODO Auto-generated method stub
		return gateUserDao.insertLoginRecord(loginRecord);
	}

	@Override
	public int countLoginError(String userId) {
		// TODO Auto-generated method stub
		return gateUserDao.countLoginError(userId);
	}




}
