
function validateSignUp() {
    document.getElementById("fnameErro").innerHTML = ""; 
    document.getElementById("lnameErro").innerText = "";
    document.getElementById("memberErro").innerText = ""; 
    document.getElementById("dateErro").innerHTML = "";
    document.getElementById("genderErro").innerHTML = "";
    document.getElementById("phoneErro").innerHTML = "";
    document.getElementById("emailErro").innerHTML = "";
    document.getElementById("pwdErro").innerHTML = "";
    document.getElementById("rePwdErro").innerHTML = "";
    
    var F_name =document.getElementById("fname");
    var L_name  =document.getElementById("lname");
    var Member = document.getElementById("member_type");
    var Dob = document.getElementById("dob");
    var Male = document.getElementById("male");
    var Female =document.getElementById("female");
    var P_no  =document.getElementById("pNo");
    var Email = document.getElementById("email");
    var PWD = document.getElementById("pwd");
    var R_PWD = document.getElementById("rePwd");
    
    
    var emailValidate = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;  
    var numerValidate = /^[0-9]+$/; 
    var alphaValidate = /^[a-zA-Z]+$/; 
    
    
    

     
    
//  first name  part
    
    if (F_name.value.length == 0)
        {
            document.getElementById("fnameErro").innerHTML = "Please Enter your first name";
            F_name.focus();
            return false;
            
            
        }
       
    if(F_name.value.length != 0 && !F_name.value.match(alphaValidate))
        {        

            document.getElementById("fnameErro").innerText = "First name should have letters"; 
            F_name.focus();  
            return false;
              
        } 
    
//  last name  part    
    
    if (L_name.value.length == 0)
        {
            document.getElementById("lnameErro").innerHTML = "Please enter your last name";
            L_name.focus();
            return false;
        }
    if(L_name.value.length != 0 && !L_name.value.match(alphaValidate) )
        {
            document.getElementById("lnameErro").innerHTML = "Last name should have letters";
            L_name.focus();
            return false;
        }
//  member   part
    
    if (Member.value == 0)
        {
            document.getElementById("memberErro").innerHTML = "Please select member type";
            Member.focus();
            return false;
        }
//  date of birth   part
    
    if (Dob.value.length == 0)
        {
            document.getElementById("dateErro").innerHTML = "Please enter your Birthday";
            Dob.focus();
            return false;
        }
    
//  gender   part
    
    if (Male.checked==false && Female.checked==false)
        {
            document.getElementById("genderErro").innerHTML = "Please choose your gender type";
            Male.focus();
            return false;
        }
    
//  phone number  part
    
    if (P_no.value.length == 0)
        {
            document.getElementById("phoneErro").innerHTML = "Please enter your Phone number";
            P_no.focus();
            return false;
        }
    if(P_no.value.length != 0 && !P_no.value.match(numerValidate)   )
        {
            document.getElementById("phoneErro").innerHTML = "Enter valid phone number";
            P_no.focus();
            return false;
        }
    
    
    
//  email  part
    
    if (Email.value.length == 0)
        {
            document.getElementById("emailErro").innerHTML = "Please enter your email address";
            Email.focus();
            return false;
        }
    if(Email.value.length != 0 && !Email.value.match(emailValidate) )
        {
            document.getElementById("emailErro").innerHTML = "Enter valid email address";
            Email.focus();
            return false;
        }
    
  
    
    
 //  password  part
    
    if (PWD.value.length == 0)
        {
            document.getElementById("pwdErro").innerHTML = "Please enter password";
            PWD.focus();
            return false;
        }
    if(PWD.value.length != 0 && PWD.value.length < 8 )
        {
            document.getElementById("pwdErro").innerHTML = "Password should have more than 8 digit";
            PWD.focus();
            return false;
        }
    
 //  re enter password  part
    
    if (R_PWD.value.length == 0)
        {
            document.getElementById("rePwdErro").innerHTML = "Re enter your password hear";
            R_PWD.focus();
            return false;
        }
    if(PWD.value !== R_PWD.value )
        {
            document.getElementById("rePwdErro").innerHTML = "Password not match";
            R_PWD.focus();
            return false;
        }
    
    
      
    
    
    
    
}

