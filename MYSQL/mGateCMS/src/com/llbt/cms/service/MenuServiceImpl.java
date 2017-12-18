/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.llbt.cms.dao.MenuMapper;
import com.llbt.cms.entity.Menu;
import com.llbt.cms.vo.Page;

/**
 * GateMenu service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "gateMenuService")
public class MenuServiceImpl implements MenuService {
	/**
	 * GateMenu DAO
	 */
	@Autowired
	private MenuMapper gateMenuDao;

	@Override
	public Menu getById(String id) {
		// TODO Auto-generated method stub
		return gateMenuDao.getById(id);
	}

	@Override
	public List<Menu> getAll() {
		// TODO Auto-generated method stub
		return gateMenuDao.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return gateMenuDao.delete(id);
	}

	@Override
	public int delete(Menu entity) {
		// TODO Auto-generated method stub
		return gateMenuDao.delete(entity);
	}

	@Override
	public int update(Menu entity) {
		// TODO Auto-generated method stub
		return gateMenuDao.update(entity);
	}

	@Override
	public int insert(Menu entity) {
		// TODO Auto-generated method stub
		return gateMenuDao.insert(entity);
	}

	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return gateMenuDao.deleteByIds(ids);
	}

	@Override
	public String insertForReturnPk(Menu entity) {
		// TODO Auto-generated method stub
		return gateMenuDao.insertForReturnPk(entity);
	}

	@Override
	public List<Menu> queryPage(Page<Menu> page) {
		// TODO Auto-generated method stub
		return gateMenuDao.queryPage(page);
	}
}
