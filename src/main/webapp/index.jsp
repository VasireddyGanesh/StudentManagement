<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student Management | Login</title>
		<link rel="stylesheet" href=style.css type="text/css"/>
	</head>
	<body>
		<div class="main">
	    	<p class="sign" align="center">Sign in</p>
	    	<form class="form1" action="<%=request.getContextPath()%>/login" method="post" >
		      	<input class="un " type="text" align="center" placeholder="Username" name="username"/>
		      	<input class="pass" type="password" align="center" placeholder="Password" name="password"/>
	      		<input type="submit" value="Sign in" class="submit" align="center"/>
	      		<p class="forgot" align="center">New User ? <a href="createAccount.jsp">Create Account</p>
	      	</form>
    	</div>
	</body>
</html>