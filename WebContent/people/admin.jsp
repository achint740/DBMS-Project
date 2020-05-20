<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN</title>
</head>
<body>

	<h1>ADMIN PORTAL</h1>
	<h2>Foreign Visited Citizen Profile Form<a href="../forms/foreign.jsp">Fill this form</a></h2>
	
	<h2>To know the total cases in India</h2>
	<form action="../Displays/total_cases.jsp" method="post">
		<input type="submit" value="Click Here">
	</form>
	
	<h2>To Get the State-Wise Analysis</h2>
	<form method="post" action="../Displays/state_analysis.jsp">
		<input type="submit" value="Click Here">
	</form>
	
	<h2>Get the City-Wise Analysis and Track Hotspots</h2>
	<form method="post" action="../Displays/city_analysis.jsp">
		<input type="text" name="state" placeholder="Enter the state">
		<input type="submit" value="Enter">
	</form>
	
	<h2>Get the List Of Hospitals State-Wise</h2>
	<form method="post" action="../Displays/hosp_state.jsp">
		<input type="text" name="state" placeholder="Enter the state">
		<input type="submit" value="Enter">
	</form>
	
	<h2>Get the DayWise Count Of Patients</h2>
	<form method="post" action="../Displays/day_cnt.jsp">
		<input type="date" name="d_date">
		<input type="submit" value="Enter"> 
	</form>
	
	<h2>View All The Teams</h2>
	<form action="../Displays/teams.jsp">
		<input type="submit" value="Enter">
	</form>
	
	<a href="../forms/add_team.jsp"><h2>Add A Team</h2></a>

	
</body>
</html>