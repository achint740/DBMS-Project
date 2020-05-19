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
		String p_id = request.getParameter("patientid");
		String status = request.getParameter("status");
		
		JSONObject obj = new JSONObject();
		obj.put("Doctor_ID",d_id);
		obj.put("Patient_ID",p_id);
		obj.put("Testing_Status",status);
		
		Execute_Statement e = new Execute_Statement();
		
	%>
	
</body>
</html>