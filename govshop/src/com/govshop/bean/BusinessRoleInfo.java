package com.govshop.bean;

import java.util.Date;

/**
 * BusinessRoleInfo entity. @author MyEclipse Persistence Tools
 */

public class BusinessRoleInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer businessId;
	private String roleName;
	private Integer pid;
	private String parentRoleName;
	private String savetext;
	private Date saveTime;
	private String remark;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public BusinessRoleInfo() {
	}

	/** full constructor */
	public BusinessRoleInfo(Integer businessId, String roleName, Integer pid, String parentRoleName, String savetext,
			Date saveTime, String remark, Integer lockStatus) {
		this.businessId = businessId;
		this.roleName = roleName;
		this.pid = pid;
		this.parentRoleName = parentRoleName;
		this.savetext = savetext;
		this.saveTime = saveTime;
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

	public Integer getBusinessId() {
		return this.businessId;
	}

	public void setBusinessId(Integer businessId) {
		this.businessId = businessId;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getParentRoleName() {
		return this.parentRoleName;
	}

	public void setParentRoleName(String parentRoleName) {
		this.parentRoleName = parentRoleName;
	}

	public String getSavetext() {
		return this.savetext;
	}

	public void setSavetext(String savetext) {
		this.savetext = savetext;
	}

	public Date getSaveTime() {
		return this.saveTime;
	}

	public void setSaveTime(Date saveTime) {
		this.saveTime = saveTime;
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