<%@page import="DataBase_Interface.Database_Auth"%>
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
		String hosp_id = request.getParameter("hosp_id");
		
		//out.println(aadhar + "  " + hosp_id);
		
		JSONObject obj = new JSONObject();
		obj.put("Table_Name","Govt_Quarantined");
		//obj.put("Hospital_ID",hosp_id);
		obj.put("Aadhar_Number",aadhar);
		
		SQL_Commands s = new SQL_Commands("root", new Database_Auth().password, "cms");
		s.Delete(obj);
		
		JSONObject obj1 = new JSONObject();
		obj1.put("Table_Name","Patient_Buffer");
		obj1.put("Aadhar_Number",aadhar);
		obj1.put("Hospital_ID",hosp_id);
		s.Insert(obj1);
		
	%>
	<h2>Referred to Hospital Successfully</h2>
	<button><a href="../../Displays/govtq_hosp.jsp">Go Back</a></button>
	
</body>
</html>