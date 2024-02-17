<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored = "false" %>

<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-house-medical"></i> MEDIHOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_appointment.jsp"><i class="fa-solid fa-right-to-bracket"></i> APPOINTMENT</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="view_appointment.jsp"><i class="fa-solid fa-right-to-bracket"></i>  VIEW APPOINTMENT</a>
	        </li>
	        <li class="nav-item dropdown active">
          <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" 
          aria-expanded="false"><i class="fa-solid fa-circle-user"></i>&nbsp;&nbsp;${userObj.fullName}
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="changePassword.jsp">Change Password</a></li>
            <li><a class="dropdown-item" href="userLogout">Logout</a></li>
          </ul>
        </li>       
      </ul>
      
    </div>
  </div>
</nav>