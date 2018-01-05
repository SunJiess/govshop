package com.govshop.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.govshop.bean.BusinessInfo;
@Service
@Transactional(readOnly=true)
public class BusinessServiceImpl implements BusinessService {

	@Override
	public List<BusinessInfo> findPartBusinessInfo() {
		// TODO Auto-generated method stub
		return null;
	}

}
