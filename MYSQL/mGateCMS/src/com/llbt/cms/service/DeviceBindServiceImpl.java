/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.llbt.cms.dao.DeviceBindMapper;

/**
 * GateUser service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "gateDeviceBindService")
public class DeviceBindServiceImpl implements DeviceBindService {
	/**
	 * GateUser DAO
	 */
	@Autowired
	private DeviceBindMapper deviceBindMapper;


	@Override
	public List<Map<String,String>> getDevice(String phone) {
		// TODO Auto-generated method stub
		return deviceBindMapper.getDevice(phone);
	}


	@Override
	public List<Map<String, String>> getAdmin(String phone) {
		// TODO Auto-generated method stub
		return deviceBindMapper.getAdmin(phone);
	}


	@Override
	public int updDeviceBind(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return deviceBindMapper.updDeviceBind(map);
	}

}
