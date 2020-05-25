package com.TeleQue.Controller;

import java.io.IOException;


 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TeleQue.Bean.userBean;
import com.TeleQue.Model.loginUserDB;
 

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
       
   
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);		 
		
		String emailAddress = request.getParameter("email");
		String password = request.getParameter("pwd");
		
		userBean user = new userBean();
		user.setEmailAddress(emailAddress);
		user.setPassword(password);
		 
		 
		boolean status = loginUserDB.readData(user); 
		if(status){
			
			HttpSession session = request.getSession();
			session.setAttribute("login", emailAddress);
			
			response.sendRedirect("index.jsp");
			
		}else {
			 
			HttpSession session = request.getSession();
			session.setAttribute("logininvalid", "wrong user name or password");
			
			response.sendRedirect("login.jsp");
			
			 
		}
	}


	 
		
	 

}
