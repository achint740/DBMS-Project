<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Portal</title>
</head>
<body>
	<h1>Welcome to CMS Sign-Up Portal</h1>
	<form method="post" action="../controller/verify.jsp">
		<input type="text" name="user_id" minlength="12" maxlength="12" placeholder="UserID=AADHAR-NO" width="50"><br><br>
		<input type="password" name="password" placeholder="Enter Password" width="50"><br><br>
		<input type="submit" value="LOGIN"> 
	</form>
</body>
</html>