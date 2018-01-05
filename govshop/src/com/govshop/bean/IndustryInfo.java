package com.govshop.bean;

/**
 * IndustryInfo entity. @author MyEclipse Persistence Tools
 */

public class IndustryInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String industryName;
	private String remark;

	// Constructors

	/** default constructor */
	public IndustryInfo() {
	}

	/** full constructor */
	public IndustryInfo(String industryName, String remark) {
		this.industryName = industryName;
		this.remark = remark;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getIndustryName() {
		return this.industryName;
	}

	public void setIndustryName(String industryName) {
		this.industryName = industryName;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}