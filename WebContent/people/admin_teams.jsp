<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Government</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="admin_style.css">
</head>
<body>
	
	<nav class="navbar navbar-dark bg-dark">
  		<h1>Hospitals & Teams</h1>
	</nav>
	
	<div class="card-group">
		
		<div class="card" >
		  <img src="../Images/hosp.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">List Of Hospitals in a State</h4>
		    <form action="../Displays/hosp_state.jsp" method="post" class="form-inline">
		      <div class="form-group mx-sm-3 mb-2">
			    <input type="text" class="form-control" name="state" placeholder="Enter State">
			  </div>
			  <button type="submit" class="btn btn-primary mb-2"><h5>Confirm</h5></button>
			</form>
		  </div>
		</div>
		
		<div class="card h-600">
		  <img src="../Images/team1.jpeg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">List Of Teams</h4>
		    <form action="../Displays/teams.jsp" method="post" class="form-inline">
			  <button type="submit" class="btn btn-primary mb-2"><h5>View</h5></button>
			</form>
		  </div>
		</div>
		
		<div class="card">
		  <img src="../Images/team.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Add A Team</h4>
			<button type="submit" class="btn btn-primary mb-2"><a href="../forms/add_team.jsp"><h5>ADD</h5></a></button>
		  </div>
		</div>
		
	</div>
	
 
</body>
</html>