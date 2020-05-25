<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<head>
<link rel="stylesheet" href="styles/style.css" >
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
 
<div class = "header" >
		<div class = "subheader" >
			<a href = "https://www.facebook.com/" ><img class = "socialmediaicons" src = "images/facebook.png" ></a>
			<a href = "https://www.facebook.com/" ><img class = "socialmediaicons" src = "images/instagram.png" ></a>
			<a href = "https://www.facebook.com/" ><img class = "socialmediaicons" src = "images/linkedin.png" ></a>
			<a href = "https://www.facebook.com/" ><img class = "socialmediaicons" src = "images/twitter.png" ></a>
			 
			<a  href='logOut.jsp' class = 'loginbtn' >Log out</a>
			<a href='login.jsp' class = 'loginbtn' >Log in</a>
			
		<!---------------- session for display user name on header --------------------------------->
		
        	<% if(session.getAttribute("login") == null){ %>
        		<label class = 'loginbtn'> Hi Welcome to TeleQue </label> 
	        <%	}else{ 
	        	String email = (String)session.getAttribute("login"); %> 
	        	<label class = 'loginbtn'> Hi <% out.println(email); %> </label> 
			<% } %>
			
		</div>
		<div class = "mainheader" >
			<div class = "header-logo"  >
			<a href = "index.jsp" >	<img class = "logo" src = "images/logo.jpg" > </a>
            </div>
             
			
		</div>
		
</div>
