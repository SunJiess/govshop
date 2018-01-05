package com.govshop.bean;

import java.util.Date;

/**
 * BiddingFileInfo entity. @author MyEclipse Persistence Tools
 */

public class BiddingFileInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer biddingId;
	private String picSaveName;
	private String picOldName;
	private Integer picSize;
	private Integer categoryId;
	private Date saveTime;

	// Constructors

	/** default constructor */
	public BiddingFileInfo() {
	}

	/** full constructor */
	public BiddingFileInfo(Integer biddingId, String picSaveName, String picOldName, Integer picSize,
			Integer categoryId, Date saveTime) {
		this.biddingId = biddingId;
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

	public Integer getBiddingId() {
		return this.biddingId;
	}

	public void setBiddingId(Integer biddingId) {
		this.biddingId = biddingId;
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