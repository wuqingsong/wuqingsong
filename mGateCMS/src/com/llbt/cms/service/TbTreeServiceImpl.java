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

import com.llbt.cms.dao.TbTreeMapper;
import com.llbt.cms.dao.UserMapper;
import com.llbt.cms.entity.LoginRecord;
import com.llbt.cms.entity.TbTree;
import com.llbt.cms.entity.User;
import com.llbt.cms.vo.Page;
import com.sun.org.apache.xpath.internal.operations.Gte;

/**
 * GateUser service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "gateTbTreeService")
public class TbTreeServiceImpl implements TbTreeService {
	/**
	 * GateUser DAO
	 */
	@Autowired
	private TbTreeMapper gateTbTreeDao;

	@Override
	public TbTree getById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TbTree> getAll() {
		// TODO Auto-generated method stub
		return gateTbTreeDao.getAll();
	}

	@Override
	public List<TbTree> queryPage(Page<TbTree> page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(TbTree entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(TbTree entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(TbTree entity) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String insertForReturnPk(TbTree entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TbTree getTreeNode(String cid) {
		// TODO Auto-generated method stub
		return  gateTbTreeDao.getTreeNode(cid);
	}

	@Override
	public List<TbTree> queryTreeNode(String pid) {
		// TODO Auto-generated method stub
		return gateTbTreeDao.queryTreeNode(pid);
	}

	
	



}
