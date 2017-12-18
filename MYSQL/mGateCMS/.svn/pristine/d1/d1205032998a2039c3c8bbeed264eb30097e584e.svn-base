/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.llbt.cms.dao.SystemDictMapper;
import com.llbt.cms.entity.SystemDict;
import com.llbt.cms.vo.Page;

/**
 * SystemDict service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "systemDictService")
public class SystemDictServiceImpl implements SystemDictService{
    /**
     * SystemDict Mapper
     */
	@Autowired
    private SystemDictMapper systemDictMapper;
    
    @Override
	public SystemDict getById(String id) {
		// TODO Auto-generated method stub
		return systemDictMapper.getById(id);
	}

	@Override
	public List<SystemDict> getAll() {
		// TODO Auto-generated method stub
		return systemDictMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return systemDictMapper.delete(id);
	}

	@Override
	public int delete(SystemDict entity) {
		// TODO Auto-generated method stub
		return systemDictMapper.delete(entity);
	}

	@Override
	public int update(SystemDict entity) {
		// TODO Auto-generated method stub
		return systemDictMapper.update(entity);
	}

	@Override
	public int insert(SystemDict entity) {
		// TODO Auto-generated method stub
		return systemDictMapper.insert(entity);
	}
	
	@Override
	public String insertForReturnPk(SystemDict entity) {
		// TODO Auto-generated method stub
		return systemDictMapper.insertForReturnPk(entity);
	}



	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return systemDictMapper.deleteByIds(ids);
	}
	
	@Override
	public List<SystemDict> queryPage(Page<SystemDict> page) {
		// TODO Auto-generated method stub
		int systemDictCount = systemDictMapper.getSystemDictCount(page);
		page.setTotalCount(systemDictCount);
		return systemDictMapper.queryPage(page);
	}

	@Override
	public List<Map<String, String>> getDictName(String dictName) {
		// TODO Auto-generated method stub
		return systemDictMapper.getDictName(dictName);
	}

	@Override
	public int getKey(String dictKey) {
		// TODO Auto-generated method stub
		return systemDictMapper.getKey(dictKey);
	}

}
