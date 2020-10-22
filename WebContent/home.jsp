<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>
<%@ include file="CacheControl.jsp" %>
<%
	if(user != null && user.getUserId()>0){
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	
	<h3 align="right" ><a href="logout.jsp" >logout</a></h3>
	
	<h1>My MVC Assignment</h1>
	<h2>Welcome <%= user.getFullName() %></h2>
	
</body>
</html>
<%
	}else{
		response.sendRedirect("login.jsp");
	}
%>