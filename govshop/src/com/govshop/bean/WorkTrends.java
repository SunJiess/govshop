package com.govshop.bean;

import java.util.Date;

/**
 * WorkTrends entity. @author MyEclipse Persistence Tools
 */

public class WorkTrends implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer govId;
	private Integer govAccountId;
	private String title;
	private String content;
	private Date saveTime;
	private Integer readTimes;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public WorkTrends() {
	}

	/** full constructor */
	public WorkTrends(Integer govId, Integer govAccountId, String title, String content, Date saveTime,
			Integer readTimes, Integer lockStatus) {
		this.govId = govId;
		this.govAccountId = govAccountId;
		this.title = title;
		this.content = content;
		this.saveTime = saveTime;
		this.readTimes = readTimes;
		this.lockStatus = lockStatus;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getGovId() {
		return this.govId;
	}

	public void setGovId(Integer govId) {
		this.govId = govId;
	}

	public Integer getGovAccountId() {
		return this.govAccountId;
	}

	public void setGovAccountId(Integer govAccountId) {
		this.govAccountId = govAccountId;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getSaveTime() {
		return this.saveTime;
	}

	public void setSaveTime(Date saveTime) {
		this.saveTime = saveTime;
	}

	public Integer getReadTimes() {
		return this.readTimes;
	}

	public void setReadTimes(Integer readTimes) {
		this.readTimes = readTimes;
	}

	public Integer getLockStatus() {
		return this.lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}

}