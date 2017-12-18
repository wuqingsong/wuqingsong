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

import com.llbt.cms.dao.QuestionAnswerMapper;
import com.llbt.cms.entity.QuestionAnswer;
import com.llbt.cms.service.QuestionAnswerService;

/**
 * QuestionAnswer service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "questionAnswerService")
public class QuestionAnswerServiceImpl implements QuestionAnswerService{
    /**
     * QuestionAnswer Mapper
     */
	@Autowired
    private QuestionAnswerMapper questionAnswerMapper;
    
    @Override
	public QuestionAnswer getById(String id) {
		// TODO Auto-generated method stub
		return questionAnswerMapper.getById(id);
	}

	@Override
	public List<QuestionAnswer> getAll() {
		// TODO Auto-generated method stub
		return questionAnswerMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return questionAnswerMapper.delete(id);
	}

	@Override
	public int delete(QuestionAnswer entity) {
		// TODO Auto-generated method stub
		return questionAnswerMapper.delete(entity);
	}

	@Override
	public int update(QuestionAnswer entity) {
		// TODO Auto-generated method stub
		return questionAnswerMapper.update(entity);
	}

	@Override
	public int insert(QuestionAnswer entity) {
		// TODO Auto-generated method stub
		return questionAnswerMapper.insert(entity);
	}
	
	@Override
	public String insertForReturnPk(QuestionAnswer entity) {
		// TODO Auto-generated method stub
		return questionAnswerMapper.insertForReturnPk(entity);
	}



	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return questionAnswerMapper.deleteByIds(ids);
	}
	
	@Override
	public List<QuestionAnswer> queryPage(Page<QuestionAnswer> page) {
		// TODO Auto-generated method stub
		int questionAnswerCount = questionAnswerMapper.getQuestionAnswerCount();
		page.setTotalCount(questionAnswerCount);
		return questionAnswerMapper.queryPage(page);
	}

}
