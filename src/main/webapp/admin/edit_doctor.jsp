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
<title>Edit Doctor</title>
<%@include file = "allcss.jsp"%>
<style type= "text/css">
<style type= "text/css">
.forms{
margin-top:50px;
margin-bottom:50px;
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.forms .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
  text-align:center;
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
form .input-box span.details{
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
 .form .category{
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
<body>
<%@include file = "navbar.jsp"%>

<c:if test = "${ empty adminObj}">
	        <c:redirect url= "../admin_login.jsp"></c:redirect>
        </c:if>

<div class="container forms">
    <div class="title"  style= "color:#17adb6; font-family:verdana;">Update Doctor</div>
    <div class="content">
    
<c:if test = "${not empty successMsg}">
	        <p class= "text-center text-success fs-5">${successMsg}</p>
	        <c:remove var= "successMsg" scope = "session"/>
        </c:if>
        
        <c:if test = "${not empty errorMsg}">
	        <p class= "text-center text-danger fs-3">${errorMsg}</p>
	        <c:remove var= "errorMsg" scope = "session"/>
        </c:if>

<%
int id = Integer.parseInt(request.getParameter("id"));
DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
Doctor d = dao2.getDoctorByID(id);
%>

<form action="../updateDoctor" method="post">
  <div class="user-details">
  			<input type="hidden" class="form-control" name="id" value="<%=d.getId()%>">
          <div class="input-box">
		    <label class="form-label">First Name</label>
		    <input type="text" required class="form-control" name="firstname" value="<%=d.getFirstName()%>">
		  </div>
		  <div class="input-box">
		    <label class="form-label">Last Name</label>
		    <input type="text" required class="form-control" name="lastname" value="<%=d.getLastName()%>">
		  </div>
		  <div class="input-box">
		    <label class="form-label">DOB</label>
		    <input type="date" required class="form-control" name= "dob" value="<%=d.getDob()%>">
		  </div>
		  <div class="input-box">
		    <label class="form-label">Age</label>
		    <input type="text" required class="form-control" name="age" value="<%=d.getAge()%>">
		  </div>
		  <div class="input-box">
		    <label  class="form-label">Contact no.</label>
		    <input type="text" required class="form-control" name= "mobno" value="<%=d.getMobno()%>">
		  </div>
		  <div class="input-box">
		    <label class="form-label">Gender</label>
		    <select required class= "form-control" name= "gender">
		    <option> <%=d.getGender()%></option>
 			<option>Female</option>
 			<option>Male</option>
 			<option>Don't want to disclose</option>
		   </select>
		  </div>
		  <div class="input-box">
		    <label  class="form-label">Qualification</label>
		    <input type="text" required class="form-control" name= "qualification" value="<%=d.getQualification()%>">
		  </div>
		  <div class="input-box">
		    <label  class="form-label">Specialist</label>
		    <select required class= "form-control" name= "spec">
		    <option> <%=d.getSpecialist()%></option>
    
    <%SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
    	List<Specialist> list = dao.getAllSpecialist();
    	for(Specialist s : list)
    	{%>
    		<option><%= s.getSpecialistName() %></option>
    	
    	<%}
    %>
    </select>
  </div>
		  <div class="input-box">
		    <label  class="form-label">Email</label>
		    <input type="email" required class="form-control" name= "email" value="<%=d.getEmail()%>">
		  </div>
		  <div class="input-box">
		    <label  class="form-label">Password</label>
		    <input type="text" required class="form-control" name= "password" value="<%=d.getPassword()%>">
		  </div>
		  <button type= "submit" class= "btn col-md-4" style= "background-color:#17adb6; color:white; font-family:verdana;">Update Doctor</button>
		  </div>
  </form>
  </div>
  </div> 
  </body>
  </html>
  
  
  
  