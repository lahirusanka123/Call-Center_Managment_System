<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>

<%
    session=request.getSession(false);
    if(session.getAttribute("login")!=  null)
    {
        response.sendRedirect("index.jsp");
    }

%> 
    
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<link rel="stylesheet" href="styles/style.css" >
<link rel="stylesheet" href="styles/style2.css" >
    
<script src="scripts/login.js"></script>  
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    
</head>
<body >
 <div id="a">

     

<%@include file="WEB-INF/view/header.jsp" %>
<!-------------------------------------------------------------------------------------------------------------------------------------------
                                                               body section
-------------------------------------------------------------------------------------------------------------------------------------------->
        <div class = "pageBody">
            
            <div  id = "loginPic" > <!-- -------------  Doctor image area -->
                <img Id="loginImg"   src="images/2.png">
            </div>
        
            <div id ="loginForm">
				<div class = "loginform-back" >
				<img id="logo1" src="images/logo.jpg"><br>
                <label style="color: #2439AD" id="signInfont"> <b> Sign In <br> </b></label>
                 
                    
                    <form action="loginServlet" method="POST" onsubmit="return validateLogin()">  <!-- ---------------------- login form begin -->        
                    <table >
                        <tr>
                            <td width="100%"><label class="Stext" ><b>Email Address</b><br>  </label> <label id="vEmail"></label> </td>
                        </tr>
                        <tr>
                            <td><input class="signText"  type="email" name="email" id="tEmail" min="5"  >  </td>                
                        </tr>
                        <tr>
                            <td><label class="Stext"><b>Password</b><br> </label>  <label id="vPassword"></label> </td>
                        </tr>
                        <tr>
                            <td><input class="signText" type="password" name="pwd" id="pwd"  >  </td>
                        </tr>
                        <tr>
                            <td><a href="addUser.jsp" style = "text-decoration : none;  margin-top : 2px ; color : gray ; font-size : 15px;"><br><span class="glyphicon glyphicon-user"></span> Create a New Account</a>              
                        
                            <input id="signinButton" style="float: right" type="submit" name="login" value="Sign in" onclick="validateLogin()"> </td>  
                        </tr>  
                        <tr>
                        	<td><label  ><b></b><br> </label>   </td>
                        </tr>  
                   </table>
                  </form>  <!-- ----------------------------- end of the form -->       
                </div>
            </div>
        </div>
	
    </div>
</body>
</html>