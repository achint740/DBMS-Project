<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="org.json.JSONObject"%>
<%@page import="SQL_Support.SQL_Commands" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Data Controller</title>
</head>
<body>
<h2>Welcome to Hospital Data Entry Controller</h2>
<%
	//Get all the parameters
	String hid = request.getParameter("hid");
	String name = request.getParameter("hosp_name");
	String pin = request.getParameter("pin");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	
	//Make A JSON Object
	JSONObject obj = new JSONObject();
	obj.put("Table_name","Hospital");
	obj.put("Hospital_ID",hid);
	obj.put("Pincode",pin);
	obj.put("Name" , name);
	//obj.put("Address_Line_1" , address);
	obj.put("City" , city);
	obj.put("State" , state);
	
	//Send it
	Execute_Statement e = new Execute_Statement();
	e.Insert(obj,"Entity_Hospital");
%>
<h2>Hospital Details Entered Successfully</h2>
<a href="../../people/hospital.jsp"><h3>Click Here To Go Back</h3></a>
</body>
</html>