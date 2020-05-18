<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<!--  *********************CITIZEN PORTAL************************ -->
		<h1>Citizen Portal</h1>
		
		
		<!--  *********************FOREIGN VISIT FORM FILLING************************ -->
		
		<h2>Foreign Visited Citizen Profile Form<a href="../forms/foreign.jsp">Fill this form</a></h2>
		
		
		<!--  *********************NUMBER OF CASES IN A LOCALITY************************ -->
		
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
		
		
		<!--  *********************TOTAL CASES IN A COUNTRY************************ -->
		
	    <form method="post" action="../Displays/total_cases.jsp">
	    
	    	<h2>Click Here To Know The Total Cases In India</h2>
	    	<input type="submit" value="Enter">
	    		
	    </form>
	    
	    <br>
	    
	    
	    
	    <!--  *********************DISPLAY LIST OF HOSPITALS IN A LOCALITY************************ -->
	    
	    <form method="post" action="../Displays/hospitals.jsp">
	    	  <h2>To Know Hospitals in Your Locality</h2>
	    	  <input name="city" placeholder="CITY">
			  <input name="state" placeholder="STATE">
			  <input type="submit" value="Enter">
			    
	    </form>
	    
	    <!--  *********************UPDATE YOUR DETAILS************************ -->
	    
	    <a href="../forms/upd_citizen_details.jsp"><h1>Update Details Form</h1></a>
	    

</body>
</html>