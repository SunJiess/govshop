package com.govshop.bean;

/**
 * BusinessRoleDeploy entity. @author MyEclipse Persistence Tools
 */

public class BusinessRoleDeploy implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer roleId;
	private Integer powerId;

	// Constructors

	/** default constructor */
	public BusinessRoleDeploy() {
	}

	/** full constructor */
	public BusinessRoleDeploy(Integer roleId, Integer powerId) {
		this.roleId = roleId;
		this.powerId = powerId;
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

	public Integer getPowerId() {
		return this.powerId;
	}

	public void setPowerId(Integer powerId) {
		this.powerId = powerId;
	}

}