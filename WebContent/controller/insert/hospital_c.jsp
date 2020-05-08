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
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	
	//Make A JSON Object
	JSONObject obj = new JSONObject();
	obj.put("Table_name","Hospital");
	obj.put("hid",hid);
	obj.put("Mobile",mobile);
	obj.put("Hosp_Name" , name);
	obj.put("Address_Line_1" , address);
	obj.put("City" , city);
	obj.put("State" , state);
	
	//Send it
	SQL_Commands cmd = new SQL_Commands("root","Dawra@740","cms");
	cmd.Insert(obj);
%>
<h2>Hospital Details Entered Successfully</h2>
<a href="../../index.jsp"><h3>Click Here To Go Back</h3></a>
</body>
</html>