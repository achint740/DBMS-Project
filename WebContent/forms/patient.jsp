<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Profile</title>
<style>
	body{
		background-image: url("../Images/Sign_Up.jpg");
		background-size: cover;		
	}
	form{
		margin-left: 825px;
		margin-top: 100px;
	}
	h1{
		color: green;
		text-decoration: underline;
		font-family: 'Lobster', cursive;
		font-size: 40px;
		margin-left : 800px;	
	}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<h1>Add A Patient</h1>

	<form method="POST" action="controller/insert/patient_c.jsp">
	
		<input name="aadhar" type="text" placeholder="Aadhar Number" minlength="12" maxlength="12"><br><br>
		<input name="pid" type="number" placeholder="Patient-ID" min="1"><br><br>
		<input name="hid" type="number" placeholder="Hospital-ID" min="1"><br><br>
		<input name="date_admit" type="date" placeholder="Admit_Date"><br><br>
		<input name="date_discharge" type="date" placeholder="Discharge_Date"><br><br>
		<input name="status" type="text" placeholder="Testing Status"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>