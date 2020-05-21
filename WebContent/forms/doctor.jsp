<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Doctor</title>
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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<h1>Add A Doctor</h1>

	<form method="POST" action="../controller/insert/doctor.jsp">
	
		<input name="hid" type="text" placeholder="Hospital ID" minlength="1"><br><br>
		<input name="doctorid" type="text" placeholder="Doctor ID" minlength="1"><br><br>
		<input name="doctorname" type="text" placeholder="Name Of Doctor" maxlength="50"><br><br>
		<input name="qualify" type="text" maxlength="100" placeholder="Qualification"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>