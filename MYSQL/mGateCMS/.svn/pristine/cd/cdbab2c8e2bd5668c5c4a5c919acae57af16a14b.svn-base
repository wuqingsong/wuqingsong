package com.llbt.cms.cache;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.llbt.cms.dao.SystemDictMapper;
import com.llbt.cms.entity.SystemDict;

/**
 * 
 * @author JianNian Lin
 * @date 2017年4月25日
 * @description 系统数据字典缓存类
 * 
 */
@Service
public class SystemDictCache extends BaseCache{

	@Autowired
	private SystemDictMapper systemDictMapper;

	private static Map<String, List<SystemDict>> dictMap ;

	@PostConstruct
	public void doRefresh() {
		List<SystemDict> dictList = systemDictMapper.getAll();
		dictMap = new HashMap<String, List<SystemDict>>();
		for (SystemDict systemDict : dictList) {
			String key = systemDict.getDictKey();
			if (dictMap.containsKey(key)) {
				dictMap.get(key).add(systemDict);
			} else {
				List<SystemDict> dicts = new ArrayList<SystemDict>();
				dicts.add(systemDict);
				dictMap.put(key, dicts);
			}
		}
		logger.info("======> refresh SystemDictCache");
	}

	public static String getDictName(String key, String value) {
		List<SystemDict> dicts = dictMap.get(key);
		if (CollectionUtils.isNotEmpty(dicts)) {
			for (SystemDict systemDict : dicts) {
				if (systemDict.getDictValue().equals(value)) {
					return systemDict.getDictName();
				}
			}
		}
		return value;
	} 

	public static  List<SystemDict> getDictList(String key) {
		List<SystemDict> list = dictMap.get(key);
		return CollectionUtils.isEmpty(list) ? new ArrayList<SystemDict>()
				: list;
	}

}
