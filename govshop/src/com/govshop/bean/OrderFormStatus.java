package com.govshop.bean;

/**
 * OrderFormStatus entity. @author MyEclipse Persistence Tools
 */

public class OrderFormStatus implements java.io.Serializable {

	// Fields

	private Integer id;
	private String govStatus;
	private String busStatus;

	// Constructors

	/** default constructor */
	public OrderFormStatus() {
	}

	/** full constructor */
	public OrderFormStatus(String govStatus, String busStatus) {
		this.govStatus = govStatus;
		this.busStatus = busStatus;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGovStatus() {
		return this.govStatus;
	}

	public void setGovStatus(String govStatus) {
		this.govStatus = govStatus;
	}

	public String getBusStatus() {
		return this.busStatus;
	}

	public void setBusStatus(String busStatus) {
		this.busStatus = busStatus;
	}

}