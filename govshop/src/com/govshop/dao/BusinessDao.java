package com.govshop.dao;

import java.util.List;

import com.govshop.bean.BusinessInfo;

public interface BusinessDao {
	
	List<BusinessInfo> findPartBusinessInfo();
}
