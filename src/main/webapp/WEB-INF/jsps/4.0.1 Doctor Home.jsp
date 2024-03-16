<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Doctor | Home</title>
    <link rel="stylesheet" href="css\doctor_home.css">
    <link rel="icon" href="images/favicon.png">
</head>

<body style="background-image: url('images/INDEX.jpg')">
    <header>
        <div class="logo">
            <img src="images/applogo.png" alt="Logo">
        </div>
        <h1>DOCTOR HOME PAGE</h1>
        <nav>
            <ul>
                <li><a href="home"><b>Home</b></a></li>
                <li><a href="about"><b>About</a></b></li>
                <li><a href="contact"><b>Contact</b></a></li>
                <li><a href="home"><b>Logout</b></a></li>
            </ul>
        </nav>
    </header>

		<div class="form-container">
	    <form action="doctor_organ_requests" method="post">
	        <input type="submit" value="NEW ORGAN REQUEST">
	    </form><br>
	    <form action="doctor_organ_collections" method="post">
	        <input type="submit" value="ORGAN COLLECTION">
	    </form><br>
	    
	    
	    <form action="doctor_blood_requests" method="post">
	        <input type="submit" value="NEW BLOOD REQUEST">
	    </form><br>
	    <form action="doctor_blood_collections" method="post">
	        <input type="submit" value="BLOOD COLLECTION">
	    </form><br>
</div>
</body>

</html>