<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User | Donate Blood</title>
<link rel="stylesheet" href="css\user_donate_blood.css">
<link rel="icon" href="images/favicon.png">
</head>
<body style="background-image: url('images/DONBLOOD.jpg')">
<div class="registration-form">
	<h2>USER BLOOD DONATION PAGE</h2>
	<form action="user_donate_blood" method="post">
	<label for="donateDate"> Choose Date For Donation :</label>
<input type="date"  name="donateDate" required><br>

<label for="hospitalName"> Choose Hospital Name :</label>
<select id="hospital_name" name="hospitalName" required>
					    <option value="">Select Hospital Name</option>
					    <option value="S.C.B Medical College & Hospital, Cuttack">S.C.B Medical College & Hospital, Cuttack</option>
					    <option value="M.K.C.G Medical College & Hospital, Berhampur">M.K.C.G Medical College & Hospital, Berhampur</option>
					    <option value="V.S.S Medical College & Hospital, Burla">V.S.S Medical College & Hospital, Burla</option>
					    <option value="F.M Medical College, Balasore">F.M Medical College, Balasore</option>
					    <option value="B.B Medical College, Bolangir">B.B Medical College, Bolangir</option>
					    <option value="S.L.N Medical College & Hospital, Koraput">S.L.N Medical College & Hospital, Koraput</option>
					    <option value="P.R.M Medical College & Hospital, Baripada">P.R.M Medical College & Hospital, Baripada</option>
					</select><br>
					
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
		            <input type="email" placeholder="Enter email id" name="email"><br>
		          
		          <label for="gender"> Choose Gender :</label>
		          <select name="gender" required>
				 		<option value="">- Select Gender -</option>
				 		<option value="MALE">MALE</option>
					    <option value="FEMALE">FEMALE</option>
					    <option value="OTHER">OTHER</option>
					</select><br>
		                                                                                                            
		           <p align="center">
	      		  <button type="submit">DONATE BLOOD</button> 
	   			 </p>
		    </form>
		    </div>
</body>
</html>