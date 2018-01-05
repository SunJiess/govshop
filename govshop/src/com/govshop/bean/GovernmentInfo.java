package com.govshop.bean;

import java.util.Date;

/**
 * GovernmentInfo entity. @author MyEclipse Persistence Tools
 */

public class GovernmentInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String govName;
	private Integer areaId;
	private String address;
	private String postalCode;
	private String principle;
	private String contactPhone;
	private String fax;
	private String introduce;
	private Date regTime;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public GovernmentInfo() {
	}

	/** full constructor */
	public GovernmentInfo(String govName, Integer areaId, String address, String postalCode, String principle,
			String contactPhone, String fax, String introduce, Date regTime, Integer lockStatus) {
		this.govName = govName;
		this.areaId = areaId;
		this.address = address;
		this.postalCode = postalCode;
		this.principle = principle;
		this.contactPhone = contactPhone;
		this.fax = fax;
		this.introduce = introduce;
		this.regTime = regTime;
		this.lockStatus = lockStatus;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGovName() {
		return this.govName;
	}

	public void setGovName(String govName) {
		this.govName = govName;
	}

	public Integer getAreaId() {
		return this.areaId;
	}

	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostalCode() {
		return this.postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getPrinciple() {
		return this.principle;
	}

	public void setPrinciple(String principle) {
		this.principle = principle;
	}

	public String getContactPhone() {
		return this.contactPhone;
	}

	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getIntroduce() {
		return this.introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public Date getRegTime() {
		return this.regTime;
	}

	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}

	public Integer getLockStatus() {
		return this.lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}

}