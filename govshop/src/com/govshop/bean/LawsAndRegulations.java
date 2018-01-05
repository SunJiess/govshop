package com.govshop.bean;

import java.util.Date;

/**
 * LawsAndRegulations entity. @author MyEclipse Persistence Tools
 */

public class LawsAndRegulations implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer accountId;
	private String title;
	private String content;
	private Date saveTime;
	private Integer readTimes;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public LawsAndRegulations() {
	}

	/** full constructor */
	public LawsAndRegulations(Integer accountId, String title, String content, Date saveTime, Integer readTimes,
			Integer lockStatus) {
		this.accountId = accountId;
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

	public Integer getAccountId() {
		return this.accountId;
	}

	public void setAccountId(Integer accountId) {
		this.accountId = accountId;
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