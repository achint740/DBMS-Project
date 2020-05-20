<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>To view all your patients : </h2>
	
	<form action="../Displays/mypatient.jsp">
	
		<input type="text" name="doctorid" placeholder="Enter Your ID">
		<input type="submit" value="Enter"> 
		
	</form>
	
	<!-- <a href="../forms/patient.jsp"><h2>Add A Patient</h2></a> -->

	<h2>Update Patient Testing Status</h2>
	
	<form action="../controller/update/patient_info.jsp">
		<input type="text" name="doctorid" placeholder="Enter Your ID">
		<input type="text" name="patientid" placeholder="Enter PID">
		<input type="text" name="status" placeholder="Status">
		<input type="submit" value="Enter"> 
	</form>
	
</body>
</html>