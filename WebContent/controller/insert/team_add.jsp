<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team Add Controller</title>
</head>
<body>
	<%
		String tid = request.getParameter("teamid");
		String name = request.getParameter("head_name");
		String mobile = request.getParameter("mobile");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		
		//Make A JSON Object
		JSONObject obj = new JSONObject();
		obj.put("Table_name","Hospital");
		obj.put("Team_ID",tid);
		obj.put("Mobile",mobile);
		obj.put("Head_Name" , name);
		obj.put("City" , city);
		obj.put("State" , state);
	
		//Send it
		Execute_Statement e = new Execute_Statement();
		e.Insert(obj, "Teams");
	%>
</body>
</html>