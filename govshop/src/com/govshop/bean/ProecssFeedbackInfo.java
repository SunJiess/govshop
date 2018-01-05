package com.govshop.bean;

import java.util.Date;

/**
 * ProecssFeedbackInfo entity. @author MyEclipse Persistence Tools
 */

public class ProecssFeedbackInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer feedbackId;
	private Integer processManagerId;
	private String processContent;
	private Date processTime;

	// Constructors

	/** default constructor */
	public ProecssFeedbackInfo() {
	}

	/** full constructor */
	public ProecssFeedbackInfo(Integer feedbackId, Integer processManagerId, String processContent, Date processTime) {
		this.feedbackId = feedbackId;
		this.processManagerId = processManagerId;
		this.processContent = processContent;
		this.processTime = processTime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getFeedbackId() {
		return this.feedbackId;
	}

	public void setFeedbackId(Integer feedbackId) {
		this.feedbackId = feedbackId;
	}

	public Integer getProcessManagerId() {
		return this.processManagerId;
	}

	public void setProcessManagerId(Integer processManagerId) {
		this.processManagerId = processManagerId;
	}

	public String getProcessContent() {
		return this.processContent;
	}

	public void setProcessContent(String processContent) {
		this.processContent = processContent;
	}

	public Date getProcessTime() {
		return this.processTime;
	}

	public void setProcessTime(Date processTime) {
		this.processTime = processTime;
	}

}