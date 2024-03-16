<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Admin | Add | Location</title>
        </head>

        <body>
        <h2 align="center">Admin Add Location Table</h2>
        <hr>
        <p align="center">
        	<a href="create_hospital">Create Hospital ! !</a>
        </p><br>
		       
        <table align="center" border="1">
            <tr>
                <th>Hospital Id</th>
                <th>Email Name</th>
                <th>Location</th>
            </tr>
            
            
            <c:forEach var="list" items="${list}">
                <tr>
                    <td>${list.hospitalId}</td>
                    <td>${list.hospitalName}</td>
                    <td>${list.location}</td>
                </tr>
            </c:forEach>
        </table>
		</body>
        </html>