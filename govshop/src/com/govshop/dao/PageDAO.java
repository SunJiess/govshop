package com.govshop.dao;

import java.util.List;
/**
 * 这是一个虚基类，定义分页处理必须实现的接口
 * @author lhzxx
 *
 */
public abstract class PageDAO {
	private int start;		//在数据库中的查询起始位置
	private int pagesize;  //每页所包含的记录数
	//以下两个虚函数在子类中必须实现
	//用于获取总记录数,obj为查询参数
	public abstract int GetRowCount(Object obj);
	//用于获取分页数据记录，obj为查询参数
	public abstract List<Object> GetPageList(Object obj);
	
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	} 

}
