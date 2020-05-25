<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
    <script src="scripts/addMember.js"></script> 
    <link rel="stylesheet" href="styles/style.css" >
	<link rel="stylesheet" href="styles/style2.css" >    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
   
   
    
</head>
<body >

<div class = "main" >
    
      <%@include file="WEB-INF/view/header.jsp" %>
		
     <!----------------------------- body section --------------------------------------------------------------------------->
    
       <div class ="pageBody">
        <div id = "signUpBody">         
               
            <form method="POST" action="addUserServlet" onsubmit="return validateSignUp()"> <!---form begins --->
             
                <table id="signUpTable" > <!--table begins -->
					  
                    <tr>
                    	<br><br>
                        <td ><b>Already have an account? <a href="login.jsp" > Log in  </a><br><br> </td>
                    </tr>
                    
                    <tr>
                       <td ><label class = "Stext" >  <b>First Name</b></label> &nbsp;  <label id="fnameErro"></label>  </td> 
                    </tr>
                    <tr>
                       <td > <input class="logText"  type="text" name="fname" id="fname" ><br> </td>
                    </tr>
                    <tr>
                       <td><label class="Stext"><b>Last Name</b></label> &nbsp;  <label id="lnameErro"></label> </td> 
                    </tr>
                    <tr>
                        <td><input class="logText" type="text" name="lname" id="lname"  > </td>
                    </tr>
                    <tr>
                       <td><label class="Stext"><b>User Type</b></label> &nbsp;  <label id="memberErro"></label> </td> 
                    </tr>
                    <tr>
                        <td>
                        <select name="member_t" class="logText"   id="member_type">
                          <option value=" "> </option>
						  <option value="Administrator">Administrator</option>
						  <option value="Manager">Manager</option>
						  <option value="Work-Force-Manager">Work Force Manager</option>
						  <option value="Agent">Agent</option>
						  <option value="Technician">Technician</option>
						  
						   
						</select>
                        
                        </td>
                    </tr>
                    
                    <tr>
                        <td><label class="Stext"><b>Date of Birth</b></label> &nbsp;  <label id="dateErro"></label> </td> 
                    </tr>
                    <tr>
                        <td><input class="logText" type="date" name="dob" value="" id="dob" > </td>
                    </tr>
                    <tr>
                        <td><label class="Stext"><b>Gender</b> </label> &nbsp;  <label id="genderErro"></label> </td> 
                    </tr>
                    <tr>
                        
                        <td><input  type="radio" name="gender" value="Male" id="male"  > <label> Male </label> 
                        <input class="" type="radio" name="gender" value="Female" id="female"  > <label> Female</label> <br><br> </td>
                    </tr>
                    <tr>
                        <td><label class="Stext"><b>Phone Number</b></label> &nbsp;  <label id="phoneErro"></label> </td> 
                    </tr>
                    <tr>
                        <td><input class="logText" type="text" name="pNo" id="pNo" max="10"  > </td>
                    </tr>
                    <tr>
                        <td><label class="Stext"><b>Email Address</b></label> &nbsp;  <label id="emailErro"></label> </td> 
                    </tr>
                    <tr>
                        <td><input class="logText" type="email" name="email" id="email"  > </td>
                    </tr>
                    
                    <tr>
                        <td><label class="Stext"><b>Password</b></label> &nbsp;  <label id="pwdErro"></label> </td>
                    </tr>
                    <tr>
                         <td><input class="logText" type="password" name="pwd" id="pwd"  > </td>
                    </tr>
                    <tr>
                        <td><label class="Stext"><b>Re-Type Password</b></label> &nbsp;  <label id="rePwdErro"></label> </td> 
                    </tr>
                    <tr>
                        <td><input class="logText" type="password" id="rePwd"  > </td>
                    </tr>
                    
                    <tr>
                        <td> <input class="" name="agr" type="checkbox" > <label> Agree to the </label><a href="#"> Term and condition</a> </td>
                    </tr>
                     
                    <tr>
                        <td><input id="signUpButton"  type="submit" name="create" value="Create Account" onclick="validateSignUp()">  </td>
                    </tr>
                </table> <!-- end of the table -->
            </form> <!-- end of the form  -->   
          </div>
           
        </div>
         
	
	
	
		
	
	<div >
       <%@include file="WEB-INF/view/footer.jsp" %>    
	</div>
</div>
</body>
</html>