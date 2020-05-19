<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Citizen UPD Controller</title>
</head>
<body>

	<%
		String aadhar = request.getParameter("aadhar");
		String age = request.getParameter("age");
		
		JSONObject where = new JSONObject();
		where.put("Aadhar_Number",aadhar);
		
		JSONObject what = new JSONObject();
		what.put("Age",age);
		
		Execute_Statement e = new Execute_Statement();
		
		e.Update(what, where, "Entity_Person_Details");
		
	%>

</body>
</html>