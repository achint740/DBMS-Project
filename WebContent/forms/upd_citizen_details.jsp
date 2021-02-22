<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	body{
		background-image: url("../Images/Sign_Up.jpg");
		background-size: cover;		
	}
	form{
		text-align: center;
		margin-top: 100px;
	}
	h1{
		color: red;
		text-decoration: underline;
		font-family: 'Lobster', cursive;
		font-size: 40px;
		margin-left : 780px;	
	}
	
	input{
		margin-bottom: 30px;
	}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	
	<h1>Update Details Form</h1>
	
	<form method="post" action="../controller/update/citizen.jsp">
	
		<input type="text" name="aadhar" placeholder="Aadhar_No"> 
		<input type="text" name="age" placeholder="Enter Your age">
		<input type="number" name="mobile" placeholder="Enter Mobile No">
		<input type="email" placeholder="Email">
		<input type="submit" value="Enter">
		
	</form>
	
</body>
</html>