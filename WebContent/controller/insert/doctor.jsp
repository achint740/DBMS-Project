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
	
		String hid = request.getParameter("hid");
		String d_name = request.getParameter("doctorname");
		String d_id = request.getParameter("doctorid");
		String qualify = request.getParameter("qualify");
		
		JSONObject obj = new JSONObject();
		obj.put("hosp_id",hid);
		obj.put("doctor_id",d_id);
		obj.put("name",d_name);
		obj.put("Qualifications","qualify");
		
		Execute_Statement e = new Execute_Statement();
		e.Insert(obj,"Doctor");
	%>

</body>
</html>