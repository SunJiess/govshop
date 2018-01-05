package com.govshop.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/*
 * 带分页功能的抽象类，和AbstractDao相比，该类只是增加了分页功能
 */
public abstract class AbstractPageDao<PK extends Serializable, T> extends PageDAO {
	
	private final Class<T> persistentClass;  //定义T类型的类对象
		
	//自动装配sessionFactory
	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public AbstractPageDao(){
		this.persistentClass =(Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
	}
	//获取和当前线程绑定的session
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	//根据主键查询类型为T的对象
	public T getByKey(PK key) {
		return (T) getSession().get(persistentClass, key);
	}
	//保存类型为T的对象
	public void persist(T entity) {
		getSession().persist(entity);
	}
	//删除类型为T的对象
	public void delete(T entity) {
		getSession().delete(entity);
	}
	//更新类型为T的对象
	public void update(T entity) {
		getSession().update(entity);
	}
	public void saveOrUpdate(T entity){
		getSession().saveOrUpdate(entity);
	}
	//查询类对象persistentClass的所有实例，相当于查询所有记录
	protected Criteria createEntityCriteria(){
		return getSession().createCriteria(persistentClass);
	}	
}
