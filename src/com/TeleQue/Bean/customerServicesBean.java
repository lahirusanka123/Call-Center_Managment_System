package com.TeleQue.Bean;

public class customerServicesBean {
	private String cID;
	private String customerID;
	private String eBilling;
	private String missedCallAlert; 
	private String mobileBanking;
	private String Roaming;
	private String emergencyAlert;
	private String mobileTv;
	private String lotteryResult;
	private String mobileCash;	
	private String hotNews;
	private String mobileInsurance;
	
	public customerServicesBean() {
		super();
	}

	public customerServicesBean(String cID, String customerID, String eBilling, String missedCallAlert,
			String mobileBanking, String roaming, String emergencyAlert, String mobileTv, String lotteryResult,
			String mobileCash, String hotNews, String mobileInsurance) {
		super();
		this.cID = cID;
		this.customerID = customerID;
		this.eBilling = eBilling;
		this.missedCallAlert = missedCallAlert;
		this.mobileBanking = mobileBanking;
		Roaming = roaming;
		this.emergencyAlert = emergencyAlert;
		this.mobileTv = mobileTv;
		this.lotteryResult = lotteryResult;
		this.mobileCash = mobileCash;
		this.hotNews = hotNews;
		this.mobileInsurance = mobileInsurance;
	}

	public String getcID() {
		return cID;
	}

	public void setcID(String cID) {
		this.cID = cID;
	}

	public String getCustomerID() {
		return customerID;
	}

	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}

	public String geteBilling() {
		return eBilling;
	}

	public void seteBilling(String eBilling) {
		this.eBilling = eBilling;
	}

	public String getMissedCallAlert() {
		return missedCallAlert;
	}

	public void setMissedCallAlert(String missedCallAlert) {
		this.missedCallAlert = missedCallAlert;
	}

	public String getMobileBanking() {
		return mobileBanking;
	}

	public void setMobileBanking(String mobileBanking) {
		this.mobileBanking = mobileBanking;
	}

	public String getRoaming() {
		return Roaming;
	}

	public void setRoaming(String roaming) {
		Roaming = roaming;
	}

	public String getEmergencyAlert() {
		return emergencyAlert;
	}

	public void setEmergencyAlert(String emergencyAlert) {
		this.emergencyAlert = emergencyAlert;
	}

	public String getMobileTv() {
		return mobileTv;
	}

	public void setMobileTv(String mobileTv) {
		this.mobileTv = mobileTv;
	}

	public String getLotteryResult() {
		return lotteryResult;
	}

	public void setLotteryResult(String lotteryResult) {
		this.lotteryResult = lotteryResult;
	}

	public String getMobileCash() {
		return mobileCash;
	}

	public void setMobileCash(String mobileCash) {
		this.mobileCash = mobileCash;
	}

	public String getHotNews() {
		return hotNews;
	}

	public void setHotNews(String hotNews) {
		this.hotNews = hotNews;
	}

	public String getMobileInsurance() {
		return mobileInsurance;
	}

	public void setMobileInsurance(String mobileInsurance) {
		this.mobileInsurance = mobileInsurance;
	}
	
	
	 
	
	 
	
}
