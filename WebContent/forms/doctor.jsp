<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="controller/insert/doctor.jsp">
	
		<input name="hid" type="text" placeholder="Hospital ID" minlength="1"><br><br>
		<input name="doctorid" type="text" placeholder="Doctor ID" minlength="1"><br><br>
		<input name="doctorname" type="text" placeholder="Name Of Doctor" maxlength="50"><br><br>
		<input name="qualify" type="text" maxlength="100" placeholder="Qualification"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>