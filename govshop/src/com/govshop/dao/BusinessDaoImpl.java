package com.govshop.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import com.govshop.bean.BusinessInfo;

@Repository
public class BusinessDaoImpl extends AbstractDao<String, BusinessInfo> implements BusinessDao {


	@Override
	public List<BusinessInfo> findPartBusinessInfo() {
		// TODO Auto-generated method stub
		Criteria criteria = createEntityCriteria();
		//System.out.println(criteria.list().size());
		return (List<BusinessInfo>)criteria.list();
	}

}
