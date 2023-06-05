<%@ page isELIgnored="false" contentType="text/html; charset=ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Demo</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
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
	    <c:set var="msgColor"></c:set>
	    <c:set var="msgContent"></c:set>
	     
	    
	    <c:if test="${message=='loginerror'}">
	       <c:set var="msgContent" value="invalid login credentials"/>
	        <c:set var="msgColor" value="red"/>
	    </c:if>
	    
	      <c:if test="${message=='notloggedin'}">
	       <c:set var="msgContent" value="you need to login first"/>
	        <c:set var="msgColor" value="red"/>
	    </c:if>
	    
	    <c:if test="${message=='regsuccess'}">
	       <c:set var="msgContent" value="registration successful"/>
	        <c:set var="msgColor" value="green"/>
	    </c:if>
	     
	     <c:if test="${message=='logoutsuccess'}">
	       <c:set var="msgContent" value="logout successful"/>
	        <c:set var="msgColor" value="green"/>
	    </c:if>
	    
	    <p style="color:<c:out value="${msgColor}"/>;text-align:center">
	         <c:out value="${msgContent}"></c:out>
	    </p>
		
		
		<h2 style="text-align:center">
			Login Page
		</h2>
		
		<form action="checkuser" method="post" class="form">
			<div class="form-group">
				<label class="control-label">Enter User Name</label>
				<input type="text" name="username" placeholder="User Name"
				class="form-control"> 
			</div>
			
			<div class="form-group">
				<label class="control-label">Enter User Password</label>
				<input type="password" name="password" 
				placeholder="User Password" class="form-control"> 
			</div>
			
			<input type="submit" class="btn btn-block btn-success"
			value="CLICK TO LOGIN" name="btnLogin">
		</form>
		
		<a href="register.jsp">REGISTER HERE</a>
	</div>
</body>
</html>