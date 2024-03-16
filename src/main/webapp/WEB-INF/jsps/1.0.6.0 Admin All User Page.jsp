<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Admin | All Users Details</title>
            <link rel="stylesheet" href="css\table.css">
  		    <link rel="icon" href="images/favicon.png">
        </head>

        <body style="background-image: url('images/TABLE_06.jpg')">
       <h2 align="center">ADMIN VIEW ALL USERS TABLE</h2>
        
        <br>
        <table align="center" border="2">
            <tr>
                <th>Aadhaar Number</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Mobile Number</th>
                <th>Date Of Birth</th>
                <th>Address</th>
            </tr>
            
            
            <c:forEach var="list" items="${list}">
                <tr>
                    <td>${list.aadhaar_number}</td>
                    <td>${list.user_name}</td>
                    <td>${list.email}</td>
                    <td>${list.password}</td>
                    <td>${list.mobile_number}</td>
                    <td>${list.date_of_birth}</td>
                    <td>${list.address}</td>
                </tr>
            </c:forEach>
        </table>
		</body>
        </html>