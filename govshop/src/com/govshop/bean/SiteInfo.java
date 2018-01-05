package com.govshop.bean;

/**
 * SiteInfo entity. @author MyEclipse Persistence Tools
 */

public class SiteInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String siteName;
	private String copname;
	private String email;
	private String aboutUs;
	private String copyright;
	private String servicePhone;
	private String fax;
	private String address;
	private String postalCode;
	private String webUrl;
	private String remark;

	// Constructors

	/** default constructor */
	public SiteInfo() {
	}

	/** full constructor */
	public SiteInfo(String siteName, String copname, String email, String aboutUs, String copyright,
			String servicePhone, String fax, String address, String postalCode, String webUrl, String remark) {
		this.siteName = siteName;
		this.copname = copname;
		this.email = email;
		this.aboutUs = aboutUs;
		this.copyright = copyright;
		this.servicePhone = servicePhone;
		this.fax = fax;
		this.address = address;
		this.postalCode = postalCode;
		this.webUrl = webUrl;
		this.remark = remark;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSiteName() {
		return this.siteName;
	}

	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}

	public String getCopname() {
		return this.copname;
	}

	public void setCopname(String copname) {
		this.copname = copname;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAboutUs() {
		return this.aboutUs;
	}

	public void setAboutUs(String aboutUs) {
		this.aboutUs = aboutUs;
	}

	public String getCopyright() {
		return this.copyright;
	}

	public void setCopyright(String copyright) {
		this.copyright = copyright;
	}

	public String getServicePhone() {
		return this.servicePhone;
	}

	public void setServicePhone(String servicePhone) {
		this.servicePhone = servicePhone;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostalCode() {
		return this.postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getWebUrl() {
		return this.webUrl;
	}

	public void setWebUrl(String webUrl) {
		this.webUrl = webUrl;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}