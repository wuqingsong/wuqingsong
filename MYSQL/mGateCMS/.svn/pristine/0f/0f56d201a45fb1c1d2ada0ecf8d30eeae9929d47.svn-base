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

import com.llbt.cms.dao.SystemParamMapper;
import com.llbt.cms.entity.SystemParam;
import com.llbt.cms.vo.Page;

/**
 * SystemParam service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "systemParamService")
public class SystemParamServiceImpl implements SystemParamService{
    /**
     * SystemParam Mapper
     */
	@Autowired
    private SystemParamMapper systemParamMapper;
    
    @Override
	public SystemParam getById(String id) {
		// TODO Auto-generated method stub
		return systemParamMapper.getById(id);
	}

	@Override
	public List<SystemParam> getAll() {
		// TODO Auto-generated method stub
		return systemParamMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return systemParamMapper.delete(id);
	}

	@Override
	public int delete(SystemParam entity) {
		// TODO Auto-generated method stub
		return systemParamMapper.delete(entity);
	}

	@Override
	public int update(SystemParam entity) {
		// TODO Auto-generated method stub
		return systemParamMapper.update(entity);
	}

	@Override
	public int insert(SystemParam entity) {
		// TODO Auto-generated method stub
		return systemParamMapper.insert(entity);
	}
	
	@Override
	public String insertForReturnPk(SystemParam entity) {
		// TODO Auto-generated method stub
		return systemParamMapper.insertForReturnPk(entity);
	}



	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return systemParamMapper.deleteByIds(ids);
	}
	
	@Override
	public List<SystemParam> queryPage(Page<SystemParam> page) {
		// TODO Auto-generated method stub
		int systemParamCount = systemParamMapper.getSystemParamCount();
		page.setTotalCount(systemParamCount);
		return systemParamMapper.queryPage(page);
	}

}
