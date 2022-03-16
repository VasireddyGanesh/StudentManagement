<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="in.ac.gvpce.bean.*"%>
<%@page import="in.ac.gvpce.servlet.*"%>
<%@page import="in.ac.gvpce.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Students</title>
<link rel="stylesheet" href="results.css">
</head>
<body>
	<div class="container">
		<h2>List Of Students</h2>
		<table class="responsive-table">
			<thead class="table-header">
			<tr>
				<th style="padding-right:50px; padding-left:50px"><div class="col col-1">Student ID</div></th>
				<th><div class="col col-2">Student Name</div></th>
				<th><div class="col col-3">Contact</div></th>
				<th style="padding-right:50px; padding-left:50px"><div class="col col-4">Department</div></th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="user">
				<tr class="table-row">
					<td style="text-align:center;"><div class="col col-1" data-label="Student ID"><c:out value="${user.getId()}"/></div></td>
					<td style="padding-right:50px; padding-left:50px"><div class="col col-2" data-label="Student Name"><c:out value="${user.getFirstName()}  ${user.getLastName()}" /></div></td>
					<td style="padding-right:50px; padding-left:50px"><div class="col col-3" data-label="Contact"><c:out value="${user.getContact()}" /></div></td>
					<td style="text-align:center;"><div class="col col-4" data-label="Department"><c:out value="${user.getDepartment()}"/></div></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>