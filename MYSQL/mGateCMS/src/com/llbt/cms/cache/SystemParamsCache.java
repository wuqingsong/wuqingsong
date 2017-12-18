package com.llbt.cms.cache;

import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.llbt.cms.dao.SystemParamMapper;
import com.llbt.cms.entity.SystemParam;

/**
 * 
 * @author JianNian Lin
 * @date 2017年4月25日
 * @description 系统参数缓存类
 * 
 */
@Service
public class SystemParamsCache extends BaseCache {

	@Autowired
	private SystemParamMapper systemParamMapper;

	private Map<String, SystemParam> paramsMap;

	@PostConstruct
	public void doRefresh() {
		paramsMap = systemParamMapper.getSysParamsMap();
		
		logger.info("======> refresh SystemParamsCache");
	}

	public String getParamValue(String key) {
		SystemParam systemParam = paramsMap.get(key);
		String value = "";
		if (systemParam != null) {
			String paramValue = systemParam.getParamValue();
			value = paramValue == null ? "" : paramValue;
		}
		return value;
	}

	public int getParamValueInt(String key) {
		String value = getParamValue(key);
		if ("".equals(value)) {
			value = "0";
		}
		return Integer.parseInt(value);
	}

	public double getParamValueDouble(String key) {
		String value = getParamValue(key);
		if ("".equals(value)) {
			value = "0.00";
		}
		return Double.parseDouble(value);
	}

}
