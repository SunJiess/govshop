package com.govshop.bean;

/**
 * OrderFormDetail entity. @author MyEclipse Persistence Tools
 */

public class OrderFormDetail implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer formId;
	private Integer productId;
	private Integer productCount;

	// Constructors

	/** default constructor */
	public OrderFormDetail() {
	}

	/** full constructor */
	public OrderFormDetail(Integer formId, Integer productId, Integer productCount) {
		this.formId = formId;
		this.productId = productId;
		this.productCount = productCount;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getFormId() {
		return this.formId;
	}

	public void setFormId(Integer formId) {
		this.formId = formId;
	}

	public Integer getProductId() {
		return this.productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Integer getProductCount() {
		return this.productCount;
	}

	public void setProductCount(Integer productCount) {
		this.productCount = productCount;
	}

}