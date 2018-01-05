package com.govshop.bean;

/**
 * BusinessPicLibCategory entity. @author MyEclipse Persistence Tools
 */

public class BusinessPicLibCategory implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer businessId;
	private String categoryName;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public BusinessPicLibCategory() {
	}

	/** full constructor */
	public BusinessPicLibCategory(Integer businessId, String categoryName, Integer lockStatus) {
		this.businessId = businessId;
		this.categoryName = categoryName;
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

	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Integer getLockStatus() {
		return this.lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}

}