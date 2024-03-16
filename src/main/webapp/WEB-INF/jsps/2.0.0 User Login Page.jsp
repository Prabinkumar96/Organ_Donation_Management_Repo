<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User | Login</title>
    <link rel="stylesheet" href="css\style4.css">
    <link rel="icon" href="images/favicon.png">
</head>

<body style="background-image: url('images/USER.jpg')">
<div class="registration-form">
	    <form action="user_login" method="post">
	        <h2 >USER LOGIN</h2>
	      <h3>Enter Email Id :</h3>
	     <input type="email" placeholder="Enter email id" name="email" required><br>
	     <h3>Enter Password :</h3>
	     <input id="password" type="password" placeholder="Enter password" name="password"><br>
	     <p align="center">
	        <button type="submit">LOGIN</button> 
	   </p>
	            	<p>
	            <a href="forget_user_password_page" style="font-size: larger;">Forget Password ?</a></p>
	    </form>
    </div>
</body>

</html>