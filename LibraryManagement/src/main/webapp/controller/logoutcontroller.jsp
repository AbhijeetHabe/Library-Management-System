<%
  if(!session.isNew() && session.getAttribute("USERNAME") != null) {
	  session.setAttribute("USERNAME", null);
	  session.invalidate();
	  response.sendRedirect("login.jsp?msg=logoutsuccess");
  }
  else {
	  response.sendRedirect("login.jsp?msg=notloggedin");
  }
%>