<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team Add</title>
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
	
	<h1>Add Covid-19 Dedicated Team</h1>

	<form method="POST" action="controller/insert/team_add.jsp">
	
		<input name="teamid" type="text" placeholder="Team_ID" minlength="1"><br><br>
		<input name="head_name" type="text" placeholder="Name Of Head" maxlength="50"><br><br>
		<input name="mobile" type="text" placeholder="Mobile" minlength="10" maxlength="10"><br><br>
		<input name="city" type="text" maxlength="30" placeholder="City"><br><br>
		<input name="state" type="text" maxlength="30" placeholder="State"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>