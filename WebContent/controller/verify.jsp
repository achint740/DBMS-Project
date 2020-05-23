<%@page import="DataBase_Interface.Database_Auth"%>
<%@page import="SQL_Support.SQL_Commands"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Controller*</title>
</head>
<body>
	<%
		//Fetch data from html
		String user = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		//out.println("Here");
		
		
		//Create JSON Object
		JSONObject obj = new JSONObject();
		obj.put("user_id",user);
		obj.put("password",pwd);
		
		//Send It
		SQL_Commands s = new SQL_Commands("root", new Database_Auth().password, "cms");
		JSONObject ans1 = s.Verify(obj);
		out.println( ans1);

		//Receive Status
		boolean ans = true;
		if(ans1!=null){
		String url = "../people/";
		String c = ans1.getString("category");
		url+=c;
		url+="s.jsp";
	%>
		<h2>Validated!</h2>
		
		<a href="(String)url">Move to Main Page</a>
	<%
		}
		
		else{
	%>
		<a href="../forms/Login.jsp"><h2>Try AGAIN</h2></a>
	<%
		}
	%>
</body>
</html>