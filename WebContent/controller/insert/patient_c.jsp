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
	String date_admit = request.getParameter("date_admit");
	String date_discharge = request.getParameter("date_discharge");
	String status = request.getParameter("status");
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
	SQL_Commands cmd = new SQL_Commands("root","Dawra@740","cms");
	cmd.Insert(obj);
%>

<h2>Patient Details Entered Successfully</h2>
<a href="../../index.jsp"><h3>Click here to Go Back</h3></a>

</body>
</html>