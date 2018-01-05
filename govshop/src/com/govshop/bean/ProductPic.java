package com.govshop.bean;

import java.util.Date;

/**
 * ProductPic entity. @author MyEclipse Persistence Tools
 */

public class ProductPic implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer productId;
	private String picSaveName;
	private String picOldName;
	private Integer picSize;
	private Date saveTime;

	// Constructors

	/** default constructor */
	public ProductPic() {
	}

	/** full constructor */
	public ProductPic(Integer productId, String picSaveName, String picOldName, Integer picSize, Date saveTime) {
		this.productId = productId;
		this.picSaveName = picSaveName;
		this.picOldName = picOldName;
		this.picSize = picSize;
		this.saveTime = saveTime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getProductId() {
		return this.productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
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

	public Date getSaveTime() {
		return this.saveTime;
	}

	public void setSaveTime(Date saveTime) {
		this.saveTime = saveTime;
	}

}