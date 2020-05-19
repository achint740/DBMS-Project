<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="java.util.ArrayList"%>
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
	
	String city = request.getParameter("city");
	
	JSONObject obj = new JSONObject();
	obj.put("city",city);
	
	Execute_Statement e = new Execute_Statement();
	ArrayList<JSONObject> c = e.Read(obj, "Foreign_List");
	out.println(c);
	%>
</body>
</html>