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
import com.llbt.cms.entity.Menu;

/**
 * GateMenuDAO
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface MenuMapper extends MyBatisDao<Menu, String> {

	List<Menu> getMenuList();

	void addRoleMenus(@Param("roleId") String id,
			@Param("menuIds") List<String> menuIds);

	void deleteRoleMenus(List<String> ids);

	List<Menu> getRoleMenusDistri(String id);

	List<Menu> getAllRoleMenusDistri(String id);

}