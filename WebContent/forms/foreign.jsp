<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Foreign Visits</title>
</head>
<body>
	<form method="POST" action="../controller/insert/foreign_c.jsp">

		<input name="aadhar" type="text" placeholder="Aadhar Number" minlength="12" maxlength="12"><br><br>
		<input name="country_visit" type="text" placeholder="Country Visted" maxlength="25"><br><br>
		<input name="datevisit" type="date" placeholder="Date Of Visit"><br><br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>