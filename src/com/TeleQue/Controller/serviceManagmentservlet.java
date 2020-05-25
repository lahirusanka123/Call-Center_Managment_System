package com.TeleQue.Controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.TeleQue.Bean.customerBean;
import com.TeleQue.Bean.customerServicesBean;
import com.TeleQue.Model.serviceManagmentDB;


@WebServlet("/serviceManagmentservlet")
public class serviceManagmentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public serviceManagmentservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	/*--------------------------------------------------------------------------------------------------------------------------- 
	 * form1 select customer service section
	 * ------------------------------------------------------------------------------------------------------------------------*/
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
					
				response.sendRedirect("http://localhost:8080/webapp/serviceManagment.jsp?cid="+custid+"&f_name="+firstName1+"&l_name="+lastName1+"&phoneNo="+phoneNo1+"&brithDay="+brithDay1+"&Gender="+Gender1+"&emailAddress="+emailAddress1+"&natianol_ID="+natianol_ID1+"&Province="+Province1+"&address="+address1+"&eb="+eBilling+"&ms="+missedCallAlert+"&mob="+mobileBanking+"&Ro="+Roaming+"&em="+emergencyAlert+"&mt="+mobileTv+"&lot="+lotteryResult+"&mc="+mobileCash+"&hN="+hotNews+"&min="+mobileInsurance+"");
				
			    } 
	
		/*---------------------------------------------------------------------------------------------------------------------- 
		 for form 3  updateService button 
		 ----------------------------------------------------------------------------------------------------------------------*/ 
		 
		if (request.getParameter("updateService") != null) {
			
			String custId = request.getParameter("cusID");
			String eBill = request.getParameter("ebilling");
			String mCallAlert= request.getParameter("mCallAlt"); 
			String moBanking= request.getParameter("mBanking");
			String Roaming= request.getParameter("roaming");
			String emergAlert= request.getParameter("eAlt");
			String mobTv= request.getParameter("mTv");
			String lotResult= request.getParameter("ltry");
			String moCash= request.getParameter("mCash");	
			String hotNews= request.getParameter("dNews");
			String moInsurance= request.getParameter("mIns");
			
			customerServicesBean csB = new customerServicesBean();
			csB.setCustomerID(custId);
			csB.seteBilling(eBill);
			csB.setMissedCallAlert(mCallAlert);
			csB.setMobileBanking(moBanking);
			csB.setRoaming(Roaming);
			csB.setEmergencyAlert(emergAlert);
			csB.setMobileTv(mobTv);
			csB.setLotteryResult(lotResult);
			csB.setMobileCash(moCash);
			csB.setHotNews(hotNews);
			csB.setMobileInsurance(moInsurance);
			
			serviceManagmentDB smDB = new serviceManagmentDB();
		
			String s3 = smDB.updateCustomersubscribedservices(csB);
			response.sendRedirect("http://localhost:8080/webapp/serviceManagment.jsp");
			System.out.println(s3);
			 
			 
		 }
	}
		
		
		
		
		
		
		 
		
		 
		 
		 
		
		
}

