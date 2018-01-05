package com.govshop.bean;

/**
 * GovRoleDeploy entity. @author MyEclipse Persistence Tools
 */

public class GovRoleDeploy implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer roleId;
	private Integer powerId;

	// Constructors

	/** default constructor */
	public GovRoleDeploy() {
	}

	/** full constructor */
	public GovRoleDeploy(Integer roleId, Integer powerId) {
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