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
	String patient_id = "P0005";
	String doctor_id = request.getParameter("did");
	String hosp_id = request.getParameter("hid");
	String date_admit = java.time.LocalDate.now().toString();
	String status = "positive";
	String aadhar = request.getParameter("aadhar");
	
	out.println(date_admit);
	
	//Make A JSON Object
	JSONObject obj = new JSONObject();
	obj.put("Table_Name","Patient");
	obj.put("Aadhar_Number",aadhar);
	obj.put("Doctor_ID", doctor_id);
	obj.put("Patient_ID", patient_id);
	obj.put("Hospital_ID" , hosp_id);
	//obj.put("Date_Admit" , date_admit);
	//obj.put("Status",status);
	
	//Send it
	Execute_Statement e = new Execute_Statement();
	e.Insert(obj, "Entity_Patient");
	
	//Remove this from patient_buffer
	SQL_Commands s = new SQL_Commands("root", "Jains1008@", "cms");
	JSONObject obj1 = new JSONObject();
	obj1.put("Aadhar_Number",aadhar);
	obj1.put("Table_Name","Patient_Buffer");
	s.Delete(obj1);
%>

<h2>Patient Details Entered Successfully</h2>

</body>
</html>