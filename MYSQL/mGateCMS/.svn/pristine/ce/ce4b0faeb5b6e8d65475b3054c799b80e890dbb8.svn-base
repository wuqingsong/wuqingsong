/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;

import java.util.List;

import com.llbt.cms.common.MyBatisDao;
import com.llbt.cms.entity.Menu;
import com.llbt.cms.entity.Role;

/**
 * GateRole service接口
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface RoleService extends MyBatisDao<Role, String> {
	int addRole(Role role, List<String> menuIds);
	
	void deleteRoles(List<String> ids);


	List<Menu> getRoleMenus(String id);

	void updateRole(Role role, List<String> menuIds);
	
	int countRoleName(String value);
}
