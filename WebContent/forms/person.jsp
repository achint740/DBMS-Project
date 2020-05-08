<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Indian Citizen Profile</title>
<style>
	body{
		background-image: url("../Images/Sign_Up.jpg");
		background-size: cover;		
	}
	form{
		margin-left: 700px;
		margin-top: 100px;
	}
	h1{
		color: green;
		text-decoration: underline;
		font-family: 'Lobster', cursive;
		font-size: 40px;
		margin-left : 680px;	
	}
</style>
</head>
<body>

	<h1>Sign Up Portal</h1>
	<form method="POST" action="controller/insert/person_c.jsp">
	
		<input name="fname" type="text" placeholder="First Name" maxlength="20"><br><br>
		<input name="lname" type="text" placeholder="Last Name" maxlength="20"><br><br>
		<input name="aadhar" type="text" placeholder="Aadhar Number" minlength="12" maxlength="12"><br><br>
		<input name="age" type="password" placeholder="Set a Password" min="5" max="25"><br><br>
		<input name="age" type="number" placeholder="Age" min="0" max="150"><br><br>
		Gender : 
		<select name="gender">
			<option>Male</option>
			<option>Female</option>
			<option>Other</option>
		</select><br><br>
		<input name="address" type="text" maxlength="100" placeholder="Address Line 1"><br><br>
		<input name="city" type="text" maxlength="30" placeholder="City"><br><br>
		<input name="state" type="text" maxlength="30" placeholder="State"><br><br>
		<input name="mobile" type="text" placeholder="Mobile" minlength="10" maxlength="10"><br><br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>