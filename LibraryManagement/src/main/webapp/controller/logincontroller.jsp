<%@page import="com.librarymanagement.daoImpl.UserDaoImpl"%>
<%@page import="com.librarymanagement.dao.UserDao"%>

<jsp:useBean class="com.librarymanagement.pojo.User" id="usr"
scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="usr"/>

<% 
  UserDao daoImpl = new UserDaoImpl();
  if(daoImpl.checkUserCredentials(usr)) {
	  session.setAttribute("USERNAME", usr.getUsername());
	  response.sendRedirect("home");
 }
  else {
	  response.sendRedirect("login.jsp?msg=loginerror");
  }
%>