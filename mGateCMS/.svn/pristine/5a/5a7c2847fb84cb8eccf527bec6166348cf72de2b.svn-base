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

import com.llbt.cms.dao.AppVersionMapper;
import com.llbt.cms.entity.AppVersion;
import com.llbt.cms.service.AppVersionService;

/**
 * AppVersion service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "appVersionService")
public class AppVersionServiceImpl implements AppVersionService{
    /**
     * AppVersion Mapper
     */
	@Autowired
    private AppVersionMapper appVersionMapper;
    
    @Override
	public AppVersion getById(String id) {
		// TODO Auto-generated method stub
		return appVersionMapper.getById(id);
	}

	@Override
	public List<AppVersion> getAll() {
		// TODO Auto-generated method stub
		return appVersionMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return appVersionMapper.delete(id);
	}

	@Override
	public int delete(AppVersion entity) {
		// TODO Auto-generated method stub
		return appVersionMapper.delete(entity);
	}

	@Override
	public int update(AppVersion entity) {
		// TODO Auto-generated method stub
		return appVersionMapper.update(entity);
	}

	@Override
	public int insert(AppVersion entity) {
		// TODO Auto-generated method stub
		return appVersionMapper.insert(entity);
	}
	
	@Override
	public String insertForReturnPk(AppVersion entity) {
		// TODO Auto-generated method stub
		return appVersionMapper.insertForReturnPk(entity);
	}



	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return appVersionMapper.deleteByIds(ids);
	}
	
	@Override
	public List<AppVersion> queryPage(Page<AppVersion> page) {
		// TODO Auto-generated method stub
		int appVersionCount = appVersionMapper.getAppVersionCount();
		page.setTotalCount(appVersionCount);
		return appVersionMapper.queryPage(page);
	}

}
