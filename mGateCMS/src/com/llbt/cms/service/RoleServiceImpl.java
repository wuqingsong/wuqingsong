/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.llbt.cms.cache.MenuCache;
import com.llbt.cms.dao.MenuMapper;
import com.llbt.cms.dao.RoleMapper;
import com.llbt.cms.entity.Menu;
import com.llbt.cms.entity.Role;
import com.llbt.cms.entity.RoleMenu;
import com.llbt.cms.vo.Page;

/**
 * GateRole service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "gateRoleService")
public class RoleServiceImpl implements RoleService {
	/**
	 * GateRole DAO
	 */
	@Autowired
	private RoleMapper gateRoleDao;

	@Autowired
	private MenuMapper menuMapper;

	@Override
	public Role getById(String id) {
		// TODO Auto-generated method stub
		return gateRoleDao.getById(id);
	}

	@Override
	public List<Role> getAll() {
		// TODO Auto-generated method stub
		return gateRoleDao.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return gateRoleDao.delete(id);
	}

	@Override
	public int delete(Role entity) {
		// TODO Auto-generated method stub
		return gateRoleDao.delete(entity);
	}

	@Override
	public int update(Role entity) {
		// TODO Auto-generated method stub
		return gateRoleDao.update(entity);
	}

	@Override
	public int insert(Role entity) {
		// TODO Auto-generated method stub
		return gateRoleDao.insert(entity);
	}

	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return gateRoleDao.deleteByIds(ids);
	}

	@Override
	public String insertForReturnPk(Role entity) {
		// TODO Auto-generated method stub
		return gateRoleDao.insertForReturnPk(entity);
	}

	/**
	 * 添加角色
	 */
	@Override
	public int addRole(Role role, List<String> menuIds) {
		// TODO Auto-generated method stub
		int count = gateRoleDao.insert(role);
		if (CollectionUtils.isNotEmpty(menuIds)) {
			menuMapper.addRoleMenus(role.getId(), menuIds);
		}
		return count;
	}

	@Override
	public List<Role> queryPage(Page<Role> page) {
		// TODO Auto-generated method stub
		int roleCount = gateRoleDao.getRoleCount();
		page.setTotalCount(roleCount);
		return gateRoleDao.queryPage(page);
	}

	@Override
	public void deleteRoles(List<String> ids) {
		gateRoleDao.deleteByIds(ids);
		gateRoleDao.deleteUserRoles(ids);
		menuMapper.deleteRoleMenus(ids);
	}

	@Override
	public List<Menu> getRoleMenus(String id) {
		// Role role = gateRoleDao.getById(id);
		List<Menu> menus = menuMapper.getAllRoleMenusDistri(id);
		// if (role.getParentId().equals("0")) {
		// menus = menuMapper.getAllRoleMenusDistri(id);
		// } else {
		// menus = menuMapper.getRoleMenusDistri(id);
		// }

		return MenuCache.getAuthTree("0", menus);
	}

	@Override
	public void updateRole(Role role, List<String> menuIds) {
		gateRoleDao.update(role);
		if (CollectionUtils.isNotEmpty(menuIds)) {
			List<String> ids = new ArrayList<>();
			ids.add(role.getId());
			menuMapper.deleteRoleMenus(ids);
			menuMapper.addRoleMenus(role.getId(), menuIds);
		}
	}

	@Override
	public int countRoleName(String value) {
		return gateRoleDao.countRoleName(value);
	}


}
