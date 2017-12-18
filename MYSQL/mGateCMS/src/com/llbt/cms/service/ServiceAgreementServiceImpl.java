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

import com.llbt.cms.dao.ServiceAgreementMapper;
import com.llbt.cms.entity.ServiceAgreement;
import com.llbt.cms.service.ServiceAgreementService;

/**
 * ServiceAgreement service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "serviceAgreementService")
public class ServiceAgreementServiceImpl implements ServiceAgreementService{
    /**
     * ServiceAgreement Mapper
     */
	@Autowired
    private ServiceAgreementMapper serviceAgreementMapper;
    
    @Override
	public ServiceAgreement getById(String id) {
		// TODO Auto-generated method stub
		return serviceAgreementMapper.getById(id);
	}

	@Override
	public List<ServiceAgreement> getAll() {
		// TODO Auto-generated method stub
		return serviceAgreementMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return serviceAgreementMapper.delete(id);
	}

	@Override
	public int delete(ServiceAgreement entity) {
		// TODO Auto-generated method stub
		return serviceAgreementMapper.delete(entity);
	}

	@Override
	public int update(ServiceAgreement entity) {
		// TODO Auto-generated method stub
		return serviceAgreementMapper.update(entity);
	}

	@Override
	public int insert(ServiceAgreement entity) {
		// TODO Auto-generated method stub
		return serviceAgreementMapper.insert(entity);
	}
	
	@Override
	public String insertForReturnPk(ServiceAgreement entity) {
		// TODO Auto-generated method stub
		return serviceAgreementMapper.insertForReturnPk(entity);
	}



	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return serviceAgreementMapper.deleteByIds(ids);
	}
	
	@Override
	public List<ServiceAgreement> queryPage(Page<ServiceAgreement> page) {
		// TODO Auto-generated method stub
		int serviceAgreementCount = serviceAgreementMapper.getServiceAgreementCount();
		page.setTotalCount(serviceAgreementCount);
		return serviceAgreementMapper.queryPage(page);
	}

}
