<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
		<h1>Citizen Portal</h1>
		<h2>Foreign Visited Citizen Profile Form<a href="../forms/foreign.jsp">Fill this form</a></h2>
		
		<h2>To know cases in your locality</h2>
		<h2>Fill your Location below</h2>
		
		<form method="post" action="../Displays/no_cases.jsp">
			   
			   <input name="loc" placeholder="LOCATION">
			   <select name="type">
			   		<option>Total Cases</option>
			   		<option>Active Cases</option>
			   		<option>Treated Cases</option>
			   </select>
			   <input type="submit" value="Enter">
			   
		</form>

</body>
</html>