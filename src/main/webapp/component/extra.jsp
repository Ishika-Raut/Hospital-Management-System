<div class="container forms">
    <div class="title">Add Doctor</div>
    <div class="content">

<c:if test = "${not empty successMsg}">
	        <p class= "text-center text-success fs-6">${successMsg}</p>
	        <c:remove var= "successMsg" scope = "session"/>
        </c:if>
        
        <c:if test = "${not empty errorMsg}">
	        <p class= "text-center text-danger fs-6">${errorMsg}</p>
	        <c:remove var= "errorMsg" scope = "session"/>
        </c:if>
        
      <form action="bookAppointment" method="post">
      
      <input type= "hidden" name= "userid" value= "${userObj.id }">
      
      <div class="user-details" >
          <div class="input-box">
      	<label class="form-label" for= "inputEmail4">First Name</label>
    	<input type="text" required class="form-control" name="firstname">
    	<br><span id= "fullname2"></span>
  	  </div>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="form-label" for= "inputEmail4">Last Name</label>
    	<input type="text" required class="form-control" name="lastname">
    	<br><span id= "fullname2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label  class="form-label">Gender</label>
	    <select name= "gender" required class= "form-control">
	    <option>---select---</option>
 			<option>Female</option>
 			<option>Male</option>
 			<option>Don't want to disclose</option>
	    </select>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="form-label" for= "inputEmail4">Age</label>
    	<input type="text" required class="form-control" name="age">
    	<br><span id= "age2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="form-label" for= "inputEmail4">Email</label>
    	<input type="email" required class="form-control" name="email">
    	<br><span id= "email2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="form-label" for= "inputEmail4">Phone no.</label>
    	<input type="text" required class="form-control" name="phno">
    	<br><span id= "phno2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="form-label" for= "">Address</label>
    	<input type="text" required class="form-control" name="address">
    	<br><span id= "address2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="form-label" for= "">State</label>
    	<input type="text" required class="form-control" name="state">
    	<br><span id= "address2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="form-label" for= "">City</label>
    	<input type="text" required class="form-control" name="city">
    	<br><span id= "address2"></span>
  	  </div>
  	  
  	  <div class="input-box">
      	<label  class="form-label" for= "inputPassword4">Doctor</label>
    <select name= "doct" required class= "form-control">
    <option>---select---</option>
    <%--<%DoctorDao dao = new DoctorDao(DBConnect.getConn());
    	List<Doctor> list = dao.getAllDoctor();
    	for(Doctor d : list)
    	{
    		<option value= "<%= d.getId()%>"> <%= d.getFullName() %>(<%= d.getSpecialist() %>)</option>
    	
    	<%}
    %>--%>
    </select>
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="form-label" for= "inputEmail4">Appointment Date</label>
    	<input type="date" required class="form-control" name="appoint_date">
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="form-label" for= "inputEmail4">Appointment Time</label>
    	<input type="date" required class="form-control" name="appoint_time">
  	  </div>
  	  
  	  <div class="input-box">
      	<label class="form-label" for= "inputEmail4">Diseases</label>
    	<textarea required class="form-control" name="diseases" rows="4" cols="12"></textarea>
      </div>
      <c:if test = "${ empty userObj}">
	        <a href= "user_login.jsp" class= "col-md-6 offset-md-3 btn btn-success">Book</a>
	   </c:if>
        
        <c:if test = "${not empty userObj}">
	        <button class="col-md-12 btn btn-success">Book</button>
        </c:if>
    	</form>
    	</div>
    	</div>