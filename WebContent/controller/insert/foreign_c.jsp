<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="org.json.JSONObject"%>
<%@page import="SQL_Support.SQL_Commands" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Foreign-Controller</title>
</head>
<body>
	<h2>Welcome to Foreign Data Controller</h2>
<%
	//Pick all from the html form
	String aadhar = request.getParameter("aadhar");
	String country = request.getParameter("country_visit");
	String date = request.getParameter("datevisit");
	
	//Make a JSON Object
	JSONObject obj = new JSONObject();
	obj.put("Table_name","Foreign_Visit_Info");
	obj.put("Aadhar_Number",aadhar);
	obj.put("Country_Visit", country);
	obj.put("Date_Visit", date);
	
	//Send it
	Execute_Statement e = new Execute_Statement();
	e.Insert(obj,"Entity_Foreign_Visit");
	
%>

<h2>Thankyou for providing information!</h2>
<a href="../../people/citizen.jsp"><h3>Go Back To Home Page</h3></a>

</body>
</html>