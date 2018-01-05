package com.govshop.bean;

import java.util.Date;

/**
 * OrderForm entity. @author MyEclipse Persistence Tools
 */

public class OrderForm implements java.io.Serializable {

	// Fields

	private Integer id;
	private String orderFormNumber;
	private Integer govId;
	private Integer businessId;
	private Date createTime;
	private String title;
	private double totalMoney;
	private double payMoney;
	private Integer payType;
	private String payBank;
	private String payAccount;
	private String payAccountPerson;
	private String payPersonIdcard;
	private String payOtherDesc;
	private Integer deliverType;
	private String deliverAddress;
	private String deliverPostalCode;
	private String deliverContactPerson;
	private String deliverContactPhone;
	private String rightLiabilities;
	private String remark;
	private Integer formStatus;

	// Constructors

	/** default constructor */
	public OrderForm() {
	}

	/** full constructor */
	public OrderForm(String orderFormNumber, Integer govId, Integer businessId, Date createTime, String title,
			double totalMoney, double payMoney, Integer payType, String payBank, String payAccount,
			String payAccountPerson, String payPersonIdcard, String payOtherDesc, Integer deliverType,
			String deliverAddress, String deliverPostalCode, String deliverContactPerson, String deliverContactPhone,
			String rightLiabilities, String remark, Integer formStatus) {
		this.orderFormNumber = orderFormNumber;
		this.govId = govId;
		this.businessId = businessId;
		this.createTime = createTime;
		this.title = title;
		this.totalMoney = totalMoney;
		this.payMoney = payMoney;
		this.payType = payType;
		this.payBank = payBank;
		this.payAccount = payAccount;
		this.payAccountPerson = payAccountPerson;
		this.payPersonIdcard = payPersonIdcard;
		this.payOtherDesc = payOtherDesc;
		this.deliverType = deliverType;
		this.deliverAddress = deliverAddress;
		this.deliverPostalCode = deliverPostalCode;
		this.deliverContactPerson = deliverContactPerson;
		this.deliverContactPhone = deliverContactPhone;
		this.rightLiabilities = rightLiabilities;
		this.remark = remark;
		this.formStatus = formStatus;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOrderFormNumber() {
		return this.orderFormNumber;
	}

	public void setOrderFormNumber(String orderFormNumber) {
		this.orderFormNumber = orderFormNumber;
	}

	public Integer getGovId() {
		return this.govId;
	}

	public void setGovId(Integer govId) {
		this.govId = govId;
	}

	public Integer getBusinessId() {
		return this.businessId;
	}

	public void setBusinessId(Integer businessId) {
		this.businessId = businessId;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getTotalMoney() {
		return this.totalMoney;
	}

	public void setTotalMoney(double totalMoney) {
		this.totalMoney = totalMoney;
	}

	public double getPayMoney() {
		return this.payMoney;
	}

	public void setPayMoney(double payMoney) {
		this.payMoney = payMoney;
	}

	public Integer getPayType() {
		return this.payType;
	}

	public void setPayType(Integer payType) {
		this.payType = payType;
	}

	public String getPayBank() {
		return this.payBank;
	}

	public void setPayBank(String payBank) {
		this.payBank = payBank;
	}

	public String getPayAccount() {
		return this.payAccount;
	}

	public void setPayAccount(String payAccount) {
		this.payAccount = payAccount;
	}

	public String getPayAccountPerson() {
		return this.payAccountPerson;
	}

	public void setPayAccountPerson(String payAccountPerson) {
		this.payAccountPerson = payAccountPerson;
	}

	public String getPayPersonIdcard() {
		return this.payPersonIdcard;
	}

	public void setPayPersonIdcard(String payPersonIdcard) {
		this.payPersonIdcard = payPersonIdcard;
	}

	public String getPayOtherDesc() {
		return this.payOtherDesc;
	}

	public void setPayOtherDesc(String payOtherDesc) {
		this.payOtherDesc = payOtherDesc;
	}

	public Integer getDeliverType() {
		return this.deliverType;
	}

	public void setDeliverType(Integer deliverType) {
		this.deliverType = deliverType;
	}

	public String getDeliverAddress() {
		return this.deliverAddress;
	}

	public void setDeliverAddress(String deliverAddress) {
		this.deliverAddress = deliverAddress;
	}

	public String getDeliverPostalCode() {
		return this.deliverPostalCode;
	}

	public void setDeliverPostalCode(String deliverPostalCode) {
		this.deliverPostalCode = deliverPostalCode;
	}

	public String getDeliverContactPerson() {
		return this.deliverContactPerson;
	}

	public void setDeliverContactPerson(String deliverContactPerson) {
		this.deliverContactPerson = deliverContactPerson;
	}

	public String getDeliverContactPhone() {
		return this.deliverContactPhone;
	}

	public void setDeliverContactPhone(String deliverContactPhone) {
		this.deliverContactPhone = deliverContactPhone;
	}

	public String getRightLiabilities() {
		return this.rightLiabilities;
	}

	public void setRightLiabilities(String rightLiabilities) {
		this.rightLiabilities = rightLiabilities;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getFormStatus() {
		return this.formStatus;
	}

	public void setFormStatus(Integer formStatus) {
		this.formStatus = formStatus;
	}

}