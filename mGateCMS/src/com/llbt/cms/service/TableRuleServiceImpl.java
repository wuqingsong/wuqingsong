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

import com.llbt.cms.dao.TableRuleMapper;
import com.llbt.cms.entity.TableRule;
import com.llbt.cms.service.TableRuleService;

/**
 * TableRule service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "tableRuleService")
public class TableRuleServiceImpl implements TableRuleService{
    /**
     * TableRule Mapper
     */
	@Autowired
    private TableRuleMapper tableRuleMapper;
    
    @Override
	public TableRule getById(String id) {
		// TODO Auto-generated method stub
		return tableRuleMapper.getById(id);
	}

	@Override
	public List<TableRule> getAll() {
		// TODO Auto-generated method stub
		return tableRuleMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return tableRuleMapper.delete(id);
	}

	@Override
	public int delete(TableRule entity) {
		// TODO Auto-generated method stub
		return tableRuleMapper.delete(entity);
	}

	@Override
	public int update(TableRule entity) {
		// TODO Auto-generated method stub
		return tableRuleMapper.update(entity);
	}

	@Override
	public int insert(TableRule entity) {
		// TODO Auto-generated method stub
		return tableRuleMapper.insert(entity);
	}
	
	@Override
	public String insertForReturnPk(TableRule entity) {
		// TODO Auto-generated method stub
		return tableRuleMapper.insertForReturnPk(entity);
	}



	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return tableRuleMapper.deleteByIds(ids);
	}
	
	@Override
	public List<TableRule> queryPage(Page<TableRule> page) {
		// TODO Auto-generated method stub
		int tableRuleCount = tableRuleMapper.getTableRuleCount();
		page.setTotalCount(tableRuleCount);
		return tableRuleMapper.queryPage(page);
	}

}
