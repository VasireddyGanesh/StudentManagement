<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<title>Student Management | Register</title>
		<link rel="stylesheet" href="createAccount.css" type="text/css"/>
		<script type="text/javascript">
		
		function fun(){
			if(document.registerform.firstname.value == ""){
				alert("Please Enter First Name");
				return false;
			}
			if(document.registerform.lastname.value == ""){
				alert("Please Enter Last Name");
				return false;
			}
			if(document.registerform.username.value == ""){
				alert("Please Enter User Name");
				return false;
			}
			if(document.registerform.password.value == ""){
				alert("Please Enter Password");
				return false;
			}
			if(document.registerform.contact.value == ""){
				alert("Please Enter Contact Number");
				return false;
			}
			return true;
		}
		
		</script>
</head>
<body>
	<div class="main">
	    	<p class="sign" align="center">Sign Up</p>
	    	<form class="form1" name="registerform" action="<%=request.getContextPath()%>/register" method="post" onsubmit="return fun();">
		    	<input class="un " type="text" align="center" placeholder="firstname" name="firstname" value=""/>
		    	<input class="un " type="text" align="center" placeholder="lastname" name="lastname" value=""/>
		      	<input class="un " type="text" align="center" placeholder="Username" name="username" value=""/>
		      	<input class="pass" type="password" align="center" placeholder="Password" name="password"  value=""/>
				<input class="un " type="tel" align="center" placeholder="phone number" name="contact" value=""/>
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