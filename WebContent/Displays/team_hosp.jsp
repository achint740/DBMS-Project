<%@page import="java.util.ArrayList"%>
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
		String team_id = request.getParameter("teamid");
		
		JSONObject obj = new JSONObject();
		obj.put("Team_ID",team_id);
		
		Execute_Statement e = new Execute_Statement();
		ArrayList<JSONObject> c = e.Read(obj, "Team_Hosp");
		out.println(c);
	%>
</body>
</html>