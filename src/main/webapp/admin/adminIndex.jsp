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
<title>Admin Index</title>
<%@include file = "allcss.jsp"%>

<style type= "text/css">

</style>
</head>
<body style="background: #f4f4f4;">
<%@include file = "navbar.jsp"%>

		<c:if test = "${ empty adminObj}">
	        <c:redirect url= "../admin_login.jsp"></c:redirect>
        </c:if> 

<div class="container p-5">  
<h2 class="text-center  pb-5" style= "color:#17adb6; font-family:verdana;">ADMIN DASHBOARD</h2>
  <c:if test = "${not empty errorMsg}">
	        <p class= "text-center text-danger fs-5">${errorMsg}</p>
	        <c:remove var= "errorMsg" scope = "session"/>
        </c:if>
        
        <c:if test = "${not empty successMsg}">
	        <p class= "text-center text-success fs-5" role= "alert">${successMsg}</p>
	        <c:remove var= "successMsg" scope = "session"/>
        </c:if> 
        
        <%DoctorDao dao = new DoctorDao(DBConnect.getConn());
    %>

	<div class="row">
  		<div class="col-md-4 cart">
  		<a href="view_doctor.jsp" style="text-decoration: none;">
		    <div class="card h-100 one">
		      	<div class="card-body text-center text-dark">
		      	    <i class= "fas fa-user-md fa-3x"></i>
		        	    <p class="text-center fs-4" style="font-family:verdana;">DOCTOR	<br>
		        	    	<%= dao.countDoctor() %> 
		        	    </p>
        	  	</div>
            </div>
            </a>
        </div>
        
        <div class="col-md-4 cart">
        <a href="patient.jsp" style="text-decoration: none;">
		    <div class="card h-100 two">
		      	<div class="card-body text-center text-dark">
		      	    <i class= "fas fa-user-circle fa-3x"></i>
		        	    <p class="text-center fs-4" style="font-family:verdana;">USER	<br>
		        	    	<%= dao.countUser() %> 
		        	    </p>
        	  	</div>
            </div>
            </a>
        </div>
        
        <div class="col-md-4 cart">
        <a href="all_appointment.jsp" style="text-decoration: none;">
		    <div class="card h-100 three">
		      	<div class="card-body text-center text-dark">
		      	    <i class= "far fa-calendar-check fa-3x"></i>
		        	    <p class="text-center fs-4" style="font-family:verdana;">TOTAL APPOINTMENT	<br>
		        	    	<%= dao.countAppointment() %> 
		        	    </p>
        	  	</div>
            </div>
            </a>
        </div>
        
        <div class="col-md-4 mt-4 cart">
        <a href="add_specialist.jsp" style="text-decoration: none;">
		    <div class="card h-100 four">
		      	<div class="card-body text-center text-dark">
		      	    <i class= "far fa-calendar-check fa-3x"></i>
		        	    <p class="text-center fs-4" style="font-family:verdana;">SPECIALIST	<br>
		        	    	<%= dao.countSpecialist() %> 
		        	    </p>
        	  	</div>
            </div>
            </a>
        </div>
        <div class="col-md-4 mt-4 cart">
        <a href="view_doctor.jsp" style="text-decoration: none;">
		    <div class="card h-100 five">
		      	<div class="card-body text-center text-dark">
		      	    <i class= "far fa-calendar-check fa-3x"></i>
		        	    <p class="text-center fs-4" style="font-family:verdana;">REVIEW	<br>
		        	    	
		        	    </p>
        	  	</div>
            </div>
            </a>
        </div>
        
</div>




<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel" style="font-family:verdana;">Add Specialist</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <form action= "../addSpecialist" method="post">
       	<div class= "form-group" style="font-family:verdana;">
       		<label>Enter Specialist Name</label>
       		<input type= "text" name= "specName" class= "form-control">
       	</div>
       	</form>
      </div>
      <div class="modal-footer">
      <button type= "submit" class="btn btn-success"  style="font-family:verdana;">Add</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"  style="font-family:verdana;">Close</button>
        </div>
    </div>
  </div>
</div> 



</div>

<div class="copy">
	    	<div class="container">
	        	© All Rights Reserved | Designed and Developed by Ishika              
	    	</div>
		</div>

</body>
</html>