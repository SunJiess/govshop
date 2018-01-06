package com.govshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.govshop.bean.BusinessInfo;
import com.govshop.dao.BusinessDao;

@Service
@Transactional(readOnly=true)
public class BusinessServiceImpl implements BusinessService {

	@Autowired
	private BusinessDao businessDao;
	
	@Override
	public List<BusinessInfo> findPartBusinessInfo() {
		// TODO Auto-generated method stub
		return businessDao.findPartBusinessInfo();
	}

}
