<%@page import="DataBase_Interface.Database_Auth"%>
<%@page import="org.json.JSONObject"%>
<%@page import="SQL_Support.SQL_Commands" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quarantine Data Controller</title>
</head>
<body>
	<h1>Welcome to Quarantine Data Controller</h1>
<%
	//Get all the parameters
	String s_date = request.getParameter("start_date");
	String e_date = request.getParameter("end_date");
	String aadhar = request.getParameter("aadhar");
	String status = request.getParameter("status");
	
	//Make A JSON Object
	JSONObject obj = new JSONObject();
	obj.put("Table_name","Quarantine");
	obj.put("aadhar",aadhar);
	obj.put("start_date",s_date);
	obj.put("end_date",e_date);
	obj.put("status",status);
	//Send it
	SQL_Commands cmd = new SQL_Commands("root",new Database_Auth().password,"cms");
	cmd.Insert(obj);	
%>

<h2>Details Entered Successfully</h2>
<a href="../../index.jsp"><h3>Go Back to Home Page</h3></a>

</body>
</html>