package com.govshop.bean;

/**
 * OrderFormFiles entity. @author MyEclipse Persistence Tools
 */

public class OrderFormFiles implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer orderFormId;
	private String saveFileName;
	private String oldFileName;
	private Integer fileSize;

	// Constructors

	/** default constructor */
	public OrderFormFiles() {
	}

	/** full constructor */
	public OrderFormFiles(Integer orderFormId, String saveFileName, String oldFileName, Integer fileSize) {
		this.orderFormId = orderFormId;
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

	public Integer getOrderFormId() {
		return this.orderFormId;
	}

	public void setOrderFormId(Integer orderFormId) {
		this.orderFormId = orderFormId;
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