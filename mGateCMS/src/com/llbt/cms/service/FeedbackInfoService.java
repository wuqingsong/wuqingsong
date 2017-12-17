/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;


import java.util.List;

import com.llbt.cms.entity.FeedbackInfo;
import com.llbt.cms.vo.Page;
import com.llbt.cms.common.MyBatisDao;

/**
 * FeedbackInfo service接口
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface FeedbackInfoService extends MyBatisDao<FeedbackInfo,String>{

	List<FeedbackInfo> queryPage(Page<FeedbackInfo> page, String refSystem);
}
