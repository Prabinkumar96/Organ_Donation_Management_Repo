<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin | Add Doctor</title>
    <link rel="stylesheet" href="css\style2_admin_adddoctor.css">
	<link rel="icon" href="images/favicon.png">
</head>

<body style="background-image: url('images/ADDOCTOR.jpg')">
	 <div class="registration-form">
    <h2>ADMIN ADD DOCTOR</h2>
    <form action="admin_add_doctor" method="post">
	                <label for="hospital"> Select Hospital  :</label>
	                <select id="hospital_name" name="hospital" required >
					    <option value="">Select Hospital Name</option>
					    <option value="S.C.B Medical College & Hospital, Cuttack">S.C.B Medical College & Hospital, Cuttack</option>
					    <option value="M.K.C.G Medical College & Hospital, Berhampur">M.K.C.G Medical College & Hospital, Berhampur</option>
					    <option value="V.S.S Medical College & Hospital, Burla">V.S.S Medical College & Hospital, Burla</option>
					    <option value="F.M Medical College, Balasore">F.M Medical College, Balasore</option>
					    <option value="B.B Medical College, Bolangir">B.B Medical College, Bolangir</option>
					    <option value="S.L.N Medical College & Hospital, Koraput">S.L.N Medical College & Hospital, Koraput</option>
					    <option value="P.R.M Medical College & Hospital, Baripada">P.R.M Medical College & Hospital, Baripada</option>
					</select>
	                <label for="email"> Enter email :</label>
	                <input id="email" type="email" placeholder="Enter email" size="50" name="email" required>
	                <label for="password">Enter Password :</label>
	                <input id="password" type="password" placeholder="Enter Password" size="50"
	                    pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
	                    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
	                    name="password" required>
	                <label for="mobile_number">Enter Mobile Number :</label>
	                <input id="mobile_number" type="tel" placeholder="Enter Mobile Number" size="50" pattern="[0-9]{10}"
	                    name="mobile" required>
	                <label for="pincode">Enter Pincode :</label>
	                <input id="pincode" type="tel" placeholder="Enter Pincode" size="50" pattern="[0-9]{6}"
	                    name="pincode" required>
	                <label for="address"> Enter Address :</label>
	                <textarea id="address" type="text" rows="4" cols="52.5" name="address" required></textarea>
	<p align="center">
	        <button type="submit">Register Doctor</button> 
	    </p>
	    
    </form>
    </div>
</body>
</html>