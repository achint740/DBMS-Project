<%@page import="java.util.ArrayList"%>
<%@page import="org.json.*"%>
<%@page import="DataBase_Interface.Execute_Statement"%>
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
			//Fetch Location and type
			String city = request.getParameter("city");
		    String state = request.getParameter("state");
			String type = request.getParameter("type");
			
			//Check
			//out.println("Location : " + city + state + " Type : " + type);
			
			//Build a JSON Object
			JSONObject a = new JSONObject();
			a.put("city",city);
			a.put("state",state);
			
			//Send this and get the total cases
			Execute_Statement read_obj = new Execute_Statement();
			ArrayList<JSONObject> cases_list = read_obj.Read(a,type);
			out.println(cases_list);
		%>

</body>
</html>