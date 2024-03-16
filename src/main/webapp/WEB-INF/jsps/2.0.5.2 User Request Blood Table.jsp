<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Request Blood Details</title>
    <link rel="stylesheet" href="css\table.css">
    <link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/TABLE_03.jpg')">
	<h2 align="center">USER STATUS FOR REQUEST BLOOD</h2>
        <hr>
        <br>
        <table align="center" border="2">
            <tr>
            	<th>Request Blood Id</th>
                <th>Blood Group</th>
                <th>Name</th>
                <th>Age</th>
                <th>Address</th>
                <th>Mobile</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Blood Status</th>
            </tr>
            
            
            <c:forEach var="list" items="${list}">
                <tr>
                	<td>${list.id}</td>
                    <td>${list.bloodGroup}</td>
                    <td>${list.name}</td>
                    <td>${list.age}</td>
                    <td>${list.address}</td>
                    <td>${list.mobile}</td>
                    <td>${list.email}</td>
                    <td>${list.gender}</td>
                    <td>${list.status}</td>
                </tr>
            </c:forEach>
        </table>
</body>
</html>