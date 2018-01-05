package com.govshop.bean;

import java.util.Date;

/**
 * BusinessAccountInfo entity. @author MyEclipse Persistence Tools
 */

public class BusinessAccountInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer roleId;
	private Integer businessId;
	private String username;
	private String password;
	private String realname;
	private Integer loginTimes;
	private Date lotinTime;
	private String loginIp;
	private String questionTitle;
	private String questionAnswer;
	private Date regTime;
	private String remark;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public BusinessAccountInfo() {
	}

	/** full constructor */
	public BusinessAccountInfo(Integer roleId, Integer businessId, String username, String password, String realname,
			Integer loginTimes, Date lotinTime, String loginIp, String questionTitle, String questionAnswer,
			Date regTime, String remark, Integer lockStatus) {
		this.roleId = roleId;
		this.businessId = businessId;
		this.username = username;
		this.password = password;
		this.realname = realname;
		this.loginTimes = loginTimes;
		this.lotinTime = lotinTime;
		this.loginIp = loginIp;
		this.questionTitle = questionTitle;
		this.questionAnswer = questionAnswer;
		this.regTime = regTime;
		this.remark = remark;
		this.lockStatus = lockStatus;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public Integer getBusinessId() {
		return this.businessId;
	}

	public void setBusinessId(Integer businessId) {
		this.businessId = businessId;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public Integer getLoginTimes() {
		return this.loginTimes;
	}

	public void setLoginTimes(Integer loginTimes) {
		this.loginTimes = loginTimes;
	}

	public Date getLotinTime() {
		return this.lotinTime;
	}

	public void setLotinTime(Date lotinTime) {
		this.lotinTime = lotinTime;
	}

	public String getLoginIp() {
		return this.loginIp;
	}

	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}

	public String getQuestionTitle() {
		return this.questionTitle;
	}

	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}

	public String getQuestionAnswer() {
		return this.questionAnswer;
	}

	public void setQuestionAnswer(String questionAnswer) {
		this.questionAnswer = questionAnswer;
	}

	public Date getRegTime() {
		return this.regTime;
	}

	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getLockStatus() {
		return this.lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}

}