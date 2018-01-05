package com.govshop.bean;

import java.util.Date;

/**
 * WorkTrendsFiles entity. @author MyEclipse Persistence Tools
 */

public class WorkTrendsFiles implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer workTrendsId;
	private String picSaveName;
	private String picOldName;
	private Integer picSize;
	private Integer categoryId;
	private Date saveTime;

	// Constructors

	/** default constructor */
	public WorkTrendsFiles() {
	}

	/** full constructor */
	public WorkTrendsFiles(Integer workTrendsId, String picSaveName, String picOldName, Integer picSize,
			Integer categoryId, Date saveTime) {
		this.workTrendsId = workTrendsId;
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

	public Integer getWorkTrendsId() {
		return this.workTrendsId;
	}

	public void setWorkTrendsId(Integer workTrendsId) {
		this.workTrendsId = workTrendsId;
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