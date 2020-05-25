package com.TeleQue.Model;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.TeleQue.Bean.userBean;
import com.TeleQue.Util.telequeDB;

 

public class loginUserDB {
	
	 

	public static boolean readData(userBean uB) {
		boolean status=false;
		
		telequeDB db = new telequeDB();
		ResultSet rs;
		Connection con = db.getCon();
		try {
			Statement stmt = con.createStatement();
			rs =  stmt.executeQuery("SELECT email_address,password FROM user WHERE email_address = '"+uB.getEmailAddress()+"' and password = '"+uB.getPassword()+"'");
			status = rs.next();			
			 
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		 
			return  status;
		 
		
		
		 
		
	
	}
}
