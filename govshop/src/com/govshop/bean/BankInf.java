package com.govshop.bean;

/**
 * BankInf entity. @author MyEclipse Persistence Tools
 */

public class BankInf implements java.io.Serializable {

	// Fields

	private Integer id;
	private String bankName;
	private String tradeAddress;
	private String logo;

	// Constructors

	/** default constructor */
	public BankInf() {
	}

	/** full constructor */
	public BankInf(String bankName, String tradeAddress, String logo) {
		this.bankName = bankName;
		this.tradeAddress = tradeAddress;
		this.logo = logo;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBankName() {
		return this.bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getTradeAddress() {
		return this.tradeAddress;
	}

	public void setTradeAddress(String tradeAddress) {
		this.tradeAddress = tradeAddress;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

}