package com.llbt.cms.service;

import java.beans.Transient;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.llbt.cms.dao.GateMapper;
import com.llbt.cms.entity.Gate;
import com.llbt.cms.vo.Page;

@Transactional
@Service(value = "gateService")
public class GateServiceImpl implements GateService {

	@Autowired
	private GateMapper geteMapper;

	@Override
	public Gate getById(String id) {
		// TODO Auto-generated method stub
		return geteMapper.getById(id);
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return geteMapper.delete(id);
	}

	@Override
	public int delete(Gate entity) {
		// TODO Auto-generated method stub
		return geteMapper.delete(entity);
	}

	@Override
	public int update(Gate entity) {
		// TODO Auto-generated method stub
		return geteMapper.update(entity);
	}

	@Override
	@Transient
	public int insert(Gate entity) {
		// TODO Auto-generated method stub
		return geteMapper.insert(entity);
	}

	@Override
	public List<Gate> getAll() {
		// TODO Auto-generated method stub
		return geteMapper.getAll();
	}

	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return geteMapper.deleteByIds(ids);
	}

	@Override
	public String insertForReturnPk(Gate entity) {
		// TODO Auto-generated method stub
		return geteMapper.insertForReturnPk(entity);
	}

	@Override
	public List<Gate> queryPage(Page<Gate> page) {
		// TODO Auto-generated method stub
		return geteMapper.queryPage(page);
	}


}
