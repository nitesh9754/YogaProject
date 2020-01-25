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
	String firstName=request.getParameter("firstname"); 
	String lastName=request.getParameter("lastname");
	String suitableTime=request.getParameter("suitabletime");
	String mobilePhone=request.getParameter("phone"); 
	String address=request.getParameter("address");
	String comment=request.getParameter("comment");
		
 	System.out.println("firstName " + firstName);
 	System.out.println("lastName " + lastName);
 	System.out.println("suitableTime " + suitableTime);
 	System.out.println("mobilePhone " + mobilePhone);
 	System.out.println("address " + address);
 	System.out.println("comment " + comment);

	UserBean ub = new UserBean();
// 	ub.setUserid(userid);
// 	ub.setEmail(email);
// 	ub.setPassword(password);

// 	UserDao udao = new UserDao();
// 	udao.connect();
// 	int result = udao.saveUser(ub);
	
// 	if(result == 1) 
// 	{ 
// 		session.setAttribute("result","New User Successfully Registered!"); 
// 		response.sendRedirect("register.jsp#toregister"); 
// 	} 
// 	else 
// 	{
// 		session.setAttribute("result","New User Registration failed!"); 
// 		response.sendRedirect("register.jsp#toregister");
// 	}
	
	
		
%>


</body>
</html>