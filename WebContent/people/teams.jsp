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
	userName = "ADMIN_NULL";
	//response.sendRedirect("Login.jsp");
%>
	
	<nav class="navbar navbar-dark bg-dark">
  		<h1>Teams Portal [ <%=userName %> ]</h1>
	</nav>
	
	<div class="card-group">
	
		<div class="card" >
		  <img src="../Images/team1.jpeg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Sign Up A Person</h5>
		    <p class="card-text">Click Here to add a person who hasn't registered yet</p>
		    <a href="../forms/person.jsp" class="btn btn-primary">Register</a>
		  </div>
		</div>
		
		<div class="card" >
		  <img src="../Images/team1.jpeg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">View Hospitals</h5>
		    <form action="../Displays/team_hosp.jsp" method="post" class="form-inline">
			 <!--   <div class="form-group mx-sm-3 mb-2">
			    <input type="text" class="form-control" name="teamid" placeholder="TeamID">
			  </div>  -->
			  <button type="submit" class="btn btn-primary mb-2">Confirm identity</button>
			</form>
		  </div>
		</div>
		
		<div class="card">
		  <img src="../Images/team1.jpeg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Home Quarantine</h5>
		    <form action="../Displays/homeq_govtq.jsp" method="post" class="form-inline">
			  <button type="submit" class="btn btn-primary mb-2">Confirm identity</button>
			</form>
		  </div>
		</div>
		
		<div class="card h-600">
		  <img src="../Images/team1.jpeg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Govt. Quarantine</h5>
		    <form action="../Displays/govtq_hosp.jsp" method="post" class="form-inline">
			  <button type="submit" class="btn btn-primary mb-2">Confirm identity</button>
			</form>
		  </div>
		</div>
		
	</div>
 
</body>
</html>