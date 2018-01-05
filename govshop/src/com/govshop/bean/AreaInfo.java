package com.govshop.bean;

/**
 * AreaInfo entity. @author MyEclipse Persistence Tools
 */

public class AreaInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private Integer pid;
	private String pname;
	private String saveText;
	private Integer lockStatus;
	private String remark;

	// Constructors

	/** default constructor */
	public AreaInfo() {
	}

	/** full constructor */
	public AreaInfo(String name, Integer pid, String pname, String saveText, Integer lockStatus, String remark) {
		this.name = name;
		this.pid = pid;
		this.pname = pname;
		this.saveText = saveText;
		this.lockStatus = lockStatus;
		this.remark = remark;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getSaveText() {
		return this.saveText;
	}

	public void setSaveText(String saveText) {
		this.saveText = saveText;
	}

	public Integer getLockStatus() {
		return this.lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}