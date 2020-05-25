package com.TeleQue.Bean;

public class customerBean {
	
	private String searchPhone;
	private String searchNIC; 
	private String customerID;
	private String firstName;
	private String lastName;
	private String phoneNo;
	private String brithDay;
	private String Gender;	
	private String emailAddress;
	private String natianol_ID;
	private String province;
	private String address;
	
	
	public customerBean() {
		super();
	}

	public customerBean(String searchPhone, String searchNIC, String customerID, String firstName, String lastName,
			String phoneNo, String brithDay, String gender, String emailAddress, String natianol_ID, String province,
			String address) {
		super();
		this.searchPhone = searchPhone;
		this.searchNIC = searchNIC;
		this.customerID = customerID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNo = phoneNo;
		this.brithDay = brithDay;
		Gender = gender;
		this.emailAddress = emailAddress;
		this.natianol_ID = natianol_ID;
		this.province = province;
		this.address = address;
	}

	public String getSearchPhone() {
		return searchPhone;
	}

	public void setSearchPhone(String searchPhone) {
		this.searchPhone = searchPhone;
	}

	public String getSearchNIC() {
		return searchNIC;
	}

	public void setSearchNIC(String searchNIC) {
		this.searchNIC = searchNIC;
	}

	public String getCustomerID() {
		return customerID;
	}

	public void setCustomerID(String customerID) {
		this.customerID =  customerID;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getBrithDay() {
		return brithDay;
	}

	public void setBrithDay(String brithDay) {
		this.brithDay = brithDay;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getNatianol_ID() {
		return natianol_ID;
	}

	public void setNatianol_ID(String natianol_ID) {
		this.natianol_ID = natianol_ID;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
	
}
