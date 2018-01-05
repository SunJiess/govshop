package com.govshop.bean;

import java.util.Date;

/**
 * BusinessPicLib entity. @author MyEclipse Persistence Tools
 */

public class BusinessPicLib implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer businessId;
	private String picSaveName;
	private String picOldName;
	private Integer picSize;
	private Integer categoryId;
	private Date saveTime;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public BusinessPicLib() {
	}

	/** full constructor */
	public BusinessPicLib(Integer businessId, String picSaveName, String picOldName, Integer picSize,
			Integer categoryId, Date saveTime, Integer lockStatus) {
		this.businessId = businessId;
		this.picSaveName = picSaveName;
		this.picOldName = picOldName;
		this.picSize = picSize;
		this.categoryId = categoryId;
		this.saveTime = saveTime;
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

	public String getPicSaveName() {
		return this.picSaveName;
	}

	public void setPicSaveName(String picSaveName) {
		this.picSaveName = picSaveName;
	}

	public String getPicOldName() {
		return this.picOldName;
	}

	public void setPicOldName(String picOldName) {
		this.picOldName = picOldName;
	}

	public Integer getPicSize() {
		return this.picSize;
	}

	public void setPicSize(Integer picSize) {
		this.picSize = picSize;
	}

	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Date getSaveTime() {
		return this.saveTime;
	}

	public void setSaveTime(Date saveTime) {
		this.saveTime = saveTime;
	}

	public Integer getLockStatus() {
		return this.lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}

}