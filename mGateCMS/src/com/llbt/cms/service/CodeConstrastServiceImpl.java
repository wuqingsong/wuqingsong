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
import com.llbt.cms.dao.CodeConstrastMapper;
import com.llbt.cms.entity.CodeConstrast;
import com.llbt.cms.service.CodeConstrastService;

/**
 * CodeConstrast service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "codeConstrastService")
public class CodeConstrastServiceImpl implements CodeConstrastService{
    /**
     * CodeConstrast Mapper
     */
	@Autowired
    private CodeConstrastMapper codeConstrastMapper;
    
    @Override
	public CodeConstrast getById(String id) {
		// TODO Auto-generated method stub
		return codeConstrastMapper.getById(id);
	}

	@Override
	public List<CodeConstrast> getAll() {
		// TODO Auto-generated method stub
		return codeConstrastMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return codeConstrastMapper.delete(id);
	}

	@Override
	public int delete(CodeConstrast entity) {
		// TODO Auto-generated method stub
		return codeConstrastMapper.delete(entity);
	}

	@Override
	public int update(CodeConstrast entity) {
		// TODO Auto-generated method stub
		return codeConstrastMapper.update(entity);
	}

	@Override
	public int insert(CodeConstrast entity) {
		// TODO Auto-generated method stub
		return codeConstrastMapper.insert(entity);
	}
	
	@Override
	public String insertForReturnPk(CodeConstrast entity) {
		// TODO Auto-generated method stub
		return codeConstrastMapper.insertForReturnPk(entity);
	}



	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return codeConstrastMapper.deleteByIds(ids);
	}
	
	@Override
	public List<CodeConstrast> queryPage(Page<CodeConstrast> page) {
		// TODO Auto-generated method stub
		int codeConstrastCount = codeConstrastMapper.getCodeConstrastCount(page);
		page.setTotalCount(codeConstrastCount);
		return codeConstrastMapper.queryPage(page);
	}

	@Override
	public int countConstrasteErrorCode(String value) {
		// TODO Auto-generated method stub
		return codeConstrastMapper.countConstrasteErrorCode(value);
	}

	@Override
	public int countConstrastCpsErrorCode(String value) {
		// TODO Auto-generated method stub
		return codeConstrastMapper.countConstrastCpsErrorCode(value);
	}

}
