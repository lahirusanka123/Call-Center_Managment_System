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
      			   
			       <form action="customerManagementServlet" method="post">
			      
			           <input name="searchPhoneNo" class="searchPhone"    type="text" placeholder=" Search by Phone Number" >
			           <input name="searchNIC" class="searchNIC"    type="text" placeholder=" Search by NIC" > <br>			            
       				   <button  id="searchPhonebtn"  type="submit" name="search"  class="btn btn-info btn-lg" ><b><span class="glyphicon glyphicon-search"  ></span> Find Customer</b></button>
			        
			       </form>  
			  </div> 
			
       		  <form action="customerManagementServlet" method="POST" onsubmit="return validateSignUp()">    
       	       <div class="textDIV">
       	       		<!------------------ for remove null inside the text box ------------------------------------------------------------> 
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
                         <input name="fname" id="fname" class="mText"  type="text"  value="<% out.println(fn);%>" placeholder=" First Name" > 
                        
                         <label class="servicetext"><b>Last Name</b></label>
                         <p id="lnameErro"></p> 
                         <input name="lname" id="lname" class="mText" type="text" value="<% out.println(ln);%>" placeholder=" Last Name" > 
                   		
                   		 <label class="servicetext"><b>Phone Number</b></label>  
                         <p id="phoneErro"></p> 
                         <input name="phoneNo" id="pNo" class="mText" type="text" value="<% out.println(pn);%>" placeholder=" Phone Number" > 
                         
                         <label class="servicetext"><b>Date of Birth</b></label> 
                         <p id="dateErro"></p>
                         <input name="dob" id="dob" class="mText" type="text" value="<% out.println(bd);%>" placeholder=" Date of Birth"  > 
                    	 
                   		 
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
                        <input name="email" id="email" class="mText" type="email" value="<% out.println(em);%>" placeholder=" Email Address">
                   
                        <label class="servicetext1"><b>NIC</b></label>  
                        <p id="nicErro"></p> 
                        <input name="nic" id="nic" class="mText" type="text" value="<% out.println(na);%>" placeholder=" National Identity Card" > 
                    
                        <label class="servicetext1"><b>Province</b></label> 
                        <p id="provinceErro"></p> 
                        <input name="province" class="mText" id="province" value="<% out.println(pr);%>" type="text" placeholder=" Province" > 
                   
                        <label class="servicetext1"><b>Address</b></label>  
                        <p id="addressErro"></p> 
                        <input name="Address" class="mText" id="address" type="text" value="<% out.println(ad);%>" placeholder=" Address"> 
                    
               </div> 
       		  <div id="btndiv">
       		  		<!-- Add Button trigger modal -->
                  	<button id="addbtn" type="submit" name="Add"   onclick="validateAddItems()"   class="btn btn-primary btn-small" ><b><span class="glyphicon glyphicon-plus"></span> Add</b></button>
				 
       		  		<!-- update Button trigger modal -->
                  	<button id="updatebtn" type="button" name="update"   onclick="validateAddItems()" data-toggle="modal" data-target="#updateModal" class="btn btn-success btn-small" ><b><span class="glyphicon glyphicon-edit"></span> UpDate</b></button>
					<!-- Modal for update button -->
					<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h3 class="modal-title" id="exampleModalLongTitle">Are you sure you want to UPDATE this customer details ?</h3>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					        If you really want to update this details please click yes 
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
					        <button type="submit" name="update" class="btn btn-primary">Yes</button>
					      </div>
					    </div>
					  </div>
					</div>
					<!-- delete Button trigger modal -->
				    <button id="deletebtn" type="button" name="Delete" data-toggle="modal" data-target="#deleteModal" class="btn btn-danger btn-small" ><b><span class="glyphicon glyphicon-trash"></span> Delete Item</b></button>
                    <!-- Modal for delete button -->
					<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h3 class="modal-title" id="exampleModalLongTitle">Are you sure you want to DELETE this customer details ?</h3>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					        If you really want to delete this customer details permanently please click yes 
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
					        <button type="submit" name="Delete" class="btn btn-primary">Yes</button>
					      </div>
					    </div>
					  </div>
					</div>
                   <button id="clearbtn" type="reset" class="btn btn-info"><b><span class="glyphicon glyphicon-repeat"></span> Reset</b></button>
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