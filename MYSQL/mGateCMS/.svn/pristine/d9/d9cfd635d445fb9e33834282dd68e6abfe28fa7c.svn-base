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

import com.llbt.cms.dao.NoticeMapper;
import com.llbt.cms.entity.Notice;
import com.llbt.cms.vo.Page;

/**
 * Notice service实现类
 * 
 * @author 修改成自己的名字
 * @version 1.0
 * 
 */
@Service(value = "noticeService")
public class NoticeServiceImpl implements NoticeService {
	/**
	 * Notice Mapper
	 */
	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public Notice getById(String id) {
		// TODO Auto-generated method stub
		return noticeMapper.getById(id);
	}

	@Override
	public List<Notice> getAll() {
		// TODO Auto-generated method stub
		return noticeMapper.getAll();
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return noticeMapper.delete(id);
	}

	@Override
	public int delete(Notice entity) {
		// TODO Auto-generated method stub
		return noticeMapper.delete(entity);
	}

	@Override
	public int update(Notice entity) {
		// TODO Auto-generated method stub
		return noticeMapper.update(entity);
	}

	@Override
	public int insert(Notice entity) {
		// TODO Auto-generated method stub
		return noticeMapper.insert(entity);
	}

	@Override
	public String insertForReturnPk(Notice entity) {
		// TODO Auto-generated method stub
		return noticeMapper.insertForReturnPk(entity);
	}

	@Override
	public int deleteByIds(List<String> ids) {
		// TODO Auto-generated method stub
		return noticeMapper.deleteByIds(ids);
	}

	@Override
	public List<Notice> queryPage(Page<Notice> page) {
		// TODO Auto-generated method stub
		int noticeCount = noticeMapper.getNoticeCount();
		page.setTotalCount(noticeCount);
		return noticeMapper.queryPage(page);
	}

	@Override
	public List<Notice> queryPage(Page<Notice> page, String noticeState) {
		int count = noticeMapper.countNotice(noticeState);
		page.setTotalCount(count);
		return noticeMapper.queryNoticePage(page, noticeState);
	}

}
