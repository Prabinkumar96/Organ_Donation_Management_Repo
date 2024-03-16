<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Request Organ</title>
<link rel="stylesheet" href="css\user_req_organ.css">
<link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/REQORGAN.jpg')">
<div class="registration-form">
	<h2>USER REQUEST ORGAN PAGE</h2>
	<form action="user_request_organ" method="post">
					<label for="exceptedDate"> Enter Expected Date :</label>
		            <input type="date" placeholder="Expected date" name="exceptedDate" required><br>
					<label for="name"> Enter Name :</label>
		            <input type="text" placeholder="Enter Name" name="name" required><br>
		            <label for="age"> Enter Age :</label>   
		            <input type="number" placeholder="Enter Age" name="age" required><br>
		            <label for="organType"> Choose Organ :</label>
				 	<select id="user_organ_name" name="organType" required><br>
				 		<option value="">- Select Organ -</option>
				 		<option value="KIDNEY">KIDNEY</option>
					    <option value="LIVER">LIVER</option>
					    <option value="LUNGS">LUNGS</option>
					    <option value="HEART">HEART</option>
					    <option value="PANCREAS">PANCREAS</option>
					    <option value="INTESTINES">INTESTINES</option>
					    <option value="EYE">EYE</option>
					</select><br>
		            <label for="address"> Enter Address :</label>                                                                                                
		        	<input type="text" placeholder="Enter Address" name="address" required><br>
					<label for="mobile"> Enter Mobile Number :</label> 
		            <input type="tel" placeholder="Enter Mobile Number" name="mobile" required><br>
		            <label for="email"> Enter Email Id :</label>    
		          	<input type="email" placeholder="Enter email id" name="email" required><br>
	               <label for="gender"> Choose Gender:</label>     
		          <select name="gender" required>
				 		<option value="">- Select Gender -</option>
				 		<option value="MALE">MALE</option>
					    <option value="FEMALE">FEMALE</option>
					    <option value="OTHER">OTHER</option>
					</select><br>
			        	<p align="center">
	      		  <button type="submit">REQUEST ORGAN</button> 
	   			 </p>
		    </form>
		    </div>
</body>
</html>