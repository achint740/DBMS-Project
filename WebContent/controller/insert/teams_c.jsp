<%@page import="org.json.JSONObject"%>
<%@page import="SQL_Support.SQL_Commands" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team Data Controller</title>
</head>
<body>
	<h1>Welcome to Teams Data Controller</h1>
<%
	//Get all the parameters
	String team_id = request.getParameter("team_id");
	String hid = request.getParameter("hid");
	String name = request.getParameter("team_name");
	
	//Make A JSON Object
	JSONObject obj = new JSONObject();
	obj.put("Table_name","Teams");
	obj.put("Team_Name",name);
	obj.put("Team_ID" , team_id);
	obj.put("HID" , hid);
	
	//Send it
	SQL_Commands cmd = new SQL_Commands("root","Dawra@740","cms");
	cmd.Insert(obj);	
%>

<h2>Team Data Entered Successfully</h2>
<a href="../../index.jsp"><h3>Go Back</h3></a>

</body>
</html>