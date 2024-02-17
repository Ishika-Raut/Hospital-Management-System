<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Register</title>
<%@include file = "component/allcss.jsp"%>
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

<style type= "text/css">
.card
{
box-shadow: 0 0 30px 60px rgba(0,0,0,0.3);
}
</style>
</head>
<body onload="document.register.fullname.focus()">

<nav class="navbar navbar-expand-lg" style= "background-color:#17adb6;">
<div class="container-fluid">
<a style="color:white; text-decoration:none;font-family:verdana;" class="navbar-brand" href="#"><i class="fa-solid fa-house-medical"></i> MEDIHOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ms-auto ms-6">
      <li class="nav-item">
          <a  style="color:white; text-decoration:none;font-family:verdana;" class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-right-to-bracket"></i> ADMIN</a>
        </li>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <li class="nav-item">
          <a style="color:white; text-decoration:none;font-family:verdana;" class="nav-link active" aria-current="page" href="book_appointment.jsp"><i class="fa-solid fa-right-to-bracket"></i> APPOINTMENT</a>
        </li>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <li class="nav-item">
          <a style="color:white; text-decoration:none;font-family:verdana;" class="nav-link active" aria-current="page" href="user_login.jsp"><i class="fa-solid fa-right-to-bracket"></i> USER</a>
        </li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </div>
  </div>
</nav>

        <div class="container p-5 pb-10 forms " style="font-family:verdana;">  
	<div class="form login">
  <div class="form-content">
    <header>Sign Up</header>
        
        <c:if test = "${not empty successMsg}">
	        <p class= "text-center text-success fs-6">${successMsg}</p>
	        <c:remove var= "successMsg" scope = "session"/>
        </c:if>
        
        <c:if test = "${not empty errorMsg}">
	        <p class= "text-center text-danger fs-6">${errorMsg}</p>
	        <c:remove var= "errorMsg" scope = "session"/>
        </c:if>
        
        <form action= "user_register" method= "post" onsubmit="return validation()">
        <div class= "field input-field">
	  		<input required name= "fname" type= "text" class= "form-control input" placeholder="First name">
	  		<br><span id= "email2"></span>
  		</div>
  		<div class= "field input-field">
	  		<input required name= "lname" type= "text" class= "form-control input" placeholder="Last Name">
	  		<br><span id= "email2"></span>
  		</div>
  		<div class= "field input-field">
	  		<input required name= "email" type= "email" class= "form-control input" placeholder="Email">
	  		<br><span id= "email2"></span>
  		</div>
  		<div class="field input-field">
	  		<input required name= "password" type= "password" class= "form-control password" placeholder="Password">
	  		<i class='bx bx-hide eye-icon'></i>
	  		<br><span id= "password2"></span>
  		</div>
  		<div class="field button-field">
  		<button type= "submit" class= "btn bg-success text-white col-md-12">Sign Up</button>
  		</div>
  		</form>
  		</div>
    </div>
  </div>
<script type="text/javascript">

const forms = document.querySelector(".forms"),
pwShowHide = document.querySelectorAll(".eye-icon"),
links = document.querySelectorAll(".link");

pwShowHide.forEach(eyeIcon => {
eyeIcon.addEventListener("click", () => {
  let pwFields = eyeIcon.parentElement.parentElement.querySelectorAll(".password");
  
  pwFields.forEach(password => {
      if(password.type === "password"){
          password.type = "text";
          eyeIcon.classList.replace("bx-hide", "bx-show");
          return;
      }
      password.type = "password";
      eyeIcon.classList.replace("bx-show", "bx-hide");
  })
  
})
})      

links.forEach(link => {
link.addEventListener("click", e => {
 e.preventDefault(); //preventing form submit
 forms.classList.toggle("show-signup");
})
})

/*
function validateForm()  
{  
	var uname= document.register.fullname;
	var uemail= document.register.email;
	var passid= document.register.password;
	  
	if(name_len(uname))  
	{  
		if(first_name(uname))
		{
			if(email(uemail))
			{
				if(pwd(passid))   
				{   
					if(pwd_numeric(passid))   
					{
						return true;								
					}
				}   	  
			}
		}
	}
	return false;  
}

function name_len(uname)  
{   
	var len = uname.value.length;   
	if(len >= 3)  
	{  
		return true;  
	}  
	else  
	{  
		document.getElementById('fullname2').innerHTML = "**Name must contain atleast 3 alphabet characters";
		uname.focus();  
		return false;  
	}  
}
function first_name(uname)  
{   
	var letters = /^[A-Za-z]+$/;   
	if(uname.value.match(letters) )  
	{  
		document.getElementById('fullname2').innerHTML = " ";
		return true;  
	}  
	else  
	{  
		document.getElementById('fullname2').innerHTML = "**Name must have alphabet characters only";
		uname.focus();  
		return false;  
	}  
}
function email(uemail)  
{  
	//w=[A-Za-z0-9]
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
	if(uemail.value.match(mailformat))  
	{  
		document.getElementById('email2').innerHTML = " ";
		return true;  
	}  
	else  
	{  
		
		document.getElementById('email2').innerHTML = "**You have entered an invalid email address!";
		uemail.focus();  
		return false;  
	}  
}
function pwd(passid,mx,my)  
{   
	var passid_len = passid.value.length;  
	if (passid_len === 0 ||passid_len >= my || passid_len < mx)  
	{  
		document.getElementById('password2').innerHTML = "**Password should not be empty / length be between "+mx+" to "+my";
		passid.focus();  
		return false;  
	}  
	else
	{
		return true;  
	}
	
}
function pwd_numeric(passid)  
{   
	number = /0-9/;   
	if(passid.value.match(number) )  
	{  
		document.getElementById('password2').innerHTML = " ";
		return true;  
	}  
	else  
	{  
		document.getElementById('password2').innerHTML = "**Password must have atleast 1 numeric digit";
		uname.focus();  
		return false;  
	}  
}
*/
</script>

<div class="copy">
	    	<div class="container">
	        	© All Rights Reserved | Designed and Developed by Ishika              
	    	</div>
		</div>

</body>
</html>
