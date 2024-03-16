<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Admin | View Doctor Details</title>
             <link rel="stylesheet" href="css\table.css">
   			 <link rel="icon" href="images/favicon.png">
        </head>

        <body style="background-image: url('images/TABLE_05.jpg')">
        <h2 align="center">ADMIN VIEW ALL DOCTOR TABLE</h2>
        
        <br>
        <table align="center" border="2">
            <tr>
                <th>Hospital Location</th>
                <th>Email Id</th>
                <th>Mobile No</th>
                <th>Pincode</th>
                <th>Address</th>
            </tr>
            
            
            <c:forEach var="list" items="${list}">
                <tr>
                    <td>${list.hospital}</td>
                    <td>${list.email}</td>
                    <td>${list.mobile}</td>
                    <td>${list.pincode}</td>
                    <td>${list.address}</td>
                </tr>
            </c:forEach>
        </table>
		</body>
        </html>