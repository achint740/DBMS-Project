<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team Add</title>
</head>
<body>
	<form method="POST" action="controller/insert/team_add.jsp">
	
		<input name="teamid" type="text" placeholder="Team_ID" minlength="1"><br><br>
		<input name="head_name" type="text" placeholder="Name Of Head" maxlength="50"><br><br>
		<input name="mobile" type="text" placeholder="Mobile" minlength="10" maxlength="10"><br><br>
		<input name="city" type="text" maxlength="30" placeholder="City"><br><br>
		<input name="state" type="text" maxlength="30" placeholder="State"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>