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
<title>All Patient</title>
<%@include file = "../component/allcss.jsp"%>
<style type= "text/css">
.card
{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body>
<%@include file = "navbar.jsp"%>

<c:if test = "${ empty adminObj}">
	        <c:redirect url= "../admin_login.jsp"></c:redirect>
        </c:if>

<nav class="navbar navbar-expand-lg" style="background: #f4f4f4; font-family:verdana;">
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </div>
  </div>
</nav>

<div class="container-fluid p-3">
<div class="row">
  <div class="col-md-12">
<div class="card paint-card">
<div class="card-body">
<p class= "fs-3 text-center" style= "color:#17adb6;  font-family:verdana;">Patient List</p>

<table class= "table">
<thead>
<tr>
<th scope= "col">First Name</th>
<th scope= "col">Last Name</th>
<th scope= "col">Gender</th>
<th scope= "col">Age</th>
<th scope= "col">Email</th>
<th scope= "col">Contact No.</th>
<th scope= "col">Diseases</th>
<th scope= "col">Address</th>
<th scope= "col">State</th>
<th scope= "col">City</th>

</tr>
</thead>
<tbody>
<%AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
    	List<Appointment> list = dao.getAllAppointment();
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
    	<td><%= ap.getDiseases() %></td>
    	<td><%= ap.getAddress() %></td>
    	<td><%= ap.getState() %></td>
    	<td><%= ap.getCity() %></td>
		</tr>
		<%} %>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>  
  </body>
  </html>
  
  
  
  