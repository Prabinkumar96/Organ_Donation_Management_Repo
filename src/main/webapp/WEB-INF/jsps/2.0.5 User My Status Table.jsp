<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Request Organ Details</title>
    <link rel="stylesheet" href="css\table.css">
    <link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/TABLE_01.jpg')">
	<h2 align="center">USER STATUS FOR REQUEST ORGAN</h2>
        <hr>
        <br>
        <table align="center" border="2">
            <tr>
                <th>Request Organ Id</th>
                <th>Excepted Date</th>
                <th>User Name</th>
                <th>User Age</th>
                <th>Organ Type</th>
                <th>User Address</th>
                <th>User Mobile Number</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Status</th>
            </tr>
            
            
            <c:forEach var="list" items="${list}">
                <tr>
                    <td>${list.id}</td>
                    <td>${list.exceptedDate}</td>
                    <td>${list.name}</td>
                    <td>${list.age}</td>
                    <td>${list.organType}</td>
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