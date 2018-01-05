package com.govshop.dao;

import java.io.Serializable;

import java.lang.reflect.ParameterizedType;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

//定义所有dao类的基类，这是个抽象类。PK代表主键的类型，T代表要被处理的类，这里采用了模板技术。
public abstract class AbstractDao<PK extends Serializable, T> {
	
	/*
	 * 定义一个T类型的类对象，在子类中类型T会被定义为一个具体的类
	 * 实际上java的每个类被编译成.class文件的时候，java虚拟机（叫jvm）会自动为这个类生成一个类对象，
	 * 这个对象保存了这个类的所有信息（成员变量，方法，构造器等），以后这个类要想实例化（也就是创建类的实例或创建类的对象）,
	 * 那么都要以这个class对象为蓝图（或模版）来创建这个类的实例。
	 */
	private final Class<T> persistentClass;
	
	/*
	 * 在抽象类中可以有构造方法，只是不能直接创建抽象类的实例对象，但实例化子类的时候，就会初始化父类，
	 * 不管父类是不是抽象类都会调用父类的构造方法，初始化一个类，先初始化父类。
	 * 抽象类的非抽象子类实例化后，实际上也是抽象类的实例，所以抽象类里面的this实际代表的也是抽象类自己，当然也是实例它的子类对象。
	 */
	@SuppressWarnings("unchecked")
	public AbstractDao(){
		this.persistentClass =(Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass()).getActualTypeArguments()[1];
	}
	//自动装配sessionFactory
	@Autowired
	private SessionFactory sessionFactory;
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
