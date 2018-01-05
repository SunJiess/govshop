package com.govshop.bean;

/**
 * PowerItemGov entity. @author MyEclipse Persistence Tools
 */

public class PowerItemGov implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String url;
	private Integer pid;
	private Integer lockStatus;
	private String pname;

	// Constructors

	/** default constructor */
	public PowerItemGov() {
	}

	/** full constructor */
	public PowerItemGov(String name, String url, Integer pid, Integer lockStatus, String pname) {
		this.name = name;
		this.url = url;
		this.pid = pid;
		this.lockStatus = lockStatus;
		this.pname = pname;
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

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Integer getLockStatus() {
		return this.lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

}