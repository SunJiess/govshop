package com.govshop.bean;

import java.util.Date;

/**
 * GovernmentPic entity. @author MyEclipse Persistence Tools
 */

public class GovernmentPic implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer govId;
	private String picSaveName;
	private String picOldName;
	private Integer picSize;
	private Integer categoryId;
	private Date saveTime;

	// Constructors

	/** default constructor */
	public GovernmentPic() {
	}

	/** full constructor */
	public GovernmentPic(Integer govId, String picSaveName, String picOldName, Integer picSize, Integer categoryId,
			Date saveTime) {
		this.govId = govId;
		this.picSaveName = picSaveName;
		this.picOldName = picOldName;
		this.picSize = picSize;
		this.categoryId = categoryId;
		this.saveTime = saveTime;
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

}