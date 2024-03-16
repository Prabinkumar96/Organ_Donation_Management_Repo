<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin | Login</title>
     <link rel="stylesheet" href="css\style3.css">
    <link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/ADMIN.jpg')">
    <div class="registration-form">
	<h2>ADMIN LOGIN</h2>
	    <form action="admin_login" method="post">
	    <h3>Enter Email Id :</h3>
	    <input type="email" placeholder="Enter email id" name="email"><br>
	<h3>Enter Password :</h3>
	            <input id="password" type="password" placeholder="Enter Password" size="50"
	                    pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
	                    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
	                    name="password" required ><br>
	                    
	  <p align="center">
	        <button type="submit">LOGIN</button> 
	   </p>
	    </form>
    </div>
</body>

</html>