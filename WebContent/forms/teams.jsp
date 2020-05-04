<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team Profile</title>
</head>
<body>
	<form method="POST" action="controller/insert/teams_c.jsp">
	
		<input name="team_id" type="number" placeholder="Team-ID" min="1"><br><br>
		<input name="hid" type="number" placeholder="Hospital-ID" min="1"><br><br>
		<input name="team_name" type="number" placeholder="Team-Name" min="1"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>