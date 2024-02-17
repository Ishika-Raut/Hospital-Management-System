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
<title>All Doctor</title>
<%@include file = "allcss.jsp"%>
<style type= "text/css">
.card
{
box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body style="background: #f4f4f4;">
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
    <ul class="navbar-nav ms-auto ms-6">
      <li class="nav-item">
        <button  class="btn my-2 my-sm-0" style="background: #17adb6;">
        	<a style="color:white; text-decoration:none; font-family:verdana;" href="doctor.jsp"><i class="fas fa-plus"></i>&nbsp;Add Doctor</a>
        </button>
      </li>
    </ul>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <form class="d-flex input-group w-auto">
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
<p class= "fs-3 text-center" style= "color:#17adb6; font-family:verdana;">Doctor List</p>

<c:if test = "${not empty successMsg}">
	        <p class= "text-center text-success fs-5">${successMsg}</p>
	        <c:remove var= "successMsg" scope = "session"/>
        </c:if>
        
        <c:if test = "${not empty errorMsg}">
	        <p class= "text-center text-danger fs-5">${errorMsg}</p>
	        <c:remove var= "errorMsg" scope = "session"/>
        </c:if>

<table class= "table">
<thead>
<tr>
<th scope= "col">First Name</th>
<th scope= "col">LAst Name</th>
<th scope= "col">DOB</th>
<th scope= "col">Age</th>
<th scope= "col">Gender</th>
<th scope= "col">Contact No.</th>
<th scope= "col">Qualification</th>
<th scope= "col">Specialist</th>
<th scope= "col">Email</th>
<th scope= "col">Action</th>
</tr>
</thead>
<tbody>
<%DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
    	List<Doctor> list2 = dao2.getAllDoctor();
    	for(Doctor d : list2)
    	{%>
    	<tr>
    	<td><%= d.getFirstName() %></td>
    	<td><%= d.getLastName() %></td>
    	<td><%= d.getDob() %></td>
    	<td><%= d.getAge() %></td>
    	<td><%= d.getMobno() %></td>
    	<td><%= d.getGender() %></td>
    	<td><%= d.getQualification() %></td>
    	<td><%= d.getSpecialist() %></td>
    	<td><%= d.getEmail() %></td>
    	<td>
			<a href= "edit_doctor.jsp?id=<%=d.getId() %>" class= "btn btn-sm btn-primary">Edit</a>
			<a href= "../deleteDoctor?id=<%=d.getId() %>" class= "btn btn-sm btn-danger">Delete</a>
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

<div class="copy">
	    	<div class="container">
	        	© All Rights Reserved | Designed and Developed by Ishika              
	    	</div>
		</div>

  </body>
  </html>
  
  
  
  