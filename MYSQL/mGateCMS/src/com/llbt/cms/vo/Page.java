package com.llbt.cms.vo;

import java.util.List;

import com.llbt.cms.enumm.ReserveDist;

public class Page<T> {
	private int cpage = 1;//当前页
	private int pageSize = ReserveDist.DEFAULT_PAGE_SIZE;//一页显示多少条数据
	private int totalCount;//总条数
	private int totalPage;//总页数
	private int startPage;
	private int endPage;

	private int startLine = 0;
	private int endLine = 0;
	private List<T> result;
	private T entity;

	public Page(int pageSize) {
		super();
		this.pageSize = pageSize;
	}

	public Page() {
		super();
	}

	public int getCpage() {
		return cpage;
	}

	public void setCpage(int cpage) {
		if (cpage < 1) {
			cpage = 1;
		}
		this.cpage = cpage;
		init();
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
		init();
	}

	public int getStartPage() {
		return startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	private void init() {
		int tpage = getTotalPage();

		if (cpage <= 5 || tpage <= 10) {
			startPage = 1;
		} else {
			startPage = cpage - 5;
		}

		if (tpage <= 10 || cpage + 4 >= tpage) {
			// 总页数小于10，那么最大显示页数就是总页数
			// 当前页+4大于等于总页数时候，最大显示页数就为最大页数
			endPage = tpage;
		} else if (cpage <= 5) {
			// 当前页小于等于5，那么最大显示页数就为10
			endPage = 10;
		} else {
			endPage = cpage + 4;
		}
		// 判断末尾几页，总页数大于10时，要保证显示的页数有10页
		if (endPage - startPage < 9 && tpage > 10) {
			startPage = endPage - 9;
		}
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		init();
	}

	public int getTotalPage() {
		if (this.totalCount % this.pageSize == 0) {
			totalPage = this.totalCount / this.pageSize;
		} else {
			totalPage = this.totalCount / this.pageSize + 1;
		}
		return totalPage;
	}

	public int getStartLine() {
		startLine = (cpage - 1) * pageSize;
		return startLine;
	}

	public void setStartLing(int startLing) {
		this.startLine = startLing;
	}

	public List<T> getResult() {
		return result;
	}

	public void setResult(List<T> result) {
		this.result = result;
	}

	public int getEndLine() {
		endLine = cpage * pageSize;
		return endLine;
	}

	public void setEndLine(int endLine) {
		this.endLine = endLine;
	}

	public T getEntity() {
		return entity;
	}

	public void setEntity(T entity) {
		this.entity = entity;
	}

}
