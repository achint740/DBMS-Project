<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospitals</title>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="hosp_style.css" rel="stylesheet">
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
        <h4 class="m-0">HOSPITAL</h4>
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
      <a href="#list_new" class="nav-link text-dark font-italic">
                <i class="fa fa-area-chart mr-3 text-primary fa-fw"></i>
                View List(New Patients)
            </a>
    </li>
    <li class="nav-item">
      <a href="#list_p" class="nav-link text-dark font-italic">
                <i class="fa fa-bar-chart mr-3 text-primary fa-fw"></i>
                View List(All)
            </a>
    </li>
    <li class="nav-item">
      <a href="#info" class="nav-link text-dark font-italic">
                <i class="fa fa-pie-chart mr-3 text-primary fa-fw"></i>
                View Patient Info
            </a>
    </li>
    
    <li class="nav-item">
      <a href="#list_doc" class="nav-link text-dark font-italic">
                <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                List of Doctors
       </a>
    </li>
    
    <li class="nav-item">
      <a href="#add_doc" class="nav-link text-dark font-italic">
                <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                Add a Doctor
       </a>
    </li>
    
    <li class="nav-item">
      <a href="#cases" class="nav-link text-dark font-italic">
                <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                View Cases
       </a>
    </li>
  </ul>
  
  <form action="../LogOutServlet" method="post">
		<button type="submit" class="btn btn-danger mb-2">LogOut</button>
  </form>
</div>
<div class="page-content p-5" id="content">

	<div class="card" id="list_new">
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
	
	<div class="card" id="list_p">
		  <img src="../Images/plist.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">See Complete List Of Patients</h5>
		    <form action="../Displays/patient_list.jsp" method="post" class="form-inline">
			  <button type="submit" class="btn btn-primary mb-2">Confirm</button>
			</form>
		  </div>
	</div>
	
	<div class="card" id="info">
		  <img src="../Images/pinfo.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">See A Patient's Info</h5>
		    <form action="../Displays/patient_info.jsp" method="post" class="form-inline">
			  <div class="form-group mx-sm-3 mb-2">
			    <input type="text" class="form-control" name="pid" placeholder="Patient-ID">
			  </div>
			  <button type="submit" class="btn btn-primary mb-2">Confirm</button>
			</form>
		  </div>
	</div>
	
	<div class="card" id="list_doc">
		  <img src="../Images/listd.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">List Of Doctors</h5>
		    <form action="../Displays/Doctor_Info.jsp" method="post" class="form-inline">
			  <button type="submit" class="btn btn-primary mb-2">View</button>
			</form>
		  </div>
	</div>
	
	<div class="card" id="add_doc">
		  <img src="../Images/doctor1.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Add A Doctor</h5>
		    <a href="../forms/doctor.jsp" class="btn btn-primary">ADD</a>
		  </div>
	</div>
	
	<div class="card" id="cases">
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