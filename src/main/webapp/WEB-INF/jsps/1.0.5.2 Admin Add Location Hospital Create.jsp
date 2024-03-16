<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Admin | Add | Location</title>
        </head>

        <body>
	        <h2 align="center">Admin Add Hospital</h2>
	        <hr>
	        
	        <form action="create_hospital_page" method="post">
			        <p align="center">
			            <input type="text" placeholder="Enter Hospital Name" name="hospitalName"
			                style="width: 30%;padding: 12px 20px;margin: 8px 0;"><br>
			            <input type="text" placeholder="Enter Location" name="location"
			                style="width: 30%;padding: 12px 20px;margin: 8px 0;"><br>
			            <input type="submit" value="CREATE HOSPITAL" style="width: 200px;
			                                                    padding: 15px;
			                                                    border-radius: 12px;"><br>
			        </p>
			    </form>
		</body>
        </html>