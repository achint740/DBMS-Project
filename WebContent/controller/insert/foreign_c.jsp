<%@page import="org.json.JSONObject"%>
<%@page import="SQL_Support.SQL_Commands" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Foreign-Controller</title>
</head>
<body>
	<h2>Welcome to Foreign Data Controller</h2>
<%
	//Pick all from the html form
	String fname = request.getParameter("fname");
	String lname = request.getParameter("lname");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	String aadhar = request.getParameter("aadhar");
	String country = request.getParameter("country_visit");
	String date = request.getParameter("datevisit");
	
	//Make a JSON Object
	JSONObject obj = new JSONObject();
	obj.put("Table_name","Foreign");
	obj.put("Aadhar_Number",aadhar);
	obj.put("First_Name" , fname);
	obj.put("Last_Name" , lname);
	obj.put("Age" , age);
	obj.put("Gender" , gender);
	obj.put("Address_Line_1" , address);
	obj.put("City" , city);
	obj.put("State" , state);
	obj.put("Country_Visit", country);
	obj.put("Date_Visit", date);
	obj.put("Mobile" , mobile);
	
	//Send it
	SQL_Commands cmd = new SQL_Commands("root","Dawra@740","cms");
	cmd.Insert(obj);
	
%>

<h2>Thankyou for providing information!</h2>
<a href="../index.jsp"><h3>Go Back To Home Page</h3></a>

</body>
</html>