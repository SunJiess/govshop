package com.govshop.bean;

import java.util.Date;

/**
 * GovRoleInfo entity. @author MyEclipse Persistence Tools
 */

public class GovRoleInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer govId;
	private String roleName;
	private Integer pid;
	private String parentRoleName;
	private String savetext;
	private Date saveTime;
	private String remark;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public GovRoleInfo() {
	}

	/** full constructor */
	public GovRoleInfo(Integer govId, String roleName, Integer pid, String parentRoleName, String savetext,
			Date saveTime, String remark, Integer lockStatus) {
		this.govId = govId;
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

	public Integer getGovId() {
		return this.govId;
	}

	public void setGovId(Integer govId) {
		this.govId = govId;
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