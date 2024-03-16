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
	        <form action="create_organ_page" method="post">
		    	<table align="center">
			        <tr>
			            <td>
			                <hr>
			            </td>
			            <td>
			                <hr>
			            </td>
			        </tr>
			        <tr>
			            <td>
			                <label for="organ_name"> Organ Name  :~</label>
			
			            </td>
			            <td>
			                <select id="organ_name" name="organ_name" required="required">
							    <option value="heart">Heart</option>
							    <option value="eye">Eye</option>
							    <option value=""></option>
							    <option value=""></option>
							</select>
			            </td>
			        </tr>
			        <tr>
			            <td>
			                <label for="organ_A/N"> Organ Status  :~</label>
			
			            </td>
			            <td>
			                <input id="organ_A_N" type="radio" name="organ_A_N" value="Available"> Available
							<input id="organ_A_N" type="radio" name="organ_A_N" value="Not Available"> Not Available
			            </td>
			        </tr>
			        <tr>
			            <td>
			                <hr>
			            </td>
			            <td>
			                <hr>
			            </td>
			        </tr>
			        <tr></tr>
		    	</table>
		    <p align="center">
		        <input type="submit" value="Create Ogran" style="width: 200px;
		                                                    padding: 15px;
		                                                    border-radius: 12px;">
		    </p>
	    </form>
</body>
</html>