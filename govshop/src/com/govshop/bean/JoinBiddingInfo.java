package com.govshop.bean;

import java.util.Date;

/**
 * JoinBiddingInfo entity. @author MyEclipse Persistence Tools
 */

public class JoinBiddingInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer businessId;
	private Integer biddingId;
	private Integer applyAccountId;
	private String applyContent;
	private Date applayTime;
	private Integer status;

	// Constructors

	/** default constructor */
	public JoinBiddingInfo() {
	}

	/** full constructor */
	public JoinBiddingInfo(Integer businessId, Integer biddingId, Integer applyAccountId, String applyContent,
			Date applayTime, Integer status) {
		this.businessId = businessId;
		this.biddingId = biddingId;
		this.applyAccountId = applyAccountId;
		this.applyContent = applyContent;
		this.applayTime = applayTime;
		this.status = status;
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

	public Integer getBiddingId() {
		return this.biddingId;
	}

	public void setBiddingId(Integer biddingId) {
		this.biddingId = biddingId;
	}

	public Integer getApplyAccountId() {
		return this.applyAccountId;
	}

	public void setApplyAccountId(Integer applyAccountId) {
		this.applyAccountId = applyAccountId;
	}

	public String getApplyContent() {
		return this.applyContent;
	}

	public void setApplyContent(String applyContent) {
		this.applyContent = applyContent;
	}

	public Date getApplayTime() {
		return this.applayTime;
	}

	public void setApplayTime(Date applayTime) {
		this.applayTime = applayTime;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}