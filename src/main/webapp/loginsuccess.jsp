<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="in.ac.gvpce.bean.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>You have logined successfully</h1>
  <h2>Details : <% Student s=(Student)request.getAttribute("obj"); %></h2>
  <h2><% s.getUsername(); %></h2>
 </div>
</body>
</html>