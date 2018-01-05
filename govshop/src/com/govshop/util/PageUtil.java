package com.govshop.util;

import java.sql.SQLException;

import com.govshop.dao.PageDAO;



/**
 * 分页逻辑的实现类
 * @author lhzxx
 *
 */

public class PageUtil {	
	private Page page; 			//分页逻辑处理的对象是页面实体
	private int start; 		//start是点击“上一页”或“下一页”传递进来的页码	
	private PageDAO dao;		//进行查询操作的dao对象
	private Object objPara;		//dao对象进行查询操作时用到的参数对象
	
	public PageUtil(int start,Object obj,PageDAO dao) throws SQLException
	{		
		page = new Page();		// 初始化一个Page，即指定了pageSize=5，这个可以到Page类中自定义
		this.start = start;		//初始化查询启始页	
		this.dao=dao;
		this.objPara=obj;
		setRowCount(); 			// 设置page的属性rowCount值，即该次查询的总记录数
		setTotalPage(); 		// 设置总页数
		setCurrentPage(); 		// 设置当前页
		setPrePage(); 			// 设置上一页
		setNextPage(); 			// 设置下一页
		setPreOrNextBoolean(); 	// 设置是否有“上一页”或者是否有下一页的boolean型标识
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public void setPreOrNextBoolean() { // 设置是否有“上一页”或者是否有下一页的boolean型标识
		if (page.getCurrentPage() <= 1) { // 第一页时，没有上一页，则上一页链接失效
			page.setHasPreviousPage(false);
		} else {
			page.setHasPreviousPage(true);
		}
		if (page.getCurrentPage()==0 || page.getCurrentPage() >= page.getTotalPage()) { // 最后一页时，没有下一页，则下一页链接失效
			page.setHasNextPage(false);
		} else {
			page.setHasNextPage(true);
		}
	}

	public void setCurrentPage() { // 设置当前页
		if (start < 1) {
			page.setCurrentPage(1);
		}
		if (start > page.getTotalPage()) {
			page.setCurrentPage(page.getTotalPage());
		}
		page.setCurrentPage(start);
	}

	public void setPrePage() { // 设置上一页
		page.setPrePage(page.getCurrentPage() - 1);
	}

	public void setNextPage() {
		page.setNextPage(page.getCurrentPage() + 1);
	}

	public void setTotalPage()
	{ // 设置总页数
		int rowCount = page.getRowCount();
		int pageSize = page.getPageSize();
		if (rowCount > pageSize) {
			if (rowCount % pageSize == 0) {
				page.setTotalPage(rowCount / pageSize);
			} else {
				page.setTotalPage(1 + (rowCount / pageSize));
			}
		} else {
			page.setTotalPage(1);
		}
	}
	
	// 设置page的属性rowCount值，即该次查询的总记录数	
	public void setRowCount() throws SQLException
	{ 
		int n=dao.GetRowCount(objPara);
		page.setRowCount(n);
	} 
	//把页面数start转换成数据库中的记录起始位置
	public int getStartIndex()
	{
		int startIndex = 0;
		if (start < 0) {
			startIndex = 0;
		} else {
			if (start > page.getTotalPage()) {
				startIndex = page.getPageSize() * (page.getTotalPage() - 1);
			} else {
				startIndex = page.getPageSize() * (start - 1);
			}
		}
		return startIndex;
	}
	
	//调用本方法，获取查询结果	
	public Page getPage() throws SQLException
	{
		dao.setPagesize(page.getPageSize());
		dao.setStart(getStartIndex());
		page.setList(dao.GetPageList(objPara));
		return page;
	}
	
	
}