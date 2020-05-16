<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Hospitals Portal</h1>
	
	<h2>Hospital Details Form<a href="../forms/hospital.jsp">Fill this form</a></h2>
	
	<h2>Patient Details Form<a href="../forms/patient.jsp">Click Here</a></h2>
	
	<h2>Quarantine Details Form<a href="../forms/quarantine.jsp">Fill this form</a></h2>
	
	<h2>Covid-19 Special Teams Details Form<a href="../forms/teams.jsp">Fill this form</a></h2>
	
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