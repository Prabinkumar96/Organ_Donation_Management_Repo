<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About | Page</title>
   <link rel="icon" href="images/favicon.png">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-size:100%;
      background-position:middle;
      background-repeat: no-repeat;
      background-size: cover;
     
    }

    header {
     
      color:  #210202;
      padding: 20px;
      text-align: center;
      position:relative;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
      margin: 0;
      font-size: 30px;
    }

    p {
      margin: 20px 0;
      line-height: 1.6;
    }

    .container {
      width: 500px;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      position: absolute;
      top: 65%;
      right: 150px; /* Adjust this value to set the distance from the right side */
      transform: translateY(-50%);
    }
    nav {
    position: absolute;
    top: 30px;
    right: 20px;
  }
  
  nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
  }
  
  nav li {
    margin-right: 20px;
  }
  
  nav a {
    text-decoration: none;
    color: #210202;
    font-size: 20px;
  }
  .logo{
    position: absolute;
    top: 8px;
    left: 10px;
    width: 10px;
    height: auto;
  </style>
</head>

<body style="background-image: url('images/ABOUT.jpg')">
  <header>
    <h1>ABOUT ORGAN DONATION SYSTEM</h1>
            
        <div class="logo">
            <img src="images/applogo.png" alt="Logo">
        </div>
    
            <nav>
            <ul>
                <li><a href="home"><b>Home</b></a></li>
                <li><a href="about"><b>About</a></b></li>
                <li><a href="contact"><b>Contact</b></a></li>
            </ul>
        </nav>
        
  </header>
  
  <div class="container">
    <h2>Welcome to Organ Donation App</h2>
    <p>
      Organ Donation App is a revolutionary platform aimed at connecting organ donors with individuals in need of organ transplants.
    </p>
    
    <h3>Our Mission</h3>
    <p>
      Our mission is to increase the availability of organs for transplantation and save countless lives. Through our app, we provide a user-friendly and secure platform for organ donors to register, connect with potential recipients, and facilitate the organ donation process.
    </p>
    
    <h3>Why Choose Organ Donation App?</h3>
    <p>
      <ul>
        <li>Efficient and streamlined organ matching process</li>
        <li>Ensured privacy and security of donor and recipient information</li>
        <li>User-friendly interface for easy navigation</li>
        <li>24/7 support from our dedicated team</li>
        <li>Ability to make a life-saving difference</li>
      </ul>
    </p>
  </div>
</body>

</html>
