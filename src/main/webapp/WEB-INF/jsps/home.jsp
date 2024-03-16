<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home | Page</title>
    <link rel="stylesheet" href="css\style.css">
    <link rel="icon" href="images/favicon.png">
</head>

<body style="background-image: url('images/INDEX.jpg')">
    <header>
        <div class="logo">
            <img src="images/applogo.png" alt="Logo">
        </div>
        <h1>BE A CHAMPION , BE AN ORGAN DONOR</h1>
        <nav>
            <ul>
                <li><a href="home"><b>Home</b></a></li>
                <li><a href="about"><b>About</a></b></li>
                <li><a href="contact"><b>Contact</b></a></li>
            </ul>
        </nav>
    </header>

    <div class="message-container">
        
    </div>

    <div class="form-container">
        <form action="admin_login_page" method="post">
            <input type="submit" value="ADMIN LOGIN">
        </form><br>


        <form action="user_login_page" method="post">
            <input type="submit" value="USER LOGIN">
        </form><br>


        <form action="user_reg" method="post">
            <input type="submit" value="USER REGISTER">
        </form><br>

        <form action="doctor_login_page" method="post">
            <input type="submit" value="DOCTOR LOGIN">
        </form>
    </div>
</body>

</html>