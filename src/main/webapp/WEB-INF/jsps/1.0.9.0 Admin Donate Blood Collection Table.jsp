<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Admin | Blood Collection Details</title>
   			 <link rel="stylesheet" href="css\table.css">
    			<link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/TABLE_04.jpg')">
	<h2 align="center">ADMIN BLOOD COLLECTION TABLE</h2>
        
        <br>
        <table align="center" border="2">
            <tr>
            	<th>Donate Blood Id</th>
                <th>Donate Date</th>
                <th>Hospital Name</th>
                <th>Blood Group</th>
                <th>Name</th>
                <th>Age</th>
                <th>Address</th>
                <th>Mobile</th>
                <th>Email</th>
                <th>Delete</th>
            </tr>
            
            
            <c:forEach var="list" items="${list}">
                <tr>
                	<td>${list.id}</td>
                    <td>${list.donateDate}</td>
                    <td>${list.hospitalName}</td>
                    <td>${list.bloodGroup}</td>
                    <td>${list.name}</td>
                    <td>${list.age}</td>
                    <td>${list.address}</td>
                    <td>${list.mobile}</td>
                    <td>${list.email}</td>
                    <td><a href="delete_donte_bloodd?id=${list.id}">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
</body>
</html>