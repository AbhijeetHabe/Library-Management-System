<%@page import="com.librarymanagement.dao.UserDao"%>
<%@page import="com.librarymanagement.daoImpl.UserDaoImpl"%>

<jsp:useBean class="com.librarymanagement.pojo.User" id="usr"
scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="usr"/>

<% 
  UserDao daoImpl = new UserDaoImpl();
  if(daoImpl.addNewUser(usr)) {
	  response.sendRedirect("login.jsp?msg=regsuccess");
 }
  else {
	  response.sendRedirect("register.jsp?msg=regerror");
  }
%>