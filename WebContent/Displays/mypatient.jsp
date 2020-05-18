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
		String d_id = request.getParameter("doctorid");
	
		JSONObject obj = new JSONObject();
		obj.put("Doctor_ID",d_id);
		
		Execute_Statement e = new Execute_Statement();
		ArrayList<JSONObject> c = e.Read(obj,"MyPatients");
		out.println(c);
	%>
</body>
</html>