<%@page import="java.time.LocalDate"%>
<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="org.json.JSONObject"%>
<%@page import="SQL_Support.SQL_Commands" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Data Controller</title>
</head>
<body>
<h2>Welcome To Patient Data Controller</h2>
<%
	//Get all the parameters
	String patient_id = request.getParameter("pid");
	String hosp_id = request.getParameter("hid");
	String date_admit = java.time.LocalDate.now().toString();
	String date_discharge = "";
	String status = "Positive";
	String aadhar = request.getParameter("aadhar");
	
	//Make A JSON Object
	JSONObject obj = new JSONObject();
	obj.put("Table_name","Patient");
	obj.put("Aadhar_Number",aadhar);
	obj.put("pid", patient_id);
	obj.put("hid" , hosp_id);
	obj.put("Date_Admit" , date_admit);
	obj.put("Date_Discharge" , date_discharge);
	obj.put("Status",status);
	
	//Send it
	Execute_Statement e = new Execute_Statement();
	e.Insert(obj, "Patient");
%>

<h2>Patient Details Entered Successfully</h2>

</body>
</html>