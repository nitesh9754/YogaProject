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
	ub.setUserid(session.getAttribute("username").toString());
	ub.setFirstname(request.getParameter("firstname"));
	ub.setLastname(request.getParameter("lastname"));
	ub.setMobile(request.getParameter("phone"));
	ub.setAddress(request.getParameter("address"));
	ub.setComment(request.getParameter("comment"));
	ub.setSuitableTime(request.getParameter("suitabletime"));
	

	UserDao udao = new UserDao();
	udao.connect();
	int result = udao.addCompleteUserDetail(ub);
	
	if(result == 1) 
	{ 
		session.setAttribute("result","User Successfully Updated!"); 
		response.sendRedirect("newUserForm.jsp"); 
	} 
	else 
	{
		session.setAttribute("result","User Update failed!"); 
		response.sendRedirect("newUserForm.jsp");
	}
	
	
		
%>


</body>
</html>