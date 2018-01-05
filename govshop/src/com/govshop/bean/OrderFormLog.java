package com.govshop.bean;

import java.util.Date;

/**
 * OrderFormLog entity. @author MyEclipse Persistence Tools
 */

public class OrderFormLog implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer orderFormId;
	private Date saveTime;
	private String content;
	private Integer infoFrom;
	private Integer accountId;

	// Constructors

	/** default constructor */
	public OrderFormLog() {
	}

	/** full constructor */
	public OrderFormLog(Integer orderFormId, Date saveTime, String content, Integer infoFrom, Integer accountId) {
		this.orderFormId = orderFormId;
		this.saveTime = saveTime;
		this.content = content;
		this.infoFrom = infoFrom;
		this.accountId = accountId;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getOrderFormId() {
		return this.orderFormId;
	}

	public void setOrderFormId(Integer orderFormId) {
		this.orderFormId = orderFormId;
	}

	public Date getSaveTime() {
		return this.saveTime;
	}

	public void setSaveTime(Date saveTime) {
		this.saveTime = saveTime;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getInfoFrom() {
		return this.infoFrom;
	}

	public void setInfoFrom(Integer infoFrom) {
		this.infoFrom = infoFrom;
	}

	public Integer getAccountId() {
		return this.accountId;
	}

	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
	}

}