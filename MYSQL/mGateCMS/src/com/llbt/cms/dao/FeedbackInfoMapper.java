/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.dao;

import java.util.List;

import com.llbt.cms.entity.FeedbackInfo;
import com.llbt.cms.vo.Page;
import com.llbt.cms.common.MyBatisDao;

/**
 * FeedbackInfoDAO
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface FeedbackInfoMapper extends MyBatisDao<FeedbackInfo,String> {
	int getFeedbackInfoCount();
	
	int countMercFeedBack();
	
	int countCustFeedBack();

	List<FeedbackInfo> queryCustFeedBackPage(Page<FeedbackInfo> page);

	List<FeedbackInfo> queryMercFeedBackPage(Page<FeedbackInfo> page);

	String getCustUsertName(String userId);

	String getMercUserName(String userId);
}