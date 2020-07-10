<!-- 
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

 -->
 
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Govt.Admin</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="admin_style.css">
</head>
<body>

<% 
String userName = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("user")) 
			userName = cookie.getValue();
		//out.println("Value : " + cookie.getValue());
	}
}

if(userName == null) 
	//userName = "ADMIN_NULL";
	response.sendRedirect("../Login.jsp");
%>
	
	<nav class="navbar navbar-dark bg-dark">
		<h2><%=userName %></h2>
  		<h1>Govt. Of India</h1>
  		<form action="../LogOutServlet" method="post">
			<button type="submit" class="btn btn-danger mb-2">LogOut</button>
		</form>
	</nav>
	
	<div class="card-group">
	
		<div class="card" >
		  <img src="../Images/aero.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Foreign Visitors</h4>
			<button type="submit" class="btn btn-primary mb-2"><a href="../forms/foreign.jsp"><h5>Fill This Form</h5></a></button>
		  </div>
		</div>
		
		<div class="card" >
		  <img src="../Images/cases1.jpeg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Cases & Analysis</h4>
		    <button type="submit" class="btn btn-primary mb-2"><a href="admin_cases.jsp"><h5>Check</h5></a></button>
		  </div>
		</div>
		
		<div class="card" >
		  <img src="../Images/team1.jpeg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Hospitals & Teams</h4>
		    <button type="submit" class="btn btn-primary mb-2"><a href="admin_teams.jsp"><h5>Check</h5></a></button>
		  </div>
		</div>
		
	</div>
 
</body>
</html>
 