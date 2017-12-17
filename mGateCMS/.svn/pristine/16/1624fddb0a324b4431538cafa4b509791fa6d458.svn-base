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

import com.llbt.cms.dao.DepartmentMapper;
import com.llbt.cms.entity.Department;
import com.llbt.cms.vo.Page;

/**
 * Department service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "departmentService")
public class DepartmentServiceImpl implements DepartmentService {
	/**
	 * Department Mapper
	 */
	@Autowired
	private DepartmentMapper departmentMapper;

	@Override
	public Department getById(String id) {
		// TODO Auto-generated method stub
		return departmentMapper.getById(id);
	}

	@Override
	public List<Department> getAll() {
		// TODO Auto-generated method stub
		return departmentMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return departmentMapper.delete(id);
	}

	@Override
	public int delete(Department entity) {
		// TODO Auto-generated method stub
		return departmentMapper.delete(entity);
	}

	@Override
	public int update(Department entity) {
		// TODO Auto-generated method stub
		return departmentMapper.update(entity);
	}

	@Override
	public int insert(Department entity) {
		// TODO Auto-generated method stub
		return departmentMapper.insert(entity);
	}

	@Override
	public String insertForReturnPk(Department entity) {
		// TODO Auto-generated method stub
		return departmentMapper.insertForReturnPk(entity);
	}

	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return departmentMapper.deleteByIds(ids);
	}

	@Override
	public List<Department> queryPage(Page<Department> page) {
		// TODO Auto-generated method stub
		int departmentCount = departmentMapper.getDepartmentCount();
		page.setTotalCount(departmentCount);
		return departmentMapper.queryPage(page);
	}

	@Override
	public int countDeptName(String value) {
		// TODO Auto-generated method stub
		return departmentMapper.countDeptName(value);
	}

}
