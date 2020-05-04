<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Profile</title>
</head>
<body>
	<form method="POST" action="controller/insert/patient_c.jsp">
	
		<input name="aadhar" type="text" placeholder="Aadhar Number" minlength="12" maxlength="12"><br><br>
		<input name="pid" type="number" placeholder="Patient-ID" min="1"><br><br>
		<input name="hid" type="number" placeholder="Hospital-ID" min="1"><br><br>
		<input name="date_admit" type="date"><br><br>
		<input name="date_discharge" type="date"><br><br>
		<input name="status" type="text" placeholder="Testing Status"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>