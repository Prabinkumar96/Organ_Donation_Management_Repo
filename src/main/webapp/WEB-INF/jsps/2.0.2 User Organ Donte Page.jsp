<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Organ Donate</title>
<link rel="stylesheet" href="css\style2_admin_adddoctor.css">
<link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/DONORGAN.jpg')">
	<div class="registration-form">
	<h2>USER ORGAN DONATION PAGE</h2>
	<form action="user_donate_organ" method="post">
					<label for="name"> Enter Patient Name :</label>
		            <input type="text" placeholder="Enter Patient Name" name="name" required><br>
		            <label for="age"> Enter Patient Age :</label>
		            <input type="text" placeholder="Enter Patient Age" name="age" required><br>
		            <label for="gender"> Choose Gender:</label>
		          	<select name="gender" required>
				 		<option value="">- Select Gender -</option>
				 		<option value="MALE">MALE</option>
					    <option value="FEMALE">FEMALE</option>
					    <option value="OTHER">OTHER</option>
					</select><br>
				     <label for="organType"> Choose Organ:</label>
				 	<select id="patient_organ_name" name="organType" required>
				 		<option value="">- Select Organ -</option>
				 		<option value="KIDNEY">KIDNEY</option>
					    <option value="LIVER">LIVER</option>
					    <option value="LUNGS">LUNGS</option>
					    <option value="HEART">HEART</option>
					    <option value="PANCREAS">PANCREAS</option>
					    <option value="INTESTINES">INTESTINES</option>
					    <option value="EYE">EYE</option>
					</select><br>
		             <label for="address"> Enter Patient Address :</label>                                                                                              
		        	<input type="text" placeholder="Enter Patient Address" name="address" required><br>
	   				<label for="mobile"> Enter Mobile number :</label> 
		            <input type="tel" placeholder="Enter Patient Mobile Number" name="mobile" required><br>
		             <label for="email"> Enter Email Id :</label>   
		         	<input type="email" placeholder="Enter email id" name="email" required><br>
	                
		           	<p align="center">
	      		  <button type="submit">DONATE ORGAN</button> 
	   			 </p>
		    </form>
		    </div>
</body>
</html>