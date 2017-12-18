package com.llbt.cms.dao;

import java.util.List;
import java.util.Map;

public interface DeviceBindMapper {
	List<Map<String, String>> getDevice(String phone);

	List<Map<String, String>> getAdmin(String phone);
	int updDeviceBind(Map<String,Object> map);
}
