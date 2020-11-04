<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctors</title>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="doctor_style.css" rel="stylesheet">
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

<div class="vertical-nav bg-white" id="sidebar">
  <div class="py-4 px-3 mb-4 bg-light">
  
    <div class="media d-flex align-items-center">
      <div class="media-body">
        <h4 class="m-0">DOCTOR</h4>
        <h4><%=userName %></h4>
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
      <a href="#view" class="nav-link text-dark font-italic">
                <i class="fa fa-area-chart mr-3 text-primary fa-fw"></i>
                View Patients
            </a>
    </li>
    <li class="nav-item">
      <a href="#upd" class="nav-link text-dark font-italic">
                <i class="fa fa-bar-chart mr-3 text-primary fa-fw"></i>
                Update Patient Status
       </a>
    </li>
  </ul>
  
  <form action="../LogOutServlet" method="post">
			<button type="submit" class="btn btn-danger mb-2">LogOut</button>
  </form>
</div>
<div class="page-content p-5" id="content">
	<div class="card" >
		  <img src="../Images/doctor1.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 id="view" class="card-title">View Patients</h5>
		    <form action="../Displays/mypatient.jsp" method="post" class="form-inline">
			  <div class="form-group align-items-center">
			  	<div class="col-auto">
			  		<button type="submit" class="btn btn-primary mb-2">Confirm identity</button>
			  	</div>
			  </div>
			</form>
			<h5 id="view" class="card-title">Update Patient Status</h5>
			<form action="../controller/update/patient_info.jsp" method="POST">
			  <div class="form-row align-items-center">
			    <div class="col-auto">
			        <input type="text" class="form-control mb-2" name="patientid" placeholder="Enter Patient ID">
			    </div>
			    <div class="col-auto">
			        <input type="text" class="form-control mb-2" name="status" placeholder="Status">
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