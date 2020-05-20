<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="team_style.css">
</head>
<body>
	
	<a href="../forms/person.jsp"><h2>Add a Person who hasn't signed up yet</h2></a>
	
	<!--	<h2>See List of People Arrived from foreign and yet not checked</h2>
	
			<form action="../Displays/foreign_visit.jsp" method="POST">
				<input type="text" name="City" placeholder="Your City">
				<input type="submit" value="Enter">
			</form>
	  -->	
	<h2>View Hospitals Under Your Team</h2>
	<form action="../Displays/team_hosp.jsp" method="post">
		<input type="text" name="teamid" placeholder="Enter Your Team-ID">
		<input type="submit" value="Enter">
	</form>
	
	
	<br>
	
	<h2>To View List</h2>
	<form action="../Displays/teams_list.jsp" method="post">
		<input type="text" name="teamid" placeholder="Enter Team-ID"> 
		<input type="submit" value="Click Here">
	</form>
	

 
</body>
</html>