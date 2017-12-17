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

import com.llbt.cms.dao.FeedbackInfoMapper;
import com.llbt.cms.entity.FeedbackInfo;
import com.llbt.cms.util.PrimaryKeyUtils;
import com.llbt.cms.vo.Page;

/**
 * FeedbackInfo service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "feedbackInfoService")
public class FeedbackInfoServiceImpl implements FeedbackInfoService {
	/**
	 * FeedbackInfo Mapper
	 */
	@Autowired
	private FeedbackInfoMapper feedbackInfoMapper;

	@Override
	public FeedbackInfo getById(String id) {
		// TODO Auto-generated method stub
		FeedbackInfo feedback = feedbackInfoMapper.getById(id);
		String userId = feedback.getCreateBy();
		String userName;
		if (feedback.getRefSystem().equals("1")) {
			userName = feedbackInfoMapper.getCustUsertName(userId);
		} else {
			userName = feedbackInfoMapper.getMercUserName(userId);
		}
		feedback.setUserName(userName);
		return feedback;
	}

	@Override
	public List<FeedbackInfo> getAll() {
		// TODO Auto-generated method stub
		return feedbackInfoMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return feedbackInfoMapper.delete(id);
	}

	@Override
	public int delete(FeedbackInfo entity) {
		// TODO Auto-generated method stub
		return feedbackInfoMapper.delete(entity);
	}

	@Override
	public int update(FeedbackInfo entity) {
		// TODO Auto-generated method stub
		String id = entity.getId();
		FeedbackInfo updEntity = new FeedbackInfo();
		updEntity.setId(id);
		updEntity.setReplyState(1);

		entity.setParentId(id);
		entity.setId(PrimaryKeyUtils.getUUID());
		entity.setReplyState(1);
		entity.setReplyType("1");
		feedbackInfoMapper.insert(entity);
		return feedbackInfoMapper.update(updEntity);
	}

	@Override
	public int insert(FeedbackInfo entity) {
		// TODO Auto-generated method stub
		return feedbackInfoMapper.insert(entity);
	}

	@Override
	public String insertForReturnPk(FeedbackInfo entity) {
		// TODO Auto-generated method stub
		return feedbackInfoMapper.insertForReturnPk(entity);
	}

	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return feedbackInfoMapper.deleteByIds(ids);
	}

	@Override
	public List<FeedbackInfo> queryPage(Page<FeedbackInfo> page) {
		// TODO Auto-generated method stub
		int feedbackInfoCount = feedbackInfoMapper.getFeedbackInfoCount();
		page.setTotalCount(feedbackInfoCount);
		return feedbackInfoMapper.queryPage(page);
	}

	@Override
	public List<FeedbackInfo> queryPage(Page<FeedbackInfo> page,
			String refSystem) {
		List<FeedbackInfo> list = null;
		if (refSystem.equals("1")) {
			page.setTotalCount(feedbackInfoMapper.countCustFeedBack());
			list = feedbackInfoMapper.queryCustFeedBackPage(page);
		} else {
			page.setTotalCount(feedbackInfoMapper.countMercFeedBack());
			list = feedbackInfoMapper.queryMercFeedBackPage(page);
		}

		return list;
	}

}
