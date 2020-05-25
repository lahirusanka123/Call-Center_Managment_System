package com.TeleQue.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TeleQue.Bean.customerBean;
import com.TeleQue.Bean.customerServicesBean;
import com.TeleQue.Model.customerManagmentDB;
import com.TeleQue.Model.serviceManagmentDB;


@WebServlet("/customerManagementServlet")
public class customerManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public customerManagementServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		/*--------------------------------------------------------------------------------------------------------------------- 
		 * form1 section
		 * ---------------------------------------------------------------------------------------------------------------------*/
		 if (request.getParameter("search") != null) {
			 
			 String searchPhone = request.getParameter("searchPhoneNo");
			 String searchNIC = request.getParameter("searchNIC");
			
			 customerBean cB1 = new customerBean();
			 customerServicesBean csbean = new customerServicesBean();
			 
			 cB1.setSearchPhone(searchPhone);
			 cB1.setSearchNIC(searchNIC);
			 
			 serviceManagmentDB smDB = new serviceManagmentDB();
			 String s0 = smDB.readCustomer(cB1,csbean);	
			 
			 	String custid = cB1.getCustomerID();
				String firstName1 = cB1.getFirstName();
				String lastName1  = cB1.getLastName();
				String phoneNo1 = cB1.getPhoneNo();
				String brithDay1 = cB1.getBrithDay();
				String Gender1 = cB1.getGender();	
				String emailAddress1 = cB1.getEmailAddress();
				String natianol_ID1 = cB1.getNatianol_ID();
				String Province1 = cB1.getProvince();
				String address1 = cB1.getAddress();	
				
				String eBilling = csbean.geteBilling();
				String missedCallAlert = csbean.getMissedCallAlert(); 
				String mobileBanking = csbean.getMobileBanking();
				String Roaming = csbean.getRoaming();
				String emergencyAlert = csbean.getEmergencyAlert();
				String mobileTv = csbean.getMobileTv();
				String lotteryResult = csbean.getLotteryResult();
				String mobileCash = csbean.getMobileCash();	
				String hotNews = csbean.getHotNews();
				String mobileInsurance = csbean.getMobileInsurance();
				
							 
				System.out.println(s0);
					
				response.sendRedirect("http://localhost:8080/webapp/customerManagement.jsp?cid="+custid+"&f_name="+firstName1+"&l_name="+lastName1+"&phoneNo="+phoneNo1+"&brithDay="+brithDay1+"&Gender="+Gender1+"&emailAddress="+emailAddress1+"&natianol_ID="+natianol_ID1+"&Province="+Province1+"&address="+address1+"&eb="+eBilling+"&ms="+missedCallAlert+"&mob="+mobileBanking+"&Ro="+Roaming+"&em="+emergencyAlert+"&mt="+mobileTv+"&lot="+lotteryResult+"&mc="+mobileCash+"&hN="+hotNews+"&min="+mobileInsurance+"");
				
			    } 
		
		/*--------------------------------------------------------------------------------------------------------------------- 
		 * for form 2 Add button 
		 * -------------------------------------------------------------------------------------------------------------------*/
		 if (request.getParameter("Add") != null) {
			 
				String firstName = request.getParameter("fname");
				String lastName = request.getParameter("lname");
				String phoneNo = request.getParameter("phoneNo");
				String brithDay = request.getParameter("dob");
				String Gender = request.getParameter("gender");		
				String emailAddress = request.getParameter("email");
				String natianol_ID = request.getParameter("nic");
				String Province = request.getParameter("province");
				String address = request.getParameter("Address");
				
				customerBean cB = new customerBean(); 
				cB.setFirstName(firstName);
				cB.setLastName(lastName);
				cB.setPhoneNo(phoneNo);
				cB.setBrithDay(brithDay);
				cB.setGender(Gender);
				cB.setEmailAddress(emailAddress);
				cB.setNatianol_ID(natianol_ID);
				cB.setProvince(Province);
				cB.setAddress(address);
				
				customerManagmentDB smDB = new customerManagmentDB();
				String s1 = smDB.addCustomer(cB);
				response.sendRedirect("http://localhost:8080/webapp/customerManagement.jsp");
				System.out.println(s1);
				
		 }	
		 
		 /*-------------------------------------------------------------------------------------------------------------------- 
		  * for form 2 Update button
		  *  ---------------------------------------------------*/
		 if (request.getParameter("update") != null) {
			 
				String firstName = request.getParameter("fname");
				String lastName = request.getParameter("lname");
				String phoneNo = request.getParameter("phoneNo");
				String brithDay = request.getParameter("dob");
				String Gender = request.getParameter("gender");		
				String emailAddress = request.getParameter("email");
				String natianol_ID = request.getParameter("nic");
				String Province = request.getParameter("province");
				String address = request.getParameter("Address");
				
				customerBean cB = new customerBean(); 
				cB.setFirstName(firstName);
				cB.setLastName(lastName);
				cB.setPhoneNo(phoneNo);
				cB.setBrithDay(brithDay);
				cB.setGender(Gender);
				cB.setEmailAddress(emailAddress);
				cB.setNatianol_ID(natianol_ID);
				cB.setProvince(Province);
				cB.setAddress(address);
				
				customerManagmentDB smDB = new customerManagmentDB();
				String s1 = smDB.updateCustomer(cB);
				response.sendRedirect("http://localhost:8080/webapp/customerManagement.jsp");
				System.out.println(s1);
				
		 }	
		 //----------------- for form 2 Delete button ---------------------------------------------------
		 if (request.getParameter("Delete") != null) {
			 
			 String phoneNo = request.getParameter("phoneNo");
			 String natianol_ID = request.getParameter("nic");
			 
			 customerBean cB = new customerBean(); 
			 cB.setPhoneNo(phoneNo);
			 cB.setNatianol_ID(natianol_ID);
			 
			 
			 customerManagmentDB smDB = new customerManagmentDB();
				String s2 = smDB.DeleteCustomer(cB);
				response.sendRedirect("http://localhost:8080/webapp/customerManagement.jsp");
				System.out.println(s2);
		 }
		
		
	}

}
