<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="in.ac.gvpce.bean.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #F3EBF6;">
	<div align="center">
		<h1>You have logged in successfully</h1>
		<h2>Details :</h2>
		<h3>First Name: ${obj.getFirstName()}</h3>
		<h3>Last Name: ${obj.getLastName()}</h3>
		<h3>User Name: ${obj.getUsername()}</h3>
		<h3>Contact: ${obj.getContact()}</h3>
		<h3>Department: ${obj.getDepartment()}</h3>
	</div>
</body>
</html>