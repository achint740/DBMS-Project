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
		obj.put("Country","India");
		
		Execute_Statement read_obj = new Execute_Statement();
		read_obj.Read(obj, "Total_Cases");
	%>
</body>
</html>