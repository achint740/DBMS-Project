<!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Hospitals Portal</h1>
	
	<h2>Hospital Details Form<a href="../forms/hospital.jsp">Fill this form</a></h2>
	
	<h2>See the list of new patients</h2>
	<form action="../Displays/hosp_new_list.jsp" method="POST">
		<input name="hosp_id" type="text">
		<input type="submit" value="Enter">
	</form>
	
	<h2>Add Doctor<a href="../forms/doctor.jsp">Fill this form</a></h2>
	
	<h2>To see the total cases admitted in your Hospital</h2>
	
	<form method="POST" action="../Displays/hosp_cases.jsp">
		<p>Please Enter the Hospital ID</p>
		<input type="text" name="hid">
		<select name="type">
			<option>Total_Hosp_Cases</option>
			<option>Active_Hosp_Cases</option>
			<option>Treated_Hosp_Cases</option>
		</select>
		<input type="submit" value="Enter">
	</form>
	
	<h2>To See A Patient's INFO</h2>
	<form method="post" action="../Displays/patient_info.jsp">
		<input type="text" placeholder="Enter PID" name="pid">
		<input type="submit" value="Enter"> 
	</form>
	
	<h2>To see the list of patients</h2>
	<form method="post" action="../Displays/patient_list.jsp">
		<input type="text" placeholder="Enter HID" name="hid">
		<input type="submit" value="Enter"> 
	</form>
	
	<h2>To see the list of your doctors</h2>
	<form method="post" action="../Displays/Doctor_Info.jsp">
		<input type="text" placeholder="Enter HID" name="hid">
		<input type="submit" value="Enter">
	</form>
</body>
</html>

-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospitals</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="hosp_style.css">
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
  		<h1>Hospital Admin's Portal</h1>
  		<form action="../LogOutServlet" method="post">
			<button type="submit" class="btn btn-danger mb-2">LogOut</button>
		</form>
	</nav>
	
	<div class="card-group">
		
		<div class="card" >
		  <img src="../Images/pnew.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">See List Of New Patients</h5>
		    <form action="../Displays/hosp_new_list.jsp" method="post" class="form-inline">
			  <!-- <div class="form-group mx-sm-3 mb-2">
			    <input type="text" class="form-control"name="hosp_id" placeholder="Hospital-ID">
			  </div> -->
			  <button type="submit" class="btn btn-primary mb-2">Confirm</button>
			</form>
		  </div>
		</div>
		
		<div class="card h-600">
		  <img src="../Images/plist.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">See Complete List Of Patients</h5>
		    <form action="../Displays/patient_list.jsp" method="post" class="form-inline">
			  <button type="submit" class="btn btn-primary mb-2">Confirm</button>
			</form>
		  </div>
		</div>
		
		<div class="card">
		  <img src="../Images/pinfo.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">See A Patient's Info</h5>
		    <form action="../Displays/patient_list.jsp" method="post" class="form-inline">
			  <div class="form-group mx-sm-3 mb-2">
			    <input type="text" class="form-control" name="pid" placeholder="Patient-ID">
			  </div>
			  <button type="submit" class="btn btn-primary mb-2">Confirm</button>
			</form>
		  </div>
		</div>
		
	</div>
	
	<div class="card-group">
	
		<div class="card">
		  <img src="../Images/listd.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">List Of Doctors</h5>
		    <form action="../Displays/Doctor_Info.jsp" method="post" class="form-inline">
			  <button type="submit" class="btn btn-primary mb-2">View</button>
			</form>
		  </div>
		</div>
		
		<div class="card" >
		  <img src="../Images/doctor1.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Add A Doctor</h5>
		    <a href="../forms/doctor.jsp" class="btn btn-primary">ADD</a>
		  </div>
		</div>
		
		<div class="card">
		  <img src="../Images/cases.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h4 class="card-title">Cases In Your Hospital</h4>
		    <form action="../Displays/hosp_cases.jsp" method="POST">
			  <div class="form-row align-items-center">
			    <div class="col-auto">
				    <select name="type" id="cases_type">
				   		<option>Total_Hosp_Cases</option>
				   		<option>Active_Hosp_Cases</option>
				   		<option>Treated_Hosp_Cases</option>
				   	</select>
			   	</div>
			    <div class="col-auto">
			      <button type="submit" class="btn btn-primary mb-2">Confirm</button>
			    </div>
			  </div>
			</form>
		  </div>
		</div>
		
	</div>
 
</body>
</html>