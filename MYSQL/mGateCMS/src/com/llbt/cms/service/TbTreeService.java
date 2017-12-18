/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.service;

import java.util.List;

import com.llbt.cms.entity.LoginRecord;
import com.llbt.cms.entity.TbTree;
import com.llbt.cms.entity.User;
import com.llbt.cms.common.MyBatisDao;

/**
 * GateUser service接口
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface TbTreeService extends MyBatisDao<TbTree, String> {

	TbTree getTreeNode(String cid);
	List<TbTree> queryTreeNode(String pid);
}
