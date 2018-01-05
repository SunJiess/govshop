package com.govshop.bean;

import java.util.Date;

/**
 * FeedbackInfo entity. @author MyEclipse Persistence Tools
 */

public class FeedbackInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer comeFrom;
	private Integer copOrGovId;
	private String title;
	private String detailContent;
	private Date submitTime;
	private Integer processStatus;

	// Constructors

	/** default constructor */
	public FeedbackInfo() {
	}

	/** full constructor */
	public FeedbackInfo(Integer comeFrom, Integer copOrGovId, String title, String detailContent, Date submitTime,
			Integer processStatus) {
		this.comeFrom = comeFrom;
		this.copOrGovId = copOrGovId;
		this.title = title;
		this.detailContent = detailContent;
		this.submitTime = submitTime;
		this.processStatus = processStatus;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getComeFrom() {
		return this.comeFrom;
	}

	public void setComeFrom(Integer comeFrom) {
		this.comeFrom = comeFrom;
	}

	public Integer getCopOrGovId() {
		return this.copOrGovId;
	}

	public void setCopOrGovId(Integer copOrGovId) {
		this.copOrGovId = copOrGovId;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetailContent() {
		return this.detailContent;
	}

	public void setDetailContent(String detailContent) {
		this.detailContent = detailContent;
	}

	public Date getSubmitTime() {
		return this.submitTime;
	}

	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}

	public Integer getProcessStatus() {
		return this.processStatus;
	}

	public void setProcessStatus(Integer processStatus) {
		this.processStatus = processStatus;
	}

}