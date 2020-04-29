<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Controller*</title>
</head>
<body>
	<h1>Welcome to Login Controller</h1>
	<%
		//Fetch data from html
		String user = request.getParameter("user_id");
		String pwd = request.getParameter("password");
		
		//Create JSON Object
		JSONObject obj = new JSONObject();
		obj.put("User_ID",user);
		obj.put("Password",pwd);
		
		//Send It
	%>
</body>
</html>