<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Admin | Add | Status</title>
        </head>

        <body>
            
	        <h2 align="center">Admin Add Status</h2>
	        <hr>
	        <p align="center">
	        	<a href="create_organ">Create Organ ! !</a>
	        </p>
		    <table align="center" border="1">
		            <tr>
		                <th>SL</th>
		                <th>Organ Name</th>
		                <th>Status</th>
		            </tr>
		            
		            
		            <c:forEach var="list" items="${list}">
		                <tr>
		                    <td>${list.sl}</td>
		                    <td>${list.organ_name}</td>
		                    <td>${list.organ_A_N}</td>
		                </tr>
		            </c:forEach>
		        </table>
</body>
</html>