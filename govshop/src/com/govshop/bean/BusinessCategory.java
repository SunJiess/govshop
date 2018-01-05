package com.govshop.bean;

/**
 * BusinessCategory entity. @author MyEclipse Persistence Tools
 */

public class BusinessCategory implements java.io.Serializable {

	// Fields

	private Integer id;
	private String categoryName;
	private String remark;

	// Constructors

	/** default constructor */
	public BusinessCategory() {
	}

	/** full constructor */
	public BusinessCategory(String categoryName, String remark) {
		this.categoryName = categoryName;
		this.remark = remark;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCategoryName() {
		return this.categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}