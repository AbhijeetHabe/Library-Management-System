<%@ page isELIgnored="false" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Demo</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-color:lightgreen;">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#" style="font-size:30px; font-weight:bold;">Library Management System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    
  
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
     
      <a class="nav-item nav-link" href="index.html">HOME</a>
      <a class="nav-item nav-link " href="register.jsp">Register</a>
         <a class="nav-item nav-link " href="login.jsp">Login</a>
            <a class="nav-item nav-link " href="contact.jsp">Contact Us</a>  
    </div>
  </div>
</nav> 

	<div class="container">
	
		
		 <c:set var="message" value="${param.msg}"></c:set>
	    <c:set var="msgContent"></c:set>
	        
	    <c:if test="${message=='regerror'}">
	       <c:set var="msgContent" value="registration failed"/>
	    </c:if>
	
	    <p style="color:red;text-align:center">
	         <c:out value="${msgContent}"></c:out>
	    </p>
		
		
		<h2 style="text-align:center">
			Registration Page
		</h2>
		
		<form action="adduser" method="post" class="form">
  <div class="container">
  <form>
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" class="form-control" name="username" placeholder="Username">
        </div>
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" class="form-control" name="name" placeholder="Name">
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" class="form-control" name="email" placeholder="Email">
        </div>
        <div class="form-group">
          <label for="contact">Contact</label>
          <input type="text" class="form-control" name="contact" placeholder="Contact Number">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
          <label for="address">Address</label>
          <input type="text" class="form-control" name="address" placeholder="1234 Main St, New York">
        </div>
        <div class="form-group">
          <label for="city">City</label>
          <input type="text" class="form-control" name="city" placeholder="City">
        </div>
        <div class="form-group">
          <label for="membership">Membership Type</label>
          <select name="membership" class="form-control">
            <option selected>Choose...</option>
            <option value="one day">One day</option>
            <option value="monthly">Monthly</option>
            <option value="yearly">Yearly</option>
          </select>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <button type="submit" class="btn btn-primary">Register</button>
        <button type="reset" class="btn btn-primary">Cancel</button>
      </div>
    </div>
  </form>
</div>
</form>
</div>
</body>
</html>