package com.govshop.bean;

/**
 * FriendLink entity. @author MyEclipse Persistence Tools
 */

public class FriendLink implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer accountId;
	private String url;
	private String siteName;
	private String logo;
	private String remark;

	// Constructors

	/** default constructor */
	public FriendLink() {
	}

	/** full constructor */
	public FriendLink(Integer accountId, String url, String siteName, String logo, String remark) {
		this.accountId = accountId;
		this.url = url;
		this.siteName = siteName;
		this.logo = logo;
		this.remark = remark;
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

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getSiteName() {
		return this.siteName;
	}

	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}