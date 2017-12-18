/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;


import java.util.List;

import com.llbt.cms.entity.TransactionLimit;
import com.llbt.cms.vo.Page;
import com.llbt.cms.common.MyBatisDao;

/**
 * TransactionLimit service接口
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface TransactionLimitService extends MyBatisDao<TransactionLimit,String>{

	List<TransactionLimit> getLimitListByServiceId(String serviceId);
	int countGetLimitType(String id,String limitType);
	int countBusinessCurrency(TransactionLimit transactionLimit);

}
