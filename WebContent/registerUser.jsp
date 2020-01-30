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
	String userid=request.getParameter("usernamesignup"); 
	String email=request.getParameter("emailsignup");
	String password=request.getParameter("passwordsignup");
		
// 	out.println("Username " + username);
// 	out.println("Password " + password);

	UserBean ub = new UserBean();
	ub.setUserid(userid);
	ub.setEmail(email);
	ub.setPassword(password);

	UserDao udao = new UserDao();
	udao.connect();
	int result = udao.saveSignUpDetail(ub);
	
	if(result == 1) 
	{ 
		session.setAttribute("result","New User Successfully Registered!"); 
		response.sendRedirect("register.jsp#toregister"); 
	} 
	else 
	{
		session.setAttribute("result","New User Registration failed!"); 
		response.sendRedirect("register.jsp#toregister");
	}
	
	
		
%>


</body>
</html>