<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>User | Home</title>
    <link rel="stylesheet" href="css\styleadminhome.css">
    <link rel="icon" href="images/favicon.png">
</head>

<body style="background-image: url('images/INDEX.jpg')">
    <header>
        <div class="logo">
            <img src="images/applogo.png" alt="Logo">
        </div>
        <h1>USER HOME PAGE</h1>
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
		    <form action="user_my_profile_page" method="post">
		    	<input type="hidden" name="email" value="${byEmail.email}">
		        <input type="submit" value="MY PROFILE">
		    </form><br>
		    
		    <form action="user_donate_organ_page" method="post">
		    	<input type="hidden" name="email" value="${byEmail.email}">
		        <input type="submit" value="DONATE ORGAN">
		    </form><br>
		    <form action="user_request_organ_pagee" method="post">
		    	<input type="hidden" name="email" value="${byEmail.email}">
		        <input type="submit" value="REQUEST ORGAN">
		    </form><br>
		 
		    <form action="user_donate_blood_page" method="post">
		    	<input type="hidden" name="email" value="${byEmail.email}">
		        <input type="submit" value="DONATE BLOOD">
		    </form><br>
		    <form action="user_request_blood_page" method="post">
		    	<input type="hidden" name="email" value="${byEmail.email}">
		        <input type="submit" value="REQUEST BLOOD">
		    </form><br>
		   
		    <form action="user_donation_page" method="post">
		        <input type="submit" value="MY DONATION">
		    </form><br>
		    <form action="user_my_statuss_pagee" method="post">
		        <input type="submit" value="MY STATUS">
		    </form><br>
		    </div>   
		    </body>
		    </html>