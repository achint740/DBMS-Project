<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospitals</title>
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
		margin-left : 680px;	
	}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

	<h1>Add Covid-19 Dedicated Hospital</h1>

	<form method="POST" action="../controller/insert/hospital_c.jsp">
	
		<input name="hid" type="text" placeholder="Hospital ID" minlength="1"><br><br>
		<input name="hosp_name" type="text" placeholder="Name Of Hospital" maxlength="50"><br><br>
		<!-- <input name="address" type="text" maxlength="100" placeholder="Address Line 1"><br><br> -->
		<input name="city" type="text" maxlength="30" placeholder="City"><br><br>
		<input name="state" type="text" maxlength="30" placeholder="State"><br><br>
		<input name="pin" type="text" placeholder="PinCode"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>