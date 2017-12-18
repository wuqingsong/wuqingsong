package com.llbt.cms.cache;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.llbt.cms.dao.TbTreeMapper;
import com.llbt.cms.entity.TbTree;

/**
 * 
 * @author JianNian Lin
 * @date 2017年4月25日
 * @description 系统数据字典缓存类
 * 
 */
@Service
public class TbTrreCache extends BaseCache{

	@Autowired
	private TbTreeMapper tbTreeMapper;

	private static List<TbTree> treeNodeList = new ArrayList<TbTree>();
	@PostConstruct
	public void doRefresh() {
		treeNodeList = tbTreeMapper.getAll();
		System.out.println("treeNodeList="+treeNodeList);
	}

	/**
	 * 根据Pid递归树形结构
	 * @param parentId
	 * @return
	 */
	public static List<TbTree> getMenusTree(String parentId) {
		System.out.println("treeNodeList2="+treeNodeList);
		List<TbTree> treeMenus = new ArrayList<TbTree>();
		if (CollectionUtils.isNotEmpty(treeNodeList)) {
			for (TbTree menu : treeNodeList) {
				if (menu.getPid().equals(parentId)) {
					menu.setNodes(getMenusTree(menu.getCid()));
					treeMenus.add(menu);
				}
			}
		}
		return treeMenus;
	}
}
