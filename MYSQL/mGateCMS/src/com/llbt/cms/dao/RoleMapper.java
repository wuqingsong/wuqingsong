/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.MapKey;

import com.llbt.cms.common.MyBatisDao;
import com.llbt.cms.entity.Role;
import com.llbt.cms.entity.RoleMenu;
import com.llbt.cms.vo.Page;

/**
 * GateRoleDAO
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface RoleMapper extends MyBatisDao<Role, String> {

	@MapKey("id")
	Map<String, Role> getRoleMap();

	List<RoleMenu> getRoleMenus();

	List<RoleMenu> getUserRoles();

	/**
	 * 获取总条数
	 * 
	 * @return
	 */
	int getRoleCount();

	List<Role> getRoleList(Page<Role> page);

	int countRoleName(String value);

	void deleteUserRoles(List<String> ids);
}