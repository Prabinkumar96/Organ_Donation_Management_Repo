<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | My Profile</title>
<link rel="stylesheet" href="css\profile.css">
<link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/PROFILE.jpg')">
	<div class="registration-form">
	<button><h2>MY PROFILE</h2></button>
		<p align="center">
			Aadhaar No	:-	${byEmail.aadhaar_number}<br>
			Name		:-	${byEmail.user_name}<br>
			Email id	:-	${byEmail.email}<br>
			Mobile no	:-	${byEmail.mobile_number}<br>
			Address		:-	${byEmail.address}<br>
		</p>
		</div>
</body>
</html>