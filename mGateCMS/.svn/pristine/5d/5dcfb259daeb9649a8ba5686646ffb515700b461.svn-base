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

import com.llbt.cms.cache.SystemParamsCache;
import com.llbt.cms.dao.SystemServiceMapper;
import com.llbt.cms.dao.TransactionLimitMapper;
import com.llbt.cms.entity.SystemService;
import com.llbt.cms.entity.TransactionLimit;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;

/**
 * SystemService service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "systemServiceService")
public class SystemServiceServiceImpl implements SystemServiceService {
	/**
	 * SystemService Mapper
	 */
	@Autowired
	private SystemServiceMapper systemServiceMapper;
	@Autowired
	private TransactionLimitMapper limitMapper;
	@Autowired
	private SystemParamsCache paramsCache;

	@Override
	public SystemService getById(String id) {
		// TODO Auto-generated method stub
		return systemServiceMapper.getById(id);
	}

	@Override
	public List<SystemService> getAll() {
		// TODO Auto-generated method stub
		return systemServiceMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return systemServiceMapper.delete(id);
	}

	@Override
	public int delete(SystemService entity) {
		// TODO Auto-generated method stub
		return systemServiceMapper.delete(entity);
	}

	@Override
	public int update(SystemService entity) {
		// TODO Auto-generated method stub
		return systemServiceMapper.update(entity);
	}

/*	@Override
	public int insert(SystemService entity) {
		// TODO Auto-generated method stub
		// 再插入限额
		TransactionLimit limit = new TransactionLimit();
		limit.setId(PrimaryKeyUtils.getUUID());
		limit.setServiceId(entity.getId());
		limit.setCreateBy(entity.getCreateBy());
		limit.setCreateDate(entity.getCreateDate());
		limit.setLimitAmount(0D);
		limit.setLimitType("0");
		limit.setCurrency(paramsCache.getParamValue("SYSTEM_DEFAULT_CURRENCY"));
		limitMapper.insert(limit);
		return systemServiceMapper.insert(entity);
	}*/
	@Override
	public int insert(SystemService entity) {
		return systemServiceMapper.insert(entity);
	}

	@Override
	public String insertForReturnPk(SystemService entity) {
		// TODO Auto-generated method stub
		return systemServiceMapper.insertForReturnPk(entity);
	}

	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return systemServiceMapper.deleteByIds(ids);
	}

	@Override
	public List<SystemService> queryPage(Page<SystemService> page) {
		// TODO Auto-generated method stub
		int systemServiceCount = systemServiceMapper.getSystemServiceCount();
		page.setTotalCount(systemServiceCount);
		return systemServiceMapper.queryPage(page);
	}

}
