<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>User | New Password</title>
</head>

<body>
    <hr>
    <h3 align="center" style="color:Red">${error}</h3>
    <p align="center">
    	<h2 align="center">User | Forget Password</h2><hr>
    		<p align="center">
    			<form action="user_new_password" method="post">
		    		<input type="email" placeholder="Enter email id" name="email" value="${emaill}"
		                style="width: 30%;padding: 12px 20px; margin: 8px 0;"><br>
		                
		          	<input id="password" type="password" placeholder="Enter New password" name="password"
		                style="width: 30%;padding: 12px 20px;margin: 8px 0;"><br>
		                
		         	<input type="submit" value="REGISTER" 
		            	style="width: 200px;padding: 15px;border-radius: 12px;"><br>
	    		</form>
    		</p>
</body>

</html>