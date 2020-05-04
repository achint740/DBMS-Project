<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quarantine Profile</title>
</head>
<body>
	<form method="POST" action="controller/insert/quarantine_c.jsp">
	
		<input name="aadhar" type="text" placeholder="Team-ID" minlength="12" maxlength="12"><br><br>
		<input name="start_date" type="date" placeholder="Start Date of Quarantine"><br><br>
		<input name="end_date" type="date" placeholder="End Date of Quarantine"><br><br>
		<input name="status" type="text" placeholder="status"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>