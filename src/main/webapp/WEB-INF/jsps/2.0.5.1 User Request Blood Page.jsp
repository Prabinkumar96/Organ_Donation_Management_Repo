<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Request Blood</title>
<link rel="stylesheet" href="css\style2_admin_adddoctor.css">
<link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/REQBLOOD.jpg')">
<div class="registration-form">
	<h2>USER REQUEST BLOOD PAGE</h2>
	<form action="user_blood_request" method="post">   
				<label for="bloodGroup"> Choose Blood Group :</label>
				<select id="bloodGroup" name="bloodGroup" required>
					    <option value="">Select Blood Group</option>
					    <option value="A+">A+</option>
					    <option value="A-">A-</option>
					    <option value="B+">B+</option>
					    <option value="B-">B-</option>
					    <option value="AB+">AB+</option>
					    <option value="AB-">AB-</option>
					    <option value="O+">O+</option>
					    <option value="O-">O-</option>
					</select><br>
			      
			      <label for="name"> Enter Name :</label>
		            <input type="text" placeholder="Enter Name" name="name" required><br>
		            
		            <label for="age"> Enter Age :</label>
		            <input type="number" placeholder="Enter Age" name="age" required><br>
		         	 
		         	 <label for="address"> Enter Address :</label>                                                                                             
		        	<input type="text" placeholder="Enter Address" name="address" required><br>
					
					<label for="mobile"> Enter Mobile Number :</label>
		            <input type="tel" placeholder="Enter Mobile Number" name="mobile" required><br>
		            
		            <label for="email"> Enter Email Id :</label>
		            <input type="email" placeholder="Enter Email Id" name="email"><br>
		          
		          <label for="gender"> Choose Gender :</label>
		          <select name="gender" required>
				 		<option value="">Select Gender</option>
				 		<option value="MALE">MALE</option>
					    <option value="FEMALE">FEMALE</option>
					    <option value="OTHER">OTHER</option>
					</select><br>
		                                                                                                            
		  		<p align="center">
	      		  <button type="submit">REQUEST BLOOD</button> 
	   			 </p>
		    </form>
		    </div>
</body>
</html>