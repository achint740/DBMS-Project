<%@page import="java.util.ArrayList"%>
<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		JSONObject obj = new JSONObject();
	
		Execute_Statement s = new Execute_Statement();
		ArrayList<JSONObject> x =  s.Read(obj, "State_Analysis");
		out.println(x);
	%>
</body>
</html>