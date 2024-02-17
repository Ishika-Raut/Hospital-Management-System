<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored = "false" %>

<nav class="navbar fixed-top navbar-expand-lg navbar-dark" style= "background-color:#17adb6;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#" style="font-family:verdana;"><i class="fa-solid fa-house-medical"></i> MEDIHOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
      <c:if test = "${ empty userObj}">
      	<li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#services" style="font-family:verdana;"> SERVICES</a>
        </li>
        &nbsp;&nbsp;
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#team" style="font-family:verdana;"> TEAM</a>
        </li>
        &nbsp;&nbsp;
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#review" style="font-family:verdana;"> TESTIMONIALS</a>
        </li>
        &nbsp;&nbsp;      
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="book_appointment.jsp" style="font-family:verdana;"><i class="fas fa-calendar-alt"></i> APPOINTMENT</a>
        </li>
        &nbsp;&nbsp;
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp" style="font-family:verdana;"><i class="fa-solid fa-right-to-bracket"></i> ADMIN / DOCTOR</a>
        </li>
        &nbsp;&nbsp;
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login.jsp" style="font-family:verdana;"><i class="fa-solid fa-right-to-bracket"></i> USER</a>
        </li>
        &nbsp;&nbsp;
        </c:if>
       
       <c:if test = "${not empty userObj}">
       <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="book_appointment.jsp" style="font-family:verdana;"><i class="fa-solid fa-right-to-bracket"></i>  BOOK APPOINTMENT</a>
	        </li>
	        &nbsp;&nbsp;&nbsp;&nbsp;
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="view_appointment.jsp" style="font-family:verdana;"><i class="fa-solid fa-right-to-bracket"></i>  VIEW ALL APPOINTMENT</a>
	        </li>
	        &nbsp;&nbsp;&nbsp;&nbsp;
	        <li class="nav-item dropdown active">
          <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" 
          aria-expanded="false" style="font-family:verdana;"><i class="fa-solid fa-circle-user"></i>&nbsp;&nbsp;${userObj.firstName}
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1" >
            <li><a class="dropdown-item" href="changePassword.jsp" style="font-family:verdana;">Change Password</a></li>
            <li><a class="dropdown-item" href="userLogout" style="font-family:verdana;">Logout</a></li>
          </ul>
        </li>
        &nbsp;&nbsp;&nbsp;&nbsp; 
        </c:if> 
       
      </ul>     
    </div>
  </div>
</nav>