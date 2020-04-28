<%@page import="org.json.JSONObject"%>
<%@page import="SQL_Support.SQL_Commands" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Foreign Data</title>
</head>
<body>
	<%
		SQL_Commands cmd = new SQL_Commands("root","Dawra@740","cms");
		String[] features = {"*"};
		List<JSONObject> val= cmd.Read(features, "Foreign");
		for(JSONObject obj : val){
	%>
			<table>
				<tr>
					<td><%=obj.fname%></td>
					<td><%=obj.lname%></td>
					<td><%=obj.age%></td>
					<td><%=obj.gender%></td>
					<td><%=obj.mobile%></td>
					<td><%=obj.city%></td>
					<td><%=obj.state%></td>
					<td><%=obj.aadhar %></td>
					<td><%= obj.Countryvisit%></td>
					<td><%=obj.datevisit %></td>
				</tr>
			</table>
	<% 
		}
	%>
</body>
</html>