<%@page import="com.yoga.dao.UserDao"%>
<%@page import="com.yoga.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	String username=request.getParameter("username"); 
	String password=request.getParameter("password"); 
		
 	System.out.println("Username " + username);
// 	out.println("Password " + password);

	UserDao udao = new UserDao();
	udao.connect();
	
	boolean result = udao.getUserByUserId(username, password);
	
	System.out.println("result: "+result);
	
	if(result == true) 
	{ 
		session.setAttribute("username",username); 
		response.sendRedirect("newUserForm.jsp"); 
	} 
	else 
	{
		session.setAttribute("failure","Incorrect Username/Password");
		response.sendRedirect("login.jsp");
	}
	
	
		
%>


</body>
</html>