<%@ page import="com.dao.AppointmentDao" %> 
<%@ page import="com.dao.DoctorDao" %> 
<%@ page import="com.entity.Doctor" %>
<%@ page import="com.dao.UserDao" %>
<%@ page import="com.db.DBConnect" %> 
<%@ page import="com.entity.Appointment" %> 
<%@ page import="com.entity.User" %> 
<%@ page import="java.util.List" %> 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Appointment</title>
<%@include file = "../component/allcss.jsp"%>
<style type= "text/css">
</style>
</head>
<body style="background: #f4f4f4;">
<%@include file = "component/navbar.jsp"%>

<c:if test = "${ empty userObj}">
	        <c:redirect url= "user_login.jsp"></c:redirect>
        </c:if>

<nav class="navbar navbar-expand-lg" style="background: #f4f4f4;  font-family:verdana;">
<div class="container-fluid">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <form class="d-flex input-group w-auto ms-auto">
      <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" />
      <span class="input-group-text border-0" id="search-addon">
        <button style="background: #17adb6; color:white; border:1px solid #17adb6;" class="btn my-2 my-sm-0" type="submit">
        <i class="fas fa-search"></i>&nbsp;Search
        </button>
      </span>
    </form>
    &nbsp;&nbsp;&nbsp;&nbsp;
   </div>
  </div>
</nav>

<c:if test = "${ empty userObj}">
	        <c:redirect url= "admin_login.jsp"></c:redirect>
        </c:if>

<div class="container-fluid p-3"> 
<div class= "row mt-5">

<div class= "col-md-12">
<div class= "card border border-success paint card">
<div class= "card-body">
<p class="text-center text-success fs-3">Appointments List</p>
<table class= "table">
<thead>
<tr>
<th scope= "col">First Name</th>
<th scope= "col">Last Name</th>
<th scope= "col">Gender</th>
<th scope= "col">Age</th>
<th scope= "col">Email</th>
<th scope= "col">Contact No.</th>
<th scope= "col">Address</th>
<th scope= "col">State</th>
<th scope= "col">City</th>
<th scope= "col">Doctor Name</th>
<th scope= "col">Appointment Date</th>
<th scope= "col">Appointment Time</th>
<th scope= "col">Diseases</th>
<th scope= "col">Status</th>
</tr>
</thead>
<tbody>
<%
		User user = (User)session.getAttribute("userObj");
		AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
    	List<Appointment> list = dao.getAllAppointmentByLoginUser(user.getId());
    	DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
    	for(Appointment ap : list)
    	{
    		Doctor d = dao2.getDoctorByID(ap.getDoctorId());
    	%>
    	<tr>
    	<td><%= ap.getFirstName() %></td>
    	<td><%= ap.getLastName() %></td>
    	<td><%= ap.getGender() %></td>
    	<td><%= ap.getAge() %></td>
    	<td><%= ap.getEmail() %></td>
    	<td><%= ap.getPhNo() %></td>
    	<td><%= ap.getAddress() %></td>
    	<td><%= ap.getState() %></td>
    	<td><%= ap.getCity() %></td>
    	<td><%= d.getFirstName() %> <%= d.getLastName() %></td>
    	<td><%= ap.getAppoinDate() %></td>
    	<td><%= ap.getAppoinTime() %></td>
    	<td><%= ap.getDiseases() %></td>   	
    	<td>
    		<%if("pending".equals(ap.getStatus())) 
    		{%>
    			<a href= "#" class= "btn btn-sm btn-success">Pending</a>
    			
    		<%}
    		else
    		{%>
    			<%= ap.getStatus() %>
    		<%}
    		
    		%>
    	</td>
    	</tr>	
    	
    	<%}
    %>

</tbody>
</table>
       
</div>
</div>
</div>

</div>
</div>
<%@include file= "component/footer.jsp" %>
</body>
</html>