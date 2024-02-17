<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<%@ page import="com.dao.SpecialistDao" %> 
<%@ page import="com.dao.DoctorDao" %> 
<%@ page import="com.db.DBConnect" %> 
<%@ page import="com.entity.Specialist" %> 
<%@ page import="com.entity.Doctor" %> 
<%@ page import="java.util.List" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Appointment</title>
<%@include file = "component/allcss.jsp"%>
<style type= "text/css">
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

.form-holder
{
	display:flex;
	justify-content:center;
	align-items:center;
}
.form-container{
margin-top:100px;
margin-bottom:50px;
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
  position:center;
}
.form-container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.form-container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background-color: #fff;
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box label.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
</style>
</head>
<body style="background: #f4f4f4;">
<%@include file = "component/navbar.jsp"%>

<div class="container form-holder" style="font-family:verdana;">
<div class="form-container">
    <div class="title" style= "color:#17adb6; font-family:verdana;">Book Appointment</div>
    <div class="content">
      <c:if test = "${not empty successMsg}">
	        <p class= "text-center text-success fs-6">${successMsg}</p>
	        <c:remove var= "successMsg" scope = "session"/>
        </c:if>
        
        <c:if test = "${not empty errorMsg}">
	        <p class= "text-center text-danger fs-6">${errorMsg}</p>
	        <c:remove var= "errorMsg" scope = "session"/>
        </c:if>
        
      <form action="bookAppointment" method="post">
      
      <input type= "hidden" name= "userid" value= "${userObj.id }">
      
        <div class="user-details">
          <div class="input-box">
            <label class="details" for= "inputEmail4">First Name</label>
            <input type="text" required class="form-control" name="firstname">
    		<br><span id= "fullname2"></span>
          </div>
          <div class="input-box">
            <label class="details" for= "inputEmail4">Last Name</label>
            <input type="text" required class="form-control" name="lastname">
    		<br><span id= "fullname2"></span>
          </div>
          <div class="input-box">
            <label class="details" for= "inputEmail4">Gender</label>
            <select name= "gender" required class= "form-control">
            <br><span id= "gender2"></span>
		    	<option>---select---</option>
	 			<option>Female</option>
	 			<option>Male</option>
	 			<option>Don't want to disclose</option>
		    </select>
          </div>
          <div class="input-box">
      	<label class="details" for= "inputEmail4">Age</label>
    	<input type="text" required class="form-control" name="age">
    	<br><span id= "age2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="detailsl" for= "inputEmail4">Email</label>
    	<input type="email" required class="form-control" name="email">
    	<br><span id= "email2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="details" for= "inputEmail4">Phone no.</label>
    	<input type="text" required class="form-control" name="phno">
    	<br><span id= "phno2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="details" for= "">Address</label>
    	<input type="text" required class="form-control" name="address">
    	<br><span id= "address2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="details" for= "">State</label>
    	<input type="text" required class="form-control" name="state">
    	<br><span id= "address2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="detais" for= "">City</label>
    	<input type="text" required class="form-control" name="city">
    	<br><span id= "address2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label  class="details" for= "inputPassword4">Doctor</label>
    <select required class= "form-control" name= "doct">
    <option>---select---</option>
    <%DoctorDao dao = new DoctorDao(DBConnect.getConn());
    	List<Doctor> list = dao.getAllDoctor();
    	for(Doctor d : list)
    	{%>
    		<option value= "<%= d.getId()%>"> <%= d.getFirstName() %> <%= d.getLastName() %>(<%= d.getSpecialist() %>)</option>
    	
    	<%}
    %>
    </select>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="details" for= "inputEmail4">Appointment Date</label>
    	<input type="date" required class="form-control" name="appoint_date">
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="details" for= "inputEmail4">Appointment Time</label>
    	<input type="time" required class="form-control" name="appoint_time">
  	  </div>
  	  
  	  <div class="col-md-12">
      	<label class="details" for= "inputEmail4">Diseases</label>
    	<textarea required class="form-control" name="diseases" rows="4" cols="12"></textarea>
      </div>
      <c:if test = "${ empty userObj}">
	        <a href= "user_login.jsp" class= "col-md-6 offset-md-3 btn btn-success" style="margin-top:25px;">Book</a>
	   </c:if>
        
        <c:if test = "${not empty userObj}">
	        <button class="col-md-12 btn btn-success" style="margin-top:25px;">Book</button>
        </c:if>
        </div>
      </form>
    </div>
  </div>
  </div>
    	
    	<script type= "text/javascript">
	function validation()
	{
		var fullname = document.getElementById('fullname').value;
		var gender = document.getElementById('gender').value;
		var age = document.getElementById('age').value;
		var email = document.getElementById('email').value;
		var phno = document.getElementById('phno').value;
		var diseases = document.getElementById('diseases').value;
		var address = document.getElementById('address').value;
		
		if(fullname == "")
		{
			 document.getElementById('fullname2').innerHTML = "*Please enter UserName";
			 return false;
		}
		if(fullname.length < 2)
		 {
			 document.getElementById('fullname2').innerHTML = "*Please enter 2 or more character in UserName";
			 return false;
		 }
		if(!isNaN(fullname))
		 {
			 document.getElementById('fullname2').innerHTML = "*Numbers are not allowed in UserName";
			 return false;
		 }
		else
		{
			document.getElementById('fullname2').innerHTML = "";
		}
		if(email == "")
		{
			 document.getElementById('email2').innerHTML = "*Please enter Email ID";
			 return false;
			 
		}
		if(phno == "")
		{
			 document.getElementById('phno2').innerHTML = "*Please enter Phone no.";
			 return false;
			 
		}
		if((phno.length < 10) || (phno.length > 10))
		 {
			 document.getElementById('phno2').innerHTML = "*Please enter 10 digits ONLY in Phone no.";
			 return false;
		 }
		if(isNaN(phno))
		{
			 document.getElementById('phno2').innerHTML = "*Please enter digits ONLY";
			 return false;
			 
		}
		else
		{
			document.getElementById('phno2').innerHTML = "";
		}
		
	}
</script>

<%@include file= "component/footer.jsp" %>
</body>
</html>