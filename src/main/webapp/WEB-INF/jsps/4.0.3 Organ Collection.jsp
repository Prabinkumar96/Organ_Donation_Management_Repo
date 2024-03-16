<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor | Organ Collection Details</title>
    <link rel="stylesheet" href="css\table.css">
    <link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/TABLE_02.jpg')">
	<h2 align="center">DOCTOR ORGAN COLLECTION TABLE</h2>
        <hr>
        <br>
        <table align="center" border="2">
            <tr>
            	<th>Donate Id</th>
                <th>Patient Name</th>
                <th>Patient Age</th>
                <th>Patient Gender</th>
                <th>Patient Organ Type</th>
                <th>Patient Address</th>
                <th>Patient Mobile</th>
                <th>Patient Email</th>
            </tr>
            
            
            <c:forEach var="list" items="${list}">
                <tr>
                	<td>${list.id}</td>
                    <td>${list.name}</td>
                    <td>${list.age}</td>
                    <td>${list.gender}</td>
                    <td>${list.organType}</td>
                    <td>${list.address}</td>
                    <td>${list.mobile}</td>
                    <td>${list.email}</td>
                </tr>
            </c:forEach>
        </table>
</body>
</html>