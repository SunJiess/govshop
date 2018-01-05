package com.govshop.bean;

import java.util.Date;

/**
 * BusinessInfo entity. @author MyEclipse Persistence Tools
 */

public class BusinessInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String copName;
	private String address;
	private String postalCode;
	private String legalPerson;
	private String legalPersonIdcard;
	private Integer areaId;
	private Integer industryId;
	private Integer businessTypeId;
	private String businessLicense;
	private String stateTaxes;
	private String governmentRent;
	private double registeredCapital;
	private Date registerTime;
	private Date registerSiteTime;
	private String bankOfDeposit;
	private String bankAccount;
	private String contactPerson;
	private String contactPhone;
	private String fax;
	private String email;
	private String briefIntroduction;
	private String mainBusiness;
	private String additionBusiness;
	private String recentPerformance;
	private String fileBusinessLicense;
	private String fileTaxEnrolCertificate;
	private String fileLegalPerson;
	private Integer lockStatus;

	// Constructors

	/** default constructor */
	public BusinessInfo() {
	}

	/** full constructor */
	public BusinessInfo(String copName, String address, String postalCode, String legalPerson, String legalPersonIdcard,
			Integer areaId, Integer industryId, Integer businessTypeId, String businessLicense, String stateTaxes,
			String governmentRent, double registeredCapital, Date registerTime, Date registerSiteTime,
			String bankOfDeposit, String bankAccount, String contactPerson, String contactPhone, String fax,
			String email, String briefIntroduction, String mainBusiness, String additionBusiness,
			String recentPerformance, String fileBusinessLicense, String fileTaxEnrolCertificate,
			String fileLegalPerson, Integer lockStatus) {
		this.copName = copName;
		this.address = address;
		this.postalCode = postalCode;
		this.legalPerson = legalPerson;
		this.legalPersonIdcard = legalPersonIdcard;
		this.areaId = areaId;
		this.industryId = industryId;
		this.businessTypeId = businessTypeId;
		this.businessLicense = businessLicense;
		this.stateTaxes = stateTaxes;
		this.governmentRent = governmentRent;
		this.registeredCapital = registeredCapital;
		this.registerTime = registerTime;
		this.registerSiteTime = registerSiteTime;
		this.bankOfDeposit = bankOfDeposit;
		this.bankAccount = bankAccount;
		this.contactPerson = contactPerson;
		this.contactPhone = contactPhone;
		this.fax = fax;
		this.email = email;
		this.briefIntroduction = briefIntroduction;
		this.mainBusiness = mainBusiness;
		this.additionBusiness = additionBusiness;
		this.recentPerformance = recentPerformance;
		this.fileBusinessLicense = fileBusinessLicense;
		this.fileTaxEnrolCertificate = fileTaxEnrolCertificate;
		this.fileLegalPerson = fileLegalPerson;
		this.lockStatus = lockStatus;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCopName() {
		return this.copName;
	}

	public void setCopName(String copName) {
		this.copName = copName;
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

	public String getLegalPerson() {
		return this.legalPerson;
	}

	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
	}

	public String getLegalPersonIdcard() {
		return this.legalPersonIdcard;
	}

	public void setLegalPersonIdcard(String legalPersonIdcard) {
		this.legalPersonIdcard = legalPersonIdcard;
	}

	public Integer getAreaId() {
		return this.areaId;
	}

	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}

	public Integer getIndustryId() {
		return this.industryId;
	}

	public void setIndustryId(Integer industryId) {
		this.industryId = industryId;
	}

	public Integer getBusinessTypeId() {
		return this.businessTypeId;
	}

	public void setBusinessTypeId(Integer businessTypeId) {
		this.businessTypeId = businessTypeId;
	}

	public String getBusinessLicense() {
		return this.businessLicense;
	}

	public void setBusinessLicense(String businessLicense) {
		this.businessLicense = businessLicense;
	}

	public String getStateTaxes() {
		return this.stateTaxes;
	}

	public void setStateTaxes(String stateTaxes) {
		this.stateTaxes = stateTaxes;
	}

	public String getGovernmentRent() {
		return this.governmentRent;
	}

	public void setGovernmentRent(String governmentRent) {
		this.governmentRent = governmentRent;
	}

	public double getRegisteredCapital() {
		return this.registeredCapital;
	}

	public void setRegisteredCapital(double registeredCapital) {
		this.registeredCapital = registeredCapital;
	}

	public Date getRegisterTime() {
		return this.registerTime;
	}

	public void setRegisterTime(Date registerTime) {
		this.registerTime = registerTime;
	}

	public Date getRegisterSiteTime() {
		return this.registerSiteTime;
	}

	public void setRegisterSiteTime(Date registerSiteTime) {
		this.registerSiteTime = registerSiteTime;
	}

	public String getBankOfDeposit() {
		return this.bankOfDeposit;
	}

	public void setBankOfDeposit(String bankOfDeposit) {
		this.bankOfDeposit = bankOfDeposit;
	}

	public String getBankAccount() {
		return this.bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getContactPerson() {
		return this.contactPerson;
	}

	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}

	public String getContactPhone() {
		return this.contactPhone;
	}

	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBriefIntroduction() {
		return this.briefIntroduction;
	}

	public void setBriefIntroduction(String briefIntroduction) {
		this.briefIntroduction = briefIntroduction;
	}

	public String getMainBusiness() {
		return this.mainBusiness;
	}

	public void setMainBusiness(String mainBusiness) {
		this.mainBusiness = mainBusiness;
	}

	public String getAdditionBusiness() {
		return this.additionBusiness;
	}

	public void setAdditionBusiness(String additionBusiness) {
		this.additionBusiness = additionBusiness;
	}

	public String getRecentPerformance() {
		return this.recentPerformance;
	}

	public void setRecentPerformance(String recentPerformance) {
		this.recentPerformance = recentPerformance;
	}

	public String getFileBusinessLicense() {
		return this.fileBusinessLicense;
	}

	public void setFileBusinessLicense(String fileBusinessLicense) {
		this.fileBusinessLicense = fileBusinessLicense;
	}

	public String getFileTaxEnrolCertificate() {
		return this.fileTaxEnrolCertificate;
	}

	public void setFileTaxEnrolCertificate(String fileTaxEnrolCertificate) {
		this.fileTaxEnrolCertificate = fileTaxEnrolCertificate;
	}

	public String getFileLegalPerson() {
		return this.fileLegalPerson;
	}

	public void setFileLegalPerson(String fileLegalPerson) {
		this.fileLegalPerson = fileLegalPerson;
	}

	public Integer getLockStatus() {
		return this.lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}

}