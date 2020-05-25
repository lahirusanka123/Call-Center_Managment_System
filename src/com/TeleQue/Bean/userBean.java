package com.TeleQue.Bean;

public class userBean {
	  
	private String firstName;
	private String lastName;
	private String memberType;
	private String brithDay;
	private String Gender;
	private String phoneNo;
	private String emailAddress;
	private String password;
	
	
	
	public userBean() {
		super();
	}


	public userBean(String firstName, String lastName, String memberType, String brithDay, String gender,
			String phoneNo, String emailAddress, String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.memberType = memberType;
		this.brithDay = brithDay;
		Gender = gender;
		this.phoneNo = phoneNo;
		this.emailAddress = emailAddress;
		this.password = password;
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
	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
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
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
