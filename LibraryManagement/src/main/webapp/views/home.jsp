<%
		if(!session.isNew() && session.getAttribute("USERNAME")
				!= null) {
%>
<%
   response.setHeader("Cache-Control", "no-cache , no-store , must-revalidate");
   response.setHeader("Pragma", "no-cache");
   response.setDateHeader("Expires", 0);

%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="#" class="navbar-brand"> USER HOME </a>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout"><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</ul>
			</div>
</nav>

	<div class="container">
		<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Library</th>
      <th scope="col">Query</th>
      <th scope="col">Account</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>take book</td>
      <td>Query Book</td>
      <td>Fee</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Return Book</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Reserve Book</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>
		
	</div>
</body>
</html>
<%
		}
		else {
			response.sendRedirect("login.jsp?msg=notloggedin");
		}
%>