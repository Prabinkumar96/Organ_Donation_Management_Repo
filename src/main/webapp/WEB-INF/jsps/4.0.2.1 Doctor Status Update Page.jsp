<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Request Organ</title>
</head>
<body>
	<h2 align="center">User | Request Organ</h2>
	<form action="user_request_organ" method="post">
		        <p align="center">
		        	
		            <input type="date" placeholder="Expected date" name="excepted_date" required
		                style="width: 30%;
		                                                                                                    padding: 12px 20px;
		                                                                                                    margin: 8px 0;"><br>
		
		            <input type="text" placeholder="Enter Name" name="user_name" required
		                style="width: 30%;
		                                                                                                            padding: 12px 20px;
		                                                                                                            margin: 8px 0;"><br>
		            <input type="number" placeholder="Enter Age" name="user_age" required
		                style="width: 30%;
		                                                                                                            padding: 12px 20px;
		                                                                                                            margin: 8px 0;"><br>
		         	<label for="user_organ_name">Organ Type</label>
				 	<select id="user_organ_name" name="organ_type" required>
					    <option value="heart">Heart</option>
					    <option value="eye">Eye</option>
					    <option value="nose">Nose</option>
					    <option value="leg">Leg</option>
					</select><br>
		                                                                                                            
		        	<input type="text" placeholder="Enter Address" name="user_address" required
		                style="width: 30%;
		                                                                                                    padding: 12px 20px;
		                                                                                                    margin: 8px 0;"><br>
		
		            <input type="tel" placeholder="Enter Mobile Number" name="user_mobile" required
		                style="width: 30%;
		                                                                                                            padding: 12px 20px;
		                                                                                                            margin: 8px 0;"><br>
		          Select gender:
		          <input type="radio" id="gen" name="gender" value="male"/>Male
			
			      <input type="radio" id="gen" name="gender" value="female"/>Female
			
			      <input type="radio" id="gen" name="gender" value="other"/>Other
			      
			      <input type="text" placeholder=" " name="assigned">
		                                                                                                            
		            <br><br><input type="submit" value="REQUEST ORGAN" style="width: 200px;
		                                                    padding: 15px;
		                                                    border-radius: 12px;"><br>
		        </p>
		    </form>
</body>
</html>