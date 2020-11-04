<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Citizens</title>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="citizen_style.css" rel="stylesheet">
</head>
<body>
<div class="vertical-nav bg-white" id="sidebar">
  <div class="py-4 px-3 mb-4 bg-light">
  
    <div class="media d-flex align-items-center">
      <div class="media-body">
        <h4 class="m-0">CITIZENS</h4>
      </div>
    </div>
 
  </div>

  <p class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0">Main</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item">
      <a href="../index.jsp" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-th-large mr-3 text-primary fa-fw"></i>
                HOME
      </a>
    </li>
    <li class="nav-item">
      <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-address-card mr-3 text-primary fa-fw"></i>
                ABOUT US
      </a>
    </li>
  </ul>

  <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0">Portals</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item">
      <a href="#view_hosp" class="nav-link text-dark font-italic">
                <i class="fa fa-area-chart mr-3 text-primary fa-fw"></i>
                View Hospitals
            </a>
    </li>
    <li class="nav-item">
      <a href="#view_cases_1" class="nav-link text-dark font-italic">
                <i class="fa fa-bar-chart mr-3 text-primary fa-fw"></i>
                View Cases(India)
            </a>
    </li>
    <li class="nav-item">
      <a href="#view_cases_2" class="nav-link text-dark font-italic">
                <i class="fa fa-pie-chart mr-3 text-primary fa-fw"></i>
                View Cases(Locality)
            </a>
    </li>
    <li class="nav-item">
      <a href="#foreign" class="nav-link text-dark font-italic">
                <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                Visited Foreign?
            </a>
    </li>
    <li class="nav-item">
      <a href="#upd" class="nav-link text-dark font-italic">
                <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                Update Details
       </a>
    </li>
  </ul>
</div>
<div class="page-content p-5" id="content">

	<div id="view_hosp" class="card">
		  <img src="../Images/locality.png" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">View Hospitals In Locality</h4>
		    <form action="../Displays/hospitals.jsp" method="POST">
			  <div class="form-row align-items-center">
			    <div class="col-auto">
			      <input type="text" class="form-control mb-2" name="city" placeholder="CITY">
			    </div>
			    <div class="col-auto">
			        <input type="text" class="form-control mb-2" name="state" placeholder="STATE">
			    </div>
			    <div class="col-auto">
			      <button type="submit" class="btn btn-primary mb-2">Submit</button>
			    </div>
			  </div>
			</form>
		 </div>
	</div>
	
	<div id="view_cases_1" class="card" >
		  <img src="../Images/ind2.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Total Cases In India</h4>
			<a href="../Displays/total_cases.jsp" class="btn btn-primary mb-2"><h5>Click To Display</h5></a>
		  </div>
	</div>
	
	<div id="view_cases_2" class="card">
		  <img src="../Images/locality.png" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">View Cases In Locality</h4>
		    <form action="../Displays/no_cases.jsp" method="POST">
			  <div class="form-row align-items-center">
			    <div class="col-auto">
			      <input type="text" class="form-control mb-2" name="city" placeholder="CITY">
			    </div>
			    <div class="col-auto">
			        <input type="text" class="form-control mb-2" name="state" placeholder="STATE">
			    </div>
			    <div class="col-auto">
				    <select name="type" id="cases_type">
				   		<option>Nearby_Cases</option>
				   		<option>Nearby_Active_Cases</option>
				   		<option>Nearby_Recovered_Cases</option>
				   	</select>
			   	</div>
			    <div class="col-auto">
			      <button type="submit" class="btn btn-primary mb-2">Submit</button>
			    </div>
			  </div>
			</form>
		  </div>
	</div>
	
	<div id="foreign" class="card" >
		  <img src="../Images/aero.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Visited Foreign Recently?</h4>
			<a href="../forms/foreign.jsp"  class="btn btn-primary mb-2"><h5>Fill This Form</h5></a>
		  </div>
	</div>
	
	<div class="card" id="upd">
		  <img src="../Images/upd.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Update Details?</h4>
			<a href="../forms/upd_citizen_details.jsp" class="btn btn-primary mb-2"><h5>Fill This Form</h5></a>
		  </div>
	</div>
</div>
</body>
</html>