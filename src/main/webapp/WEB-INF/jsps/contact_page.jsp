<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact | Page</title>
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

<body style="background-image: url('images/CONTACT.jpg')">
  <header>
    <h1>ORGAN DONATION SYSTEM</h1>
            
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
    <h3>Contact Us</h3>
    <p>
      If you have any questions, feedback, or suggestions, please don't hesitate to reach out to us. We value your input and are committed to continuously improving our platform.
      <br><br>
      Prabin Kumar Mulia
      <br>
      Email: prabininfo@gmail.com
      <br>
      Phone: 9937508001
            <br><br>
     Gyanendranath Adhikari
      <br>
      Email: Gyanainfo@gmail.com
      <br>
      Phone: 9937508002
            <br><br>
      Suryapratap Bhanja
      <br>
      Email: suryainfo@gmail.com
      <br>
      Phone: 9937508003
    </p>
  </div>
</body>

</html>
