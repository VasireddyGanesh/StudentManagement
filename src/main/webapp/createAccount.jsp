<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<title>Student Management | Register</title>
		<link rel="stylesheet" href="createAccount.css" type="text/css"/>
</head>
<body>
	<div class="main">
	    	<p class="sign" align="center">Sign Up</p>
	    	<form class="form1" action="<%=request.getContextPath()%>/register" method="post" >
		    	<input class="un " type="text" align="center" placeholder="firstname" name="firstname"/>
		    	<input class="un " type="text" align="center" placeholder="lastname" name="lastname"/>
		      	<input class="un " type="text" align="center" placeholder="Username" name="username"/>
		      	<input class="pass" type="password" align="center" placeholder="Password" name="password"/>
				<input class="un " type="tel" align="center" placeholder="phone number" name="contact"/>
<!--				<label for="cars" class="un" align="center">Choose a car:</label>  -->
				  <select id="department" name="department" class="un">
				    <option value="CSE">CSE</option>
				    <option value="IT">IT</option>
				    <option value="ECE">ECE</option>
				    <option value="EEE">EEE</option>
				    <option value="MECH">MECH</option>
				    <option value="CIVIL">CIVIL</option>
				  </select>
	      		<input type="submit" value="Sign Up" class="submit" align="center"/>
	      		<p class="forgot" align="center">Already had account ? <a href="index.jsp">Login</a></p>
	      	</form>
    	</div>
</body>
</html>