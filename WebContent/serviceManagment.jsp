 
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>

<script src="scripts/serviceManagement.js"></script>
<link rel="stylesheet" href="styles/style2.css" >
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
	<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    
  <title>Customer Service Management</title>  
</head>
<body >

<%@include file="WEB-INF/view/header.jsp" %>
    
<!-------------------------------------------------------------------------------------------------------------------------------------------------
																body section 
--------------------------------------------------------------------------------------------------------------------------------------------------> 
    
    <div class ="pageBody1">
    
            
      <div id="wrap"> 
      
      		 
      		<div id="searchdiv">
      			   
			       <form action="serviceManagmentservlet" method="post">
			      
			           <input name="searchPhoneNo" class="searchPhone"    type="text" placeholder=" Search by Phone Number" >
			           <input name="searchNIC" class="searchNIC"    type="text" placeholder=" Search by NIC" > <br>			            
       				   <button  id="searchPhonebtn"  type="submit" name="search"  class="btn btn-info btn-lg" ><b><span class="glyphicon glyphicon-search"  ></span> Find Customer</b></button>
			        
			       </form>  
			</div>
			<!-----------------------------------------------------------------------------------------------------------------------------------------------------------------
		  										Customer Details Panel begin
		   --------------------------------------------------------------------------------------------------------------------------------------------------------------------> 
			
			
			 <div class="panel-group" id="accordion">
		     <div class="panel panel-default">
		      <div class="panel-heading">
		        <h4 class="panel-title">
		          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"><b><span class="glyphicon glyphicon-user"></span> Customer Details</b></a>
		        </h4>
		      </div>
		      <div id="collapse1" class="panel-collapse collapse in">
			  <div class="panel-body">      
			  
       		  <form action="serviceManagmentservlet" method="POST" onsubmit="return validateSignUp()">    
       	       <div class="textDIV">
			       	       <!--------------------------------- 
			       	       for remove null inside the text box 
			       	       ----------------------------------> 
                 		 <% 
                 			String cusid = request. getParameter("cid");
                 		 	String fn = request. getParameter("f_name"); 
                 			String ln = request. getParameter("l_name");
                 			String pn = request. getParameter("phoneNo");
                 			String gen = request.getParameter("Gender");
                 			String bd = request. getParameter("brithDay");
                 			String em = request. getParameter("emailAddress"); 
                 			String na = request. getParameter("natianol_ID");
                 			String pr = request. getParameter("Province"); 
                 			String ad = request. getParameter("address");
                 			
                 			//for remove null inside the text box
                 		 	if(fn == null && ln == null && pn == null && bd == null && em == null && na == null && pr == null && ad == null ) 
                 		 	{
                 		 		fn = ""; 
                     			ln = "";
                     			pn = ""; 
                     			bd = "";
                     			em = ""; 
                     			na = "";
                     			pr = ""; 
                     			ad = "";
                 		 	} 
                 		 
                 		 %>
                         <label class="servicetext">  <b>First Name</b></label>    
                         <p id="fnameErro"></p> 
                         <input name="fname" id="fname" class="mText"  type="text"  value=" <% out.println(fn);%>" placeholder=" First Name" > 
                        
                         <label class="servicetext"><b>Last Name</b></label>
                         <p id="lnameErro"></p> 
                         <input name="lname" id="lname" class="mText" type="text" value=" <% out.println(ln);%>" placeholder=" Last Name" > 
                   		
                   		 <label class="servicetext"><b>Phone Number</b></label>  
                         <p id="phoneErro"></p> 
                         <input name="phoneNo" id="pNo" class="mText" type="text" value=" <% out.println(pn);%>" placeholder=" Phone Number" > 
                         
                         <label class="servicetext"><b>Date of Birth</b></label> 
                         <p id="dateErro"></p>
                         <input name="dob" id="dob" class="mText" type="text" value=" <% out.println(bd);%>" placeholder=" Date of Birth"  > 
                    	 
                   		 
                         <label class="servicetext"><b> Gender </b> </label>
                         <p id="genderErro"></p>
                         <div id="genderdiv"> 
	                            <input id="male" style="margin-top: 10px"   type="radio" name="gender" value="Male" 
	                            <% if("Male".equals(gen)){out.println("checked='checked'" );}%>  style="margin-left:100px;"   > 
	                            <label> Male </label>
	                            <label> </label>
	                            <input id="Female"  type="radio" name="gender" value="Female" 
	                            <% if("female".equals(gen)){out.println("checked='checked'" );}%>    > 
	                            <label> Female </label> 
                         </div>
                       
                </div>   
          		<div class="textDIV1">
                   
                        <label class="servicetext1"><b>Email</b></label> 
                        <p id="emailErro"></p>
                        <input name="email" id="email" class="mText" type="email" value="  <% out.println(em);%>" placeholder=" Email Address">
                   
                        <label class="servicetext1"><b>NIC</b></label>  
                        <p id="nicErro"></p> 
                        <input name="nic" id="nic" class="mText" type="text" value=" <% out.println(na);%>" placeholder=" National Identity Card" > 
                    
                        <label class="servicetext1"><b>Province</b></label> 
                        <p id="provinceErro"></p> 
                        <input name="province" class="mText" id="province" value=" <% out.println(pr);%>" type="text" placeholder=" Province" > 
                   
                        <label class="servicetext1"><b>Address</b></label>  
                        <p id="addressErro"></p> 
                        <input name="Address" class="mText" id="address" type="text" value=" <% out.println(ad);%>" placeholder=" Address"> 
                    
               </div> 
       		  
             </form> 
            </div>
		   </div>
		  </div>
		  <!-----------------------------------------------------------------------------------------------------------------------------------------------------------------
		  										Subscribed Services Panel begin
		   --------------------------------------------------------------------------------------------------------------------------------------------------------------------> 
		    <%
		    	String ebill = request. getParameter("eb");
                String mca = request. getParameter("ms");
                String mbank = request. getParameter("mob");
                String roam = request. getParameter("Ro");
                String ealt = request. getParameter("em");
                String mtv = request. getParameter("mt");
                String dlr = request. getParameter("lot");
                String mcash = request. getParameter("mc");
                String dhn = request. getParameter("hN");
                String minsu = request. getParameter("min");
               
		    %>
		    
		    <div id="panel2" class="panel panel-default">
		      <div class="panel-heading">
		        <h4 class="panel-title">
		          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2"><b><span class="glyphicon glyphicon-check"></span> Subscribed Services of  <% out.println(fn+" "+ln);%>  </b> </a>   
		        </h4>
		      </div>
		      <div id="collapse2" class="panel-collapse collapse">
		        <div class="panel-body">
		        <br>
		        <form action="serviceManagmentservlet" method="post" >
		         <div class="servicesdiv">
		         	
		        		         	 
		         	<label>E Billing  </label> 
		          	<input <% if("on".equals(ebill)){out.println("checked");}%> data-width="110" name="ebilling" data-style="ios"   type="checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" data-onstyle="primary">  
             	  	<hr>
             	  	<label>Missed call Alert  </label>
             	  	<input <% if("on".equals(mca)){out.println("checked");}%> data-width="110" name="mCallAlt" data-style="ios"   type="checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" data-onstyle="primary">  
             		<hr>
             		<label>Mobile Banking </label>
             		<input <% if("on".equals(mbank)){out.println("checked");}%> data-width="110" name="mBanking" data-style="ios"   type="checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" data-onstyle="primary">  
             		<hr>
             		<label>Roaming </label>
             		<input <% if("on".equals(roam)){out.println("checked");}%> data-width="110" name="roaming" data-style="ios"   type="checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" data-onstyle="primary">  
             		<hr>
             		<label>Emergency Alerts </label>
             		<input <% if("on".equals(ealt)){out.println("checked");}%> data-width="110" name="eAlt" data-style="ios"   type="checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" data-onstyle="primary">  
             		<hr>
		         
		         </div>
		         <div class="servicesdiv">
		         	 
		         	<label>Mobile TV </label>
             		<input <% if("on".equals(mtv)){out.println("checked");}%> data-width="110" name="mTv" data-style="ios"   type="checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" data-onstyle="primary">  
             		<hr>
             		<label>Daily lottery Results </label>
             		<input <% if("on".equals(dlr)){out.println("checked");}%> data-width="110" name="ltry" data-style="ios"   type="checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" data-onstyle="primary">  
             		<hr>
             		<label>Mobile Cash </label>
             		<input <% if("on".equals(mcash)){out.println("checked");}%> data-width="110" name="mCash" data-style="ios"   type="checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" data-onstyle="primary">  
             		<hr>
             		<label>Daily Hot News </label>
             		<input <% if("on".equals(dhn)){out.println("checked");}%> data-width="110" name="dNews" data-style="ios"   type="checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" data-onstyle="primary">  
             		<hr>
             		<label>Mobile Insurance </label>
             		<input <% if("on".equals(minsu)){out.println("checked");}%> data-width="110" name="mIns" data-style="ios"   type="checkbox" data-toggle="toggle" data-on="Active" data-off="Inactive" data-onstyle="primary">
					<hr>		         
		         </div>
		         	<input type="text" class="invisible" name="cusID" value="<%out.println(cusid);%>" >
		            <!-- update Services Button trigger modal ------------------------------------------>
                  	<button id="updateServicebtn" type="button" name="updateService"  data-toggle="modal" data-target="#updateServiceModal" class="btn btn-primary btn-lg" ><b><span class="glyphicon glyphicon-edit"></span> UpDate Services</b></button>
					<!-- Modal for update Services button -->
					<div class="modal fade" id="updateServiceModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h3 class="modal-title" id="exampleModalLongTitle">Are You Sure You Want To Change Activated Customer Services ?</h3>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					        If you really want to update this activated services please click yes 
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
					        <button type="submit" name="updateService" class="btn btn-primary">Yes</button>
					      </div>
					    </div>
					  </div>
					</div> 	
		        </form>	
			    </div>
		      </div>
		    </div>
		  </div> 
 		</div>
 	</div>	
	<!-- footer area   --> 
		
	<div  >
         <%@include file="WEB-INF/view/footer.jsp" %>
	</div>

</body>
</html>