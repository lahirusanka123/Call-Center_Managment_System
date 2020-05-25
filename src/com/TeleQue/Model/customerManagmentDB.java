package com.TeleQue.Model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.TeleQue.Bean.customerBean;
import com.TeleQue.Util.telequeDB;

public class customerManagmentDB {
	
	
	/* --------------------------------------------------------------------------------------------------------------------------
	 * for update customer
	 * --------------------------------------------------------------------------------------------------------------------------*/
	
		String s1 = null;
		public String updateCustomer(customerBean cB2) {
			telequeDB db = new telequeDB();
			Connection con = db.getCon();
			
			try {
				Statement stmt = con.createStatement();			
				stmt.executeUpdate("UPDATE  customer SET f_name = '"+cB2.getFirstName()+"',l_name = '"+cB2.getLastName()+"',birthday = '"+cB2.getBrithDay()+"',gender = '"+cB2.getGender()+"',phone_no = '"+cB2.getPhoneNo()+"',email_address = '"+cB2.getEmailAddress()+"',nic_no = '"+cB2.getNatianol_ID()+"',address ='"+cB2.getAddress()+"',province ='"+cB2.getProvince()+"' WHERE phone_no ='"+cB2.getPhoneNo()+"' ");
				s1 = "data Updated ";
				
				if (con != null) {
					con.close();
				}
				 
			} catch (SQLException e) {
				 
				e.printStackTrace();
			}
			return s1;
		}
		
		/* -----------------------------------------------------------------------------------------------------------------------
		 * for Delete customer
		 * ----------------------------------------------------------------------------------------------------------------------*/
		
			String s2 = null;
			public String DeleteCustomer(customerBean cB3) {
				telequeDB db = new telequeDB();
				Connection con = db.getCon();
				
				try {
					Statement stmt = con.createStatement();			
					stmt.executeUpdate("DELETE  FROM customer  WHERE phone_no ='"+cB3.getPhoneNo()+"' OR nic_no = '"+cB3.getNatianol_ID()+"' ");
					s2 = "data deleted ";
					
					if (con != null) {
						con.close();
					}
					 
				} catch (SQLException e) {
					 
					e.printStackTrace();
				}
				return s2;
			}
			
			
			
			/* -----------------------------------------------------------------------------------------------------------
			 * for update customer subscribed services  
			 * -------------------------------------------------------------------------------------------------------------- */
			String s4 =null;
			public String addCustomer(customerBean cusB) {
				telequeDB db = new telequeDB();
				Connection con = db.getCon();
				
				try {
					Statement stmt = con.createStatement();
					stmt.executeUpdate("INSERT INTO customer(f_name,l_name,phone_no,birthday,gender,email_address,nic_no,province,address)VALUE ('"+cusB.getFirstName()+"','"+cusB.getLastName()+"','"+cusB.getPhoneNo()+"','"+cusB.getBrithDay()+"','"+cusB.getGender()+"','"+cusB.getEmailAddress()+"','"+cusB.getNatianol_ID()+"','"+cusB.getProvince()+"','"+cusB.getAddress()+"') ");
					s4 = "data inserted";
					
					if (con != null) {
						con.close();
					}
				} catch (SQLException e) {
					 
					e.printStackTrace();
				}
				return s4;
			}

}
