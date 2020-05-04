<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Indian Citizen Profile</title>
</head>
<body>
	<form method="POST" action="controller/insert/hospital_c.jsp">
	
		<input name="hid" type="text" placeholder="Hospital ID" minlength="1"><br><br>
		<input name="hosp_name" type="text" placeholder="Name Of Hospital" maxlength="50"><br><br>
		<input name="address" type="text" maxlength="100" placeholder="Address Line 1"><br><br>
		<input name="city" type="text" maxlength="30" placeholder="City"><br><br>
		<input name="state" type="text" maxlength="30" placeholder="State"><br><br>
		<input name="mobile" type="text" placeholder="Mobile" minlength="10" maxlength="10"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>