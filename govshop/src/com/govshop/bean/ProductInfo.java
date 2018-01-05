package com.govshop.bean;

import java.util.Date;

/**
 * ProductInfo entity. @author MyEclipse Persistence Tools
 */

public class ProductInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer businessId;
	private String title;
	private Integer productCategoryId;
	private String productPic;
	private String introduce;
	private String tipDesc;
	private String searchKeywords;
	private double price;
	private Date saveTime;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public ProductInfo() {
	}

	/** full constructor */
	public ProductInfo(Integer businessId, String title, Integer productCategoryId, String productPic, String introduce,
			String tipDesc, String searchKeywords, double price, Date saveTime, Integer lockStatus) {
		this.businessId = businessId;
		this.title = title;
		this.productCategoryId = productCategoryId;
		this.productPic = productPic;
		this.introduce = introduce;
		this.tipDesc = tipDesc;
		this.searchKeywords = searchKeywords;
		this.price = price;
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

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getProductCategoryId() {
		return this.productCategoryId;
	}

	public void setProductCategoryId(Integer productCategoryId) {
		this.productCategoryId = productCategoryId;
	}

	public String getProductPic() {
		return this.productPic;
	}

	public void setProductPic(String productPic) {
		this.productPic = productPic;
	}

	public String getIntroduce() {
		return this.introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getTipDesc() {
		return this.tipDesc;
	}

	public void setTipDesc(String tipDesc) {
		this.tipDesc = tipDesc;
	}

	public String getSearchKeywords() {
		return this.searchKeywords;
	}

	public void setSearchKeywords(String searchKeywords) {
		this.searchKeywords = searchKeywords;
	}

	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
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