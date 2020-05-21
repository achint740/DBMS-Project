<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Portal</title>
<style>
	body{
		background-image: url("../Images/Sign_Up.jpg");
		background-size: cover;		
	}
	form{
		margin-left: 850px;
		margin-top: 100px;
	}
	h1{
		color: green;
		text-decoration: underline;
		font-family: 'Lobster', cursive;
		font-size: 40px;
		margin-left : 680px;	
	}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<h1>Welcome to CMS Sign-Up Portal</h1>
	<form method="post" action="../controller/verify.jsp">
		<input type="text" name="user_id" minlength="12" maxlength="12" placeholder="UserID" width="50"><br><br>
		<input type="password" name="password" placeholder="Enter Password" width="50"><br><br>
		<input type="submit" value="LOGIN"> 
	</form>
</body>
</html>