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
			   
			   <input name="city" placeholder="CITY">
			   <input name="state" placeholder="STATE">
			   <select name="type">
			   		<option>Nearby_Cases</option>
			   		<option>Nearby_Active_Cases</option>
			   		<option>Nearby_Recovered_Cases</option>
			   </select>
			   <input type="submit" value="Enter">
			   
		</form>
		
	    <form method="post" action="../Displays/total_cases.jsp">
	    	
	    	<h2>Click Here To Know The Total Cases In India</h2>
	    	<input type="submit" value="Enter">
	    		
	    </form>
	    
	    <br>
	    
	    <form method="post" action="../Displays/hospitals.jsp">
	    	  <h2>To Know Hospitals in Your Locality</h2>
	    	  <input name="city" placeholder="CITY">
			  <input name="state" placeholder="STATE">
			  <input type="submit" value="Enter">
			    
	    </form>

</body>
</html>