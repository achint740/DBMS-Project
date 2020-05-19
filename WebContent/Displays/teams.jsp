<%@page import="java.util.ArrayList"%>
<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team Read</title>
</head>
<body>
	<%
	
		JSONObject obj = new JSONObject();
	
		Execute_Statement e = new Execute_Statement();
		
		ArrayList<JSONObject> c = e.Read(obj,"Teams");
		out.println(c);
	
	%>
</body>
</html>