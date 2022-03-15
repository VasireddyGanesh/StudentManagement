<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student Management | Login</title>
		<link rel="stylesheet" href=style.css type="text/css"/>
		<script type="text/javascript">
			function fun(){
				if(document.loginform.username.value == ""){
					alert("Please Enter User Name");
					return false;
				}
				if(document.loginform.password.value == ""){
					alert("Please Enter Password");
					return false;
				}
				return true;
			}
		</script>
	</head>
	<body>
		<div class="main">
	    	<p class="sign" align="center">Sign in</p>
	    	<form class="form1" name="loginform" action="<%=request.getContextPath()%>/login" method="post" onsubmit="return fun();" >
		      	<input class="un " type="text" align="center" placeholder="Username" name="username" value="" />
		      	<input class="pass" type="password" align="center" placeholder="Password" name="password" value="" />
	      		<input type="submit" value="Sign in" class="submit" align="center"/>
	      		<p class="forgot" align="center">New User ? <a href="createAccount.jsp">Create Account</p>
	      	</form>
    	</div>
	</body>
</html>