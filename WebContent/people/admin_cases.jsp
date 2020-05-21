<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Government</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="hosp_style.css">
</head>
<body>
	
	<nav class="navbar navbar-dark bg-dark">
  		<h1>Cases & Analysis</h1>
	</nav>
	
	<div class="card-group">
		
		<div class="card" >
		  <img src="../Images/ind2.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">State-Wise Analysis</h5>
		    <form action="../Displays/state_analysis.jsp" method="post" class="form-inline">
			  <button type="submit" class="btn btn-primary mb-2">Confirm</button>
			</form>
		  </div>
		</div>
		
		<div class="card h-600">
		  <img src="../Images/plist.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">City-Wise Analysis</h5>
		    <form action="../Displays/city_analysis.jsp" method="post" class="form-inline">
			  <div class="form-group mx-sm-3 mb-2">
			    <input type="text" class="form-control" name="state" placeholder="Enter State">
			  </div>
			  <button type="submit" class="btn btn-primary mb-2">Confirm</button>
			</form>
		  </div>
		</div>
		
		<div class="card">
		  <img src="../Images/pinfo.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Day-Wise Analysis</h5>
		    <form action="../Displays/day_cnt.jsp" method="post" class="form-inline">
			  <div class="form-group mx-sm-3 mb-2">
			    <input type="date" class="form-control" name="d_date">
			  </div>
			  <button type="submit" class="btn btn-primary mb-2">Confirm</button>
			</form>
		  </div>
		</div>
		
	</div>
	
 
</body>
</html>