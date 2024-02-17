<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored = "false" %>

<nav class="navbar navbar-expand-lg navbar-dark" style= "background-color:#17adb6; font-family:verdana;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-medical"></i> MEDIHOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">      
      	<li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctorIndex.jsp"><i class="fa-solid fa-right-to-bracket"></i> HOME</a>
        </li>
      </ul>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <form class= "d-flex">
      	<div class= "dropdown">
        	<button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" 
          aria-expanded="false"><i class="fas fa-user-circle"></i>&nbsp;&nbsp;${doctObj.firstName}
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="editProfile.jsp">Edit Profile</a></li>
            <li><a class="dropdown-item" href="../doctorLogout">Logout</a></li>
          </ul>
          </div>
    </form>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
  </div>
</nav>