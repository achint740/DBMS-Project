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
		String pid = request.getParameter("pid");
	
		JSONObject obj = new JSONObject();
		obj.put("Patient_ID",pid);
		
		Execute_Statement e = new Execute_Statement();
		ArrayList<JSONObject> x = e.Read(obj, "Patient_Info");
		out.print(x);
	%>
</body>
</html>