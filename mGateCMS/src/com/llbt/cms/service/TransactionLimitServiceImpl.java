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
import com.llbt.cms.dao.TransactionLimitMapper;
import com.llbt.cms.entity.TransactionLimit;
import com.llbt.cms.service.TransactionLimitService;

/**
 * TransactionLimit service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "transactionLimitService")
public class TransactionLimitServiceImpl implements TransactionLimitService{
    /**
     * TransactionLimit Mapper
     */
	@Autowired
    private TransactionLimitMapper transactionLimitMapper;
    
    @Override
	public TransactionLimit getById(String id) {
		// TODO Auto-generated method stub
		return transactionLimitMapper.getById(id);
	}

	@Override
	public List<TransactionLimit> getAll() {
		// TODO Auto-generated method stub
		return transactionLimitMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return transactionLimitMapper.delete(id);
	}

	@Override
	public int delete(TransactionLimit entity) {
		// TODO Auto-generated method stub
		return transactionLimitMapper.delete(entity);
	}

	@Override
	public int update(TransactionLimit entity) {
		// TODO Auto-generated method stub
		return transactionLimitMapper.update(entity);
	}

	@Override
	public int insert(TransactionLimit entity) {
		// TODO Auto-generated method stub
		return transactionLimitMapper.insert(entity);
	}
	
	@Override
	public String insertForReturnPk(TransactionLimit entity) {
		// TODO Auto-generated method stub
		return transactionLimitMapper.insertForReturnPk(entity);
	}



	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return transactionLimitMapper.deleteByIds(ids);
	}
	
	@Override
	public List<TransactionLimit> queryPage(Page<TransactionLimit> page) {
		// TODO Auto-generated method stub
		int transactionLimitCount = transactionLimitMapper.getTransactionLimitCount(page);
		page.setTotalCount(transactionLimitCount);
		return transactionLimitMapper.queryPage(page);
	}

	@Override
	public List<TransactionLimit> getLimitListByServiceId(String serviceId) {
		// TODO Auto-generated method stub
		return transactionLimitMapper.getLimitListByServiceId(serviceId);
	}

	@Override
	public int countBusinessCurrency(TransactionLimit transactionLimit) {
		// TODO Auto-generated method stub
		return transactionLimitMapper.countBusinessCurrency(transactionLimit);
	}

	@Override
	public int countGetLimitType(String id, String limitType) {
		// TODO Auto-generated method stub
		return transactionLimitMapper.countGetLimitType(id,limitType);
	}


}
