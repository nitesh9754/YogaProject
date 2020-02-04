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
	
	UserBean ub = new UserBean();
	ub.setUserid(session.getAttribute("username").toString());
	ub.setFirstname(request.getParameter("firstname"));
	ub.setLastname(request.getParameter("lastname"));
	ub.setMobile(request.getParameter("phone"));
	ub.setAddress(request.getParameter("address"));
	ub.setComment(request.getParameter("comment"));
	ub.setSuitableTime(request.getParameter("suitabletime"));
	ub.setGender(request.getParameter("gender"));
	ub.setDob(request.getParameter("dob"));
	

	UserDao udao = new UserDao();
	udao.connect();
	int result = udao.addCompleteUserDetail(ub);
	
	if(result == 1) 
	{ 
		session.setAttribute("result","User Successfully Updated!"); 
		response.sendRedirect("newUserForm.jsp?result=1"); 
	} 
	else 
	{
		session.setAttribute("result","User Update failed!"); 
		response.sendRedirect("newUserForm.jsp?result=0");
	}
	
	
		
%>


</body>
</html>