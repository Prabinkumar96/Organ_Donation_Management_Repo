<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor | New Organ Request</title>
    <link rel="stylesheet" href="css\table.css">
    <link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/TABLE_01.jpg')">
	<h2 align="center">DOCTOR ORGAN REQUEST TABLE</h2>
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
                    <td>
                    	${list.status}
                    	<form action="update_organ_status" method="post">
                    		<input type="hidden" name="id" value="${list.id}">
                    		<input type="hidden" name="exceptedDate" value="${list.exceptedDate}">
                    		<input type="hidden" name="name" value="${list.name}">
                    		<input type="hidden" name="age" value="${list.age}">
                    		<input type="hidden" name="organType" value="${list.organType}">
                    		<input type="hidden" name="address" value="${list.address}">
                    		<input type="hidden" name="mobile" value="${list.mobile}">
                    		<input type="hidden" name="email" value="${list.email}">
                    		<input type="hidden" name="gender" value="${list.gender}">
							 	<select name="status" required>
							 		<option value="">- Select -</option>
								    <option value="Pending">Pending</option>
								    <option value="Available">Available</option>
								    <option value="Unavailable">Unavailable</option>
								    <option value="Delivered">Delivered</option>
								</select>
							<br><input type="submit" value="Update">
                    	</form>
                    </td>
                </tr>
            </c:forEach>
        </table>
</body>
</html>