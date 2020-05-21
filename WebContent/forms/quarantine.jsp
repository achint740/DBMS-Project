<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quarantine Profile</title>
<style>
	body{
		background-image: url("../Images/Sign_Up.jpg");
		background-size: cover;		
	}
	form{
		margin-left: 850px;
		margin-top: 100px;
	}
	h1{
		color: green;
		text-decoration: underline;
		font-family: 'Lobster', cursive;
		font-size: 40px;
		margin-left : 780px;	
	}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

	<h1>Quarantine Details</h1>
	<form method="POST" action="controller/insert/quarantine_c.jsp">
	
		<input name="aadhar" type="text" placeholder="Team-ID" minlength="12" maxlength="12"><br><br>
		<input name="start_date" type="date" placeholder="Start Date of Quarantine"><br><br>
		<input name="end_date" type="date" placeholder="End Date of Quarantine"><br><br>
		<input name="status" type="text" placeholder="status"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>