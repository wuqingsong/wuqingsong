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

import com.llbt.cms.dao.CommandConstrastMapper;
import com.llbt.cms.entity.CommandConstrast;
import com.llbt.cms.service.CommandConstrastService;

/**
 * CommandConstrast service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "commandConstrastService")
public class CommandConstrastServiceImpl implements CommandConstrastService{
    /**
     * CommandConstrast Mapper
     */
	@Autowired
    private CommandConstrastMapper commandConstrastMapper;
    
    @Override
	public CommandConstrast getById(String id) {
		// TODO Auto-generated method stub
		return commandConstrastMapper.getById(id);
	}

	@Override
	public List<CommandConstrast> getAll() {
		// TODO Auto-generated method stub
		return commandConstrastMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return commandConstrastMapper.delete(id);
	}

	@Override
	public int delete(CommandConstrast entity) {
		// TODO Auto-generated method stub
		return commandConstrastMapper.delete(entity);
	}

	@Override
	public int update(CommandConstrast entity) {
		// TODO Auto-generated method stub
		return commandConstrastMapper.update(entity);
	}

	@Override
	public int insert(CommandConstrast entity) {
		// TODO Auto-generated method stub
		return commandConstrastMapper.insert(entity);
	}
	
	@Override
	public String insertForReturnPk(CommandConstrast entity) {
		// TODO Auto-generated method stub
		return commandConstrastMapper.insertForReturnPk(entity);
	}



	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return commandConstrastMapper.deleteByIds(ids);
	}
	
	@Override
	public List<CommandConstrast> queryPage(Page<CommandConstrast> page) {
		// TODO Auto-generated method stub
		int commandConstrastCount = commandConstrastMapper.getCommandConstrastCount(page);
		page.setTotalCount(commandConstrastCount);
		return commandConstrastMapper.queryPage(page);
	}

}
