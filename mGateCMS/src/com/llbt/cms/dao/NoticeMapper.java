/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.llbt.cms.entity.Notice;
import com.llbt.cms.vo.Page;
import com.llbt.cms.common.MyBatisDao;

/**
 * NoticeDAO
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public interface NoticeMapper extends MyBatisDao<Notice,String> {
	int getNoticeCount();
	
	int countNotice(String noticeState);

	List<Notice> queryNoticePage(@Param("page")Page<Notice> page,@Param("noticeState") String noticeState);
}