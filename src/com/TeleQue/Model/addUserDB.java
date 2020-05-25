package com.TeleQue.Model;

import java.sql.Connection;



import java.sql.SQLException;
import java.sql.Statement;

import com.TeleQue.Bean.userBean;
import com.TeleQue.Util.telequeDB;

public class addUserDB {

	String s1 =null;
	public String insertUser(userBean mB) {
		telequeDB db = new telequeDB();
		Connection con = db.getCon();
		
		try {
			Statement stmt = con.createStatement();
			stmt.executeUpdate("INSERT INTO user(f_name,l_name,member_type,birthday,gender,phone_no,email_address,password)VALUE ('"+mB.getFirstName()+"','"+mB.getLastName()+"','"+mB.getMemberType()+"','"+mB.getBrithDay()+"','"+mB.getGender()+"','"+mB.getPhoneNo()+"','"+mB.getEmailAddress()+"','"+mB.getPassword()+"') ");
			s1 = "data inserted";
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return s1;
	}
}
