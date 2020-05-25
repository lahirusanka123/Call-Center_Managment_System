<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
    session=request.getSession(false);
    if(session.getAttribute("login")==null)
    {
        response.sendRedirect("login.jsp");
    }

%> 

<script src="scripts/myAccount.js"></script>
<link rel="stylesheet" href="styles/style.css" >
<link rel="stylesheet" href="styles/style2.css" >
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    
  <title>My Account</title>  
</head>
<body >
 
    
<%@include file="WEB-INF/view/header.jsp" %>
    
<!-------------------------------------------------------------------------------------------------------------------------------------------------                                                           body section 
--------------------------------------------------------------------------------------------------------------------------------------------------> 
    
    <div class ="pageBody1">
           
      <div id="wrap">  <!-- user account details area  -->  
       <form action="myAccountFunction.php" method="POST" onsubmit="return validateSignUp()">    
        <div id = "lDiv">  
        			 
                   <div class="dash"> <a href="serviceManagment.jsp">Customer Service Management   </a></div> 
                  
                   <div class="dash"> <a href="addUser.jsp">Add User </a></div> 
                   <div class="dash"> <a href="customerManagement.jsp">Customer Management </a> </div> 
                    
                 
       
          </div>
         </form> 
        </div>
        
        </div>
        
	
	<!-- footer area   --> 
		
	
	<div  >
        <%@include file="WEB-INF/view/footer.jsp" %> 
	</div>
 
</body>
</html>