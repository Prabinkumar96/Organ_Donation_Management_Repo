<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Request Organ Details</title>
</head>
<body style="background-image: url('images/TABLE_01.jpg')">
	<h2 align="center">User | Request Organ Table</h2>
        <hr>
        <table align="center" border="1">
            <tr>
            	<th>Request Organ Id</th>
                <th>exceptedDate</th>
                <th>Name</th>
                <th>Age</th>
                <th>Organ Type</th>
                <th>Address</th>
                <th>Mobile</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Organ Status</th>
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