<%@page import="SQL_Support.SQL_Commands"%>
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
		String aadhar = request.getParameter("aadhar_no");
		
		JSONObject obj = new JSONObject();
		obj.put("Aadhar_Number",aadhar);
		
		Execute_Statement e = new Execute_Statement();
		//e.Insert(obj, "Entity_Govt_Quarantine");
		
		JSONObject d = new JSONObject();
		d.put("Aadhar_Number",aadhar);
		d.put("Table_Name","Govt_Quarantine_Buffer");
		
		SQL_Commands s = new SQL_Commands("root", "Jains1008@","cms");
		s.Delete(d);
		
	%>
</body>
</html>