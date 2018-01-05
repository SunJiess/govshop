package com.govshop.bean;

/**
 * JoinBiddingFiles entity. @author MyEclipse Persistence Tools
 */

public class JoinBiddingFiles implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer businessId;
	private Integer biddingId;
	private String saveFileName;
	private String oldFileName;
	private Integer fileSize;

	// Constructors

	/** default constructor */
	public JoinBiddingFiles() {
	}

	/** full constructor */
	public JoinBiddingFiles(Integer businessId, Integer biddingId, String saveFileName, String oldFileName,
			Integer fileSize) {
		this.businessId = businessId;
		this.biddingId = biddingId;
		this.saveFileName = saveFileName;
		this.oldFileName = oldFileName;
		this.fileSize = fileSize;
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

}