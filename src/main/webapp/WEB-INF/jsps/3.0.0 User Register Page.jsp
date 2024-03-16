<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User | Register</title>
    <link rel="stylesheet" href="css\style2.css">
	<link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/REGUSER.jpg')">
     <div class="registration-form">
    <form action="user_created" method="post">
  
    
     <h2>NEW USER REGISTRATION</h2>
    <br>
    <label for="aadhaar_number">Enter Aadhaar Number :</label>
	<input id="aadhaar_number" type="tel" placeholder="E.g. 1234-5678-8910" size="50"
	                    pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}" name="aadhaar_number" required>
	<label for="uname">Enter Name :</label>
	<input id="uname" type="text" placeholder="Enter Name" size="50" name="user_name" required>
	<label for="email"> Enter email :</label>
	<input id="email" type="email" placeholder="Enter email" size="50" name="email" required>
	<label for="password">Enter Password :</label>
	<input id="password" type="password" placeholder="Enter Password" size="50"
	                    pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
	                    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
	                    name="password" required>
	<label for="mobile_number">Enter Mobile Number :</label>
	<input id="mobile_number" type="tel" placeholder="Enter Mobile Number" size="50" pattern="[0-9]{10}"
	                    name="mobile_number" required>
	<label for="date_of_birth"> Enter Date of Birth :</label>
	<input id="date_of_birth" type="date" placeholder=" Enter Date of Birth" size="50" name="date_of_birth"
	                    required>
	<label for="address"> Enter Address :</label>
	<textarea id="address" type="text" rows="4" cols="52.5" name="address" required></textarea>
	<p align="center">
	        <button type="submit">Register</button> 
	    </p>
	   
    </form>
    </div>
   
</body>

</html>