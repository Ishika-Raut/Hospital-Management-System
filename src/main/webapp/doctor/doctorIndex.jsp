<%@ page import="com.dao.DoctorDao" %> 
<%@ page import="com.entity.Doctor" %>
<%@ page import="com.db.DBConnect" %> 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Index</title>
<%@include file = "../component/allcss.jsp"%>
<style type= "text/css">
.container .cart .one{	
   color: #2BD47D;
   background: rgb(149, 200, 255);
   border-radius: 12px;
 }
.container .cart .two{	
   color: #2BD47D;
   background: #FFE6AC;
   border-radius: 12px;
 }
.container .cart .three{
   color: #ffc233;
   background: #E7D1FC;
   border-radius: 12px;
 }
.container .cart .four{
   color: #e05260;
   background: rgb(255, 178, 178);
   border-radius: 12px;
 }
 .container .cart .five{
   color: #e05260;
   background: rgb(138, 230, 190);
   border-radius: 12px;
 }
.container .cart .one:hover{	
   -ms-transform: scale(1.1);
   -webkit-transform: scale(1.1);
   transform: scale(1.1);
 }
.container .cart .two:hover{	
   -ms-transform: scale(1.1);
   -webkit-transform: scale(1.1);
   transform: scale(1.1);
 }
.container .cart .three:hover{
   -ms-transform: scale(1.1);
   -webkit-transform: scale(1.1);
   transform: scale(1.1);
 }
.container .cart .four:hover{
   -ms-transform: scale(1.1);
   -webkit-transform: scale(1.1);
   transform: scale(1.1);
 }
 .container .cart .five:hover{
   -ms-transform: scale(1.1);
   -webkit-transform: scale(1.1);
   transform: scale(1.1);
 }
 .copy {
  background-color: #333;
  padding: 20px;
  color: #FFF;
  text-align: center;
  font-size: 15px;
}
</style>
</head>
<body style="background: #f4f4f4;">
<%@include file = "navbar.jsp"%>

<c:if test = "${ empty doctObj}">
	        <c:redirect url= "admin_login.jsp"></c:redirect>
        </c:if>

		<%
			Doctor d = (Doctor)session.getAttribute("doctObj");
			DoctorDao dao = new DoctorDao(DBConnect.getConn());
    	%>
		
<div class="container p-5">  
<p class="text-center fs-2 pb-3" style= "color:#17adb6; font-family:verdana;">DOCTOR DASHBOARD</p>
   
  <div class="row">
  		<div class="col-md-4 cart">
  		<a href="patient.jsp" style="text-decoration: none; font-family:verdana;">
		    <div class="card h-100 one">
		      	<div class="card-body text-center text-dark">
		      	    <i class= "fas fa-user-md fa-3x"></i>
		        	    <p class="text-center fs-4">ALL PATIENTS<br>
		        	    	<%= dao.countAppointmentByDoctorId(d.getId()) %>
		        	    </p>
        	  	</div>
            </div>
            </a>
        </div>
        
        <div class="col-md-4 cart">
        <a href="all_appointment.jsp" style="text-decoration: none; font-family:verdana;">
		    <div class="card h-100 two">
		      	<div class="card-body text-center text-dark">
		      	    <i class= "fas fa-user-circle fa-3x"></i>
		        	    <p class="text-center fs-4">ALL APPOINTMENTS	<br>
		        	    	<%= dao.countAppointmentByDoctorId(d.getId()) %>
		        	    </p>
        	  	</div>
            </div>
            </a>
        </div>
</div>

</body>
</html>