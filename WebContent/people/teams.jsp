<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teams</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="team_style.css">
</head>
<body>

	<center><h1>Teams Portal</h1></center>
	
	<a href="../forms/person.jsp"><h2>Add a Person who hasn't signed up yet</h2></a>
	
	<br>

	<h2>View Hospitals Under Your Team</h2>
	<form action="../Displays/team_hosp.jsp" method="post">
		<div class="input-group mb-3" id="myinp">
		  <div class="input-group-prepend">
		  </div>
		  <input type="text" name="teamid" class="form-control" placeholder="Enter Team-ID">
		  <input type="submit" value="Enter">
		</div>
	</form>
	
	<br>
	
	<h2>To View List Home Quarantine -> GovtQuarantine</h2>
	<form action="../Displays/homeq_govtq.jsp" method="post">
		<input type="text" name="teamid" placeholder="Enter Team-ID"> 
		<input type="submit" value="Click Here">
	</form>
	
	<h2>To View List GovtQ->Hosp</h2>
	<form action="../Displays/govtq_hosp.jsp" method="post">
		<input type="text" name="teamid" placeholder="Enter Team-ID"> 
		<input type="submit" value="Click Here">
	</form>
	

 
</body>
</html>