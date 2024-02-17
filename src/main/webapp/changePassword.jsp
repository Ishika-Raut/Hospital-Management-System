<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<%@include file = "component/allcss.jsp"%>
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

<style type= "text/css">
.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box{
 margin-bottom: 15px;
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
</style>
</head>
<body>
<%@include file = "component/navbar.jsp"%>

<c:if test = "${ empty userObj}">
	        <c:redirect url= "user_login.jsp"></c:redirect>
        </c:if>

<div class="container p-5 pb-10 forms">  
	<div class="form login">
  <div class="form-content">
    <header>Change Password</header>
    
        <c:if test = "${not empty successMsg}">
	        <p class= "text-center text-success fs-5">${successMsg}</p>
	        <c:remove var= "successMsg" scope = "session"/>
        </c:if>
        
        <c:if test = "${not empty errorMsg}">
	        <p class= "text-center text-danger fs-5">${errorMsg}</p>
	        <c:remove var= "errorMsg" scope = "session"/>
        </c:if>
        
        <form action= "userChangePassword" method= "post">
	  		<div class= "field input-field">
	  			<label class="details">New Password</label>
		  		<input required name= "newPassword" type= "text" class= "form-control" placeholder="Enter New Password">
		  		<br><span id= "password2"></span>
	  		</div>
	  		<div class= "field input-field">
	  			<label class="details">Old Password</label>
		  		<input required name= "oldPassword" type= "text" class= "form-control" placeholder="Enter Old Password">
		  		<br><span id= "password2"></span>
	  		</div>
	  		<input type= "hidden" name= "uid" value= "${userObj.id }">
	  		<div class="field button-field">
	  		<button type= "submit" class= "btn bg-success text-white col-md-12">Change Password</button>
	  		</div>
  		</form>
      </div>
    </div>
  </div>

</body>
</html>
