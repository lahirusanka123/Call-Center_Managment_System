package com.TeleQue.Controller;

import java.io.IOException;


 

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
import com.TeleQue.Bean.userBean; 
import com.TeleQue.Model.addUserDB;

@WebServlet("/addUserServlet")
public class addUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public addUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String memberType = request.getParameter("member_t");
		String brithDay = request.getParameter("dob");
		String Gender = request.getParameter("gender");
		String phoneNo = request.getParameter("pNo");
		String emailAddress = request.getParameter("email");
		String password = request.getParameter("pwd");
		
		
		 
		userBean regb = new userBean();
		regb.setFirstName(firstName);
		regb.setLastName(lastName);
		regb.setMemberType(memberType);
		regb.setBrithDay(brithDay);
		regb.setGender(Gender);
		regb.setPhoneNo(phoneNo);
		regb.setEmailAddress(emailAddress);
		regb.setPassword(password);
		
		addUserDB amd = new addUserDB();
		String s1 = amd.insertUser(regb);
		
		response.sendRedirect("http://localhost:8080/webapp/login.jsp");
		System.out.println(s1);
		 
		 
	}

}
