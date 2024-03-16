<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin | Home</title>
    <link rel="stylesheet" href="css\styleadminhome.css">
    <link rel="icon" href="images/favicon.png">
</head>

<body style="background-image: url('images/INDEX.jpg')">
    <header>
        <div class="logo">
            <img src="images/applogo.png" alt="Logo">
        </div>
        <h1>ADMIN HOME PAGE</h1>
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
	    <form action="admin_organ_request" method="post">
	        <input type="submit" value="ORGAN REQUEST">
	    </form><br>
	    <form action="admin_organ_collection" method="post">
	        <input type="submit" value="ORGAN COLLECTION">
	    </form><br>
	    <form action="admin_add_doctor_page" method="post">
	        <input type="submit" value="ADD DOCTOR">
	    </form><br>
	    <form action="admin_view_doctor" method="post">
	        <input type="submit" value="VIEW DOCTOR">
	    </form><br>
	    
	    <!--
		    <form action="admin_add_location" method="post">
		        <input type="submit" value="ADD LOCATION">
		    </form><br>
	    -->
	    
	    <form action="admin_all_user" method="post">
	        <input type="submit" value="ALL USERS">
	    </form><br>
	    
	    <!--
	    	<form action="admin_add_status" method="post">
	        <input type="submit" value="ADD STATUS">
	    	</form><br>
	    -->
	    
	    <form action="admin_blood_request" method="post">
	        <input type="submit" value="BLOOD REQUEST">
	    </form><br>
	    <form action="admin_blood_collection" method="post">
	        <input type="submit" value="BLOOD COLLECTION">
	    </form><br>
	    </div>
    
</body>

</html>