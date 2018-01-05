package com.govshop.bean;

import java.util.Date;

/**
 * FeedbackFileInfo entity. @author MyEclipse Persistence Tools
 */

public class FeedbackFileInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer feedbackId;
	private String saveFileName;
	private String oldFileName;
	private Integer fileSize;
	private Date saveTime;

	// Constructors

	/** default constructor */
	public FeedbackFileInfo() {
	}

	/** full constructor */
	public FeedbackFileInfo(Integer feedbackId, String saveFileName, String oldFileName, Integer fileSize,
			Date saveTime) {
		this.feedbackId = feedbackId;
		this.saveFileName = saveFileName;
		this.oldFileName = oldFileName;
		this.fileSize = fileSize;
		this.saveTime = saveTime;
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

	public String getSaveFileName() {
		return this.saveFileName;
	}

	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	public String getOldFileName() {
		return this.oldFileName;
	}

	public void setOldFileName(String oldFileName) {
		this.oldFileName = oldFileName;
	}

	public Integer getFileSize() {
		return this.fileSize;
	}

	public void setFileSize(Integer fileSize) {
		this.fileSize = fileSize;
	}

	public Date getSaveTime() {
		return this.saveTime;
	}

	public void setSaveTime(Date saveTime) {
		this.saveTime = saveTime;
	}

}