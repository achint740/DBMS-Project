<!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<!--  *********************CITIZEN PORTAL************************ 
		<h1>Citizen Portal</h1>
		
		
		<!--  *********************FOREIGN VISIT FORM FILLING************************ 
		
		<h2>Foreign Visited Citizen Profile Form<a href="../forms/foreign.jsp">Fill this form</a></h2>
		
		
		<!--  *********************NUMBER OF CASES IN A LOCALITY************************ 
		
		<h2>To know cases in your locality</h2>
		<h2>Fill your Location below</h2>
		
		<form method="post" action="../Displays/no_cases.jsp">
			   
			   <input name="city" placeholder="CITY">
			   <input name="state" placeholder="STATE">
			   <select name="type">
			   		<option>Nearby_Cases</option>
			   		<option>Nearby_Active_Cases</option>
			   		<option>Nearby_Recovered_Cases</option>
			   </select>
			   <input type="submit" value="Enter">
			   
		</form>
		
		
		<!--  *********************TOTAL CASES IN A COUNTRY************************ 
		
	    <form method="post" action="../Displays/total_cases.jsp">
	    
	    	<h2>Click Here To Know The Total Cases In India</h2>
	    	<input type="submit" value="Enter">
	    		
	    </form>
	    
	    <br>
	    
	    
	    
	    <!--  *********************DISPLAY LIST OF HOSPITALS IN A LOCALITY************************ 
	    
	    <form method="post" action="../Displays/hospitals.jsp">
	    	  <h2>To Know Hospitals in Your Locality</h2>
	    	  <input name="city" placeholder="CITY">
			  <input name="state" placeholder="STATE">
			  <input type="submit" value="Enter">
			    
	    </form>
	    
	    <!--  *********************UPDATE YOUR DETAILS************************ 
	    
	    <a href="../forms/upd_citizen_details.jsp"><h1>Update Details Form</h1></a>
	    

</body>
</html>

 -->
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Citizens</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="citizen_style.css">
</head>
<body>
	<!--   *********************CITIZEN PORTAL************************ -->
	<nav class="navbar navbar-dark bg-dark">
  		<h1>Citizen Portal</h1>
	</nav>
	
	<div class="card-group">
		<!--   *********************FOREIGN VISIT************************ -->
		<div class="card" >
		  <img src="../Images/aero.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Visited Foreign Recently?</h4>
			<button type="submit" class="btn btn-primary mb-2"><a href="../forms/foreign.jsp"><h5>Fill This Form</h5></a></button>
		  </div>
		</div>
		<!--   *********************CASES IN LOCALITY************************ -->
		<div class="card">
		  <img src="../Images/locality.png" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">View Cases In Locality</h4>
		    <form action="../Displays/no_cases.jsp" method="POST">
			  <div class="form-row align-items-center">
			    <div class="col-auto">
			      <input type="text" class="form-control mb-2" name="city" placeholder="CITY">
			    </div>
			    <div class="col-auto">
			        <input type="text" class="form-control" name="state" placeholder="STATE">
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
		
	</div>
	
	<div class="card-group">
		<!--   *********************HOSPITALS IN LOCALITY************************ -->
		<div class="card">
		  <img src="../Images/locality.png" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">View Hospitals In Locality</h4>
		    <form action="../Displays/hospitals.jsp" method="POST">
			  <div class="form-row align-items-center">
			    <div class="col-auto">
			      <input type="text" class="form-control mb-2" name="city" placeholder="CITY">
			    </div>
			    <div class="col-auto">
			        <input type="text" class="form-control" name="state" placeholder="STATE">
			    </div>
			    <div class="col-auto">
			      <button type="submit" class="btn btn-primary mb-2">Submit</button>
			    </div>
			  </div>
			</form>
		  </div>
		</div>
		<!--   *********************CASES IN INDIA************************ -->
		<div class="card" >
		  <img src="../Images/ind2.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Total Cases In India</h4>
			<button type="submit" class="btn btn-primary mb-2"><a href="../Displays/total_cases.jsp"><h5>Click To Display</h5></a></button>
		  </div>
		</div>
		
	</div>
	<!--   ********************* UPDATE DETAILS FORM************************ -->
	<div class="card-group">
		<div class="card" id="upd">
		  <img src="../Images/upd.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Update Details?</h4>
			<button type="submit" class="btn btn-primary mb-2"><a href="../forms/upd_citizen_details.jsp"><h5>Fill This Form</h5></a></button>
		  </div>
		</div>
	</div>
 
</body>
</html>