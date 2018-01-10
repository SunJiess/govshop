package com.govshop.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;

import com.govshop.bean.BusinessInfo;
import com.govshop.service.BusinessService;
import com.opensymphony.xwork2.ActionSupport;

public class FrontEndAction extends ActionSupport implements SessionAware{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Map<String, Object> session;
	private List<BusinessInfo> businessInfos;
	
	@Autowired
	private BusinessService businessService;
	
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public List<BusinessInfo> getBusinessInfos() {
		return businessInfos;
	}

	public void setBusinessInfos(List<BusinessInfo> businessInfos) {
		this.businessInfos = businessInfos;
	}

	//打开index.jsp时，初始化页面
	public String initMainPage(){
		businessInfos = businessService.findPartBusinessInfo();
		return SUCCESS;
	}
}
