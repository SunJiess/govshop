package com.govshop.bean;

import java.util.Date;

/**
 * BiddingInfo entity. @author MyEclipse Persistence Tools
 */

public class BiddingInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer govId;
	private Integer govAccountId;
	private String title;
	private Date beginTime;
	private Date endTime;
	private Date saveTime;
	private String content;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public BiddingInfo() {
	}

	/** full constructor */
	public BiddingInfo(Integer govId, Integer govAccountId, String title, Date beginTime, Date endTime, Date saveTime,
			String content, Integer lockStatus) {
		this.govId = govId;
		this.govAccountId = govAccountId;
		this.title = title;
		this.beginTime = beginTime;
		this.endTime = endTime;
		this.saveTime = saveTime;
		this.content = content;
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

	public Date getBeginTime() {
		return this.beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
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

	public Integer getLockStatus() {
		return this.lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}

}