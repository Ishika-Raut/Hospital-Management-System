<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@include file = "component/allcss.jsp"%>
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
<style type= "text/css">
.card
{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
.span
{
	color: red;
	font-size: 20px;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg" style="background: #17adb6;">
<div class="container-fluid">
<a style="color:white; text-decoration:none; font-family:verdana;" class="navbar-brand" href="#"><i class="fa-solid fa-house-medical"></i> MEDIHOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ms-auto ms-6">
      <li class="nav-item">
          <a style="color:white; text-decoration:none; font-family:verdana;" class="nav-link active" aria-current="page" href="index.jsp"><i class="fa fa-arrow-left"></i> BACK</a>
        </li>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <li class="nav-item">
          <a style="color:white; text-decoration:none; font-family:verdana;" class="nav-link active" aria-current="page" href="user_login.jsp"><i class="fa-solid fa-right-to-bracket"></i> USER</a>
        </li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </div>
  </div>
</nav>



<div class="container forms" style="font-family:verdana;">  
	<div class="form login">
  <div class="form-content">
    <header>Login</header>
        
        <c:if test = "${not empty successMsg}">
	        <p class= "text-center text-success fs-6">${successMsg}</p>
	        <c:remove var= "successMsg" scope = "session"/>
        </c:if>
        
        <c:if test = "${not empty errorMsg}">
	        <p class= "text-center text-danger fs-6">${errorMsg}</p>
	        <c:remove var= "errorMsg" scope = "session"/>
        </c:if>
        
        <form action= "adminLogin" method= "post" onsubmit="return validation()">
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
  		<button type= "submit" class= "btn bg-success text-white col-md-12">Login</button>
  		</div>
  		</form>
  	</div>
    </div>
  </div>

        

        <!-- JavaScript -->
       

<script type= "text/javascript">

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
	
	/*function validateEmail(email) 
	{
        var reg = new RegExp("^[a-zA-Z0-9_.]+@[a-zA-Z0-9.]+$");
        if (!reg.test(email)) 
        {
        	document.getElementById('email2').innerHTML = "*Invalid email address!";
            return false;
        }
        return true;
    }
	
	function validatePassword(password, confirm_password) 
	{
        if (password == null || password == "") 
        {
        	document.getElementById('password2').innerHTML = "*Please enter Password";
            return false;
        }
        if(password.length < 6)
		{
			 document.getElementById('password2').innerHTML = "*Password must contain of atleast 8 characters";
			 return false;
			 
		}
		if(password.search(/[0-9]/) == -1)
		{
			 document.getElementById('password2').innerHTML = "*Password must contain of atleast 1 digit";
			 return false;
			 
		}
		if(password.search(/[a-z]/) == -1)
		{
			 document.getElementById('password2').innerHTML = "*Password must contain of atleast 1 lowercase character";
			 return false;
			 
		}
		if(password.search(/[A-Z]/) == -1)
		{
			 document.getElementById('password2').innerHTML = "*Password must contain of atleast 1 uppercase character";
			 return false;
			 
		}
		if(password.search(/[!\@\#\$\%\^\&\*\_]/) == -1)
		{
			 document.getElementById('password2').innerHTML = "*Password must contain of atleast 1 special symbol";
			 return false;
			 
		}
		if(password.search(/[(\)\-\=\+\^\{\}\[\]\|\:\;\""\''\<\>\,\.\?\]/) != -1)
		{
			 document.getElementById('password2').innerHTML = "*Password must contain of atleast 1 special symbol";
			 return false;
			 
		}
		else
		{
			document.getElementById('password2').innerHTML = "";
		}
        return confirmPassword(password, confirm_password);
    }
	
	function validateForm() 
	{
        let isValid = true;

        if (!validateEmail(document.signup.email.value)) 
        {
            isValid = false;
        }
        
        if (!validatePassword(document.signup.password.value, document.signup.confirm_password.value)) 
        {
            isValid = false;
        }
    
        isValid ? alert("Form Data is Valid") : alert("Form Data is not Valid")
    }*/
	
</script>

		<div class="copy">
	    	<div class="container">
	        	© All Rights Reserved | Designed and Developed by Ishika              
	    	</div>
		</div>
	

</body>
</html>