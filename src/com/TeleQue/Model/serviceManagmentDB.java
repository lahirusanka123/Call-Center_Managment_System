package com.TeleQue.Model;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.TeleQue.Bean.customerBean;
import com.TeleQue.Bean.customerServicesBean;
import com.TeleQue.Util.telequeDB;

public class serviceManagmentDB {
	/*----------------------------------------------------------------------------------------------------------------------------- 
	 * for view customer details
	 * -------------------------------------------------------------------------------------------------------------------------------*/
	String s0 = null;
	public  String readCustomer(customerBean cB1,customerServicesBean csB1) {
		 
		
		telequeDB db = new telequeDB();
		Connection con = db.getCon();
		ResultSet rs;
		try {
			Statement stmt = con.createStatement();
			rs =  stmt.executeQuery("SELECT * FROM customer c,customerservices cs WHERE c.customerId = cs.customer_id AND ( phone_no = '"+cB1.getSearchPhone()+"' OR nic_no = '"+cB1.getSearchNIC()+"')");
			s0 = "data selected "; 
			
			
			while(rs.next()){
			   cB1.setCustomerID(rs.getString("customerId"));
	           cB1.setFirstName(rs.getString("f_name"));
	           cB1.setLastName(rs.getString("l_name"));
	           cB1.setPhoneNo(rs.getString("phone_no"));
	           cB1.setEmailAddress(rs.getString("email_address"));
	           cB1.setNatianol_ID(rs.getString("nic_no"));
	           cB1.setAddress(rs.getString("address"));
	           cB1.setBrithDay(rs.getString("birthday"));
	           cB1.setGender(rs.getString("gender"));
	           cB1.setProvince(rs.getString("province"));
	           
	           csB1.seteBilling(rs.getString("e_billing"));
	           csB1.setMissedCallAlert(rs.getString("mis_call_alert"));
	           csB1.setMobileBanking(rs.getString("mobile_billing"));
	           csB1.setRoaming(rs.getString("roaming"));
	           csB1.setEmergencyAlert(rs.getString("emerg_alert"));
	           csB1.setMobileTv(rs.getString("mobile_tv"));
	           csB1.setLotteryResult(rs.getString("lottery_result"));
	           csB1.setMobileCash(rs.getString("mobile_cash"));
	           csB1.setHotNews(rs.getString("daily_news"));
	           csB1.setMobileInsurance(rs.getString("mobile_insurance"));
	        }
			if (con != null) {
				con.close();
			}
			 
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		
			return  s0;
	}
	
	/* ------------------------------------------------------------------------------------------------------------------------
	 * for update customer subscribed services  
	 * ---------------------------------------------------------------------------------------------------------------------------*/
	
				String s3 = null;
				public String updateCustomersubscribedservices(customerServicesBean csB) {
					telequeDB db = new telequeDB();
					Connection con = db.getCon();
					
					try {
						Statement stmt = con.createStatement();			
						stmt.executeUpdate("UPDATE  customerservices SET e_billing ='"+csB.geteBilling()+"',mis_call_alert = '"+csB.getMissedCallAlert()+"',mobile_billing = '"+csB.geteBilling()+"',roaming='"+csB.getRoaming()+"',emerg_alert='"+csB.getEmergencyAlert()+"',mobile_tv='"+csB.getLotteryResult()+"',lottery_result = '"+csB.getLotteryResult()+"', mobile_cash='"+csB.getMobileCash()+"',daily_news='"+csB.getHotNews()+"',mobile_insurance='"+csB.getMobileInsurance()+"' WHERE customer_id = '"+csB.getCustomerID()+"' ");
						s3 = "customer service data Updated ";
						if (con != null) {
							con.close();
						}
					} catch (SQLException e) {
						 
						e.printStackTrace();
					}
					return s3;
				}
	
	
		
}