/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.llbt.cms.vo.Page;
import com.llbt.cms.common.SearchCondition;
import com.llbt.cms.entity.Role;

import com.llbt.cms.dao.OperateLogMapper;
import com.llbt.cms.entity.OperateLog;
import com.llbt.cms.service.OperateLogService;

/**
 * OperateLog service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "operateLogService")
public class OperateLogServiceImpl implements OperateLogService{
    /**
     * OperateLog Mapper
     */
	@Autowired
    private OperateLogMapper operateLogMapper;
    
    @Override
	public OperateLog getById(String id) {
		// TODO Auto-generated method stub
		return operateLogMapper.getById(id);
	}

	@Override
	public List<OperateLog> getAll() {
		// TODO Auto-generated method stub
		return operateLogMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return operateLogMapper.delete(id);
	}

	@Override
	public int delete(OperateLog entity) {
		// TODO Auto-generated method stub
		return operateLogMapper.delete(entity);
	}

	@Override
	public int update(OperateLog entity) {
		// TODO Auto-generated method stub
		return operateLogMapper.update(entity);
	}

	@Override
	public int insert(OperateLog entity) {
		// TODO Auto-generated method stub
		return operateLogMapper.insert(entity);
	}
	
	@Override
	public String insertForReturnPk(OperateLog entity) {
		// TODO Auto-generated method stub
		return operateLogMapper.insertForReturnPk(entity);
	}



	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return operateLogMapper.deleteByIds(ids);
	}
	
	@Override
	public List<OperateLog> queryPage(Page<OperateLog> page) {
		// TODO Auto-generated method stub
		int operateLogCount = operateLogMapper.getOperateLogCount();
		page.setTotalCount(operateLogCount);
		return operateLogMapper.queryPage(page);
	}

}
