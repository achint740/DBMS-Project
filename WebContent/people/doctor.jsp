<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctors</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="doctor_style.css">
</head>
<body>
	
	<nav class="navbar navbar-dark bg-dark">
  		<h1>Doctor's Portal</h1>
	</nav>
	
	<div class="card-group">
		
		<div class="card" >
		  <img src="../Images/doctor1.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">View Patients</h5>
		    <form action="../Displays/mypatient.jsp" method="post" class="form-inline">
			  <div class="form-group mx-sm-3 mb-2">
			    <input type="text" class="form-control" name="doctorid" placeholder="Enter Doctor-ID">
			  </div>
			  <button type="submit" class="btn btn-primary mb-2">Confirm identity</button>
			</form>
		  </div>
		</div>
		
		<div class="card">
		  <img src="../Images/doctor1.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Update Patient Testing Status</h5>
		    <form action="../controller/update/patient_info.jsp" method="POST">
			  <div class="form-row align-items-center">
			    <div class="col-auto">
			      <input type="text" class="form-control mb-2" name="doctorid" placeholder="Enter Your ID">
			    </div>
			    <div class="col-auto">
			        <input type="text" class="form-control" name="patientid" placeholder="Enter PID">
			    </div>
			    <div class="col-auto">
			        <input type="text" class="form-control" name="status" placeholder="Status">
			    </div>
			    <div class="col-auto">
			      <button type="submit" class="btn btn-primary mb-2">Submit</button>
			    </div>
			  </div>
			</form>
		  </div>
		</div>
		
	</div>
 
</body>
</html>






























