<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctor | Login</title>
     <link rel="stylesheet" href="css\style3.css">
    <link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/DOCTOR.jpg')">
<div class="registration-form">
	<h2>DOCTOR LOGIN</h2>
	    <form action="doctor_login" method="post">
	     		<h3>Enter Email Id :</h3>
	            <input type="email" placeholder="Enter email id" name="email"><br>
	            <h3>Enter Password :</h3>
	            <input id="password" type="password" placeholder="Enter password" name="password"><br>
	            <p align="center">
	        <button type="submit">LOGIN</button> 
	   </p>
	    </form>
	    </div>
</body>

</html>