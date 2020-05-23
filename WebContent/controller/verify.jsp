<%@page import="SQL_Support.SQL_Commands"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Controller*</title>
<link href="https://fonts.googleapis.com/css2?family=Lora:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Piedra&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<style>
.mybtn{
	  background-color: rgb(33, 58, 219);
	  border: none;
	  color: white;
	  padding: 20px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 4px 2px;	
	  border-radius:75%;
	  height: 500px;
	  width : 450px;
	  margin-left: 700px;
	  margin-top: 170px;
}
a{
	color: black;
	font-size: 100px;
	font-family: 'Lora', serif;
	
}
a:hover{
	color: red;
}
.h1{
	margin-left: 700px;	
	font-size: 50px;
	font-family: 'Piedra', cursive;
}
body{
background-color: rgb(157, 227, 198);
}
</style>
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
		SQL_Commands s = new SQL_Commands("root", "Dawra@740", "cms");
		JSONObject ans1 = s.Verify(obj);
		//Receive Status
		boolean ans = true;
		if(ans1!=null){
			String c = ans1.getString("category");
	%>      
			<nav class="navbar navbar-light bg-light">
  				<span class="navbar-brand mb-0 h1">Validated! All Good To Go</span>
			</nav>
			
			<% if(c.matches("team")){ %>
				<button class="mybtn"><a href="../people/teams.jsp">GO</a></button>
			<%} %>	
			<% if(c.matches("doctor")){ %>
				<button class="mybtn"><a href="../people/doctor.jsp">GO</a></button>
			<%} %>
			<%  if(c.matches("hospital")){ %>
				<button class="mybtn"><a href="../people/hospital.jsp">GO</a></button>
			<%} %>
			<%  if(c.matches("government")){ %>
				<button class="mybtn"><a href="../people/admin.jsp">GO</a></button>
			<%} %>
			
	<%
		}
		else{
	%>
		<nav class="navbar navbar-light bg-light">
  				<span class="navbar-brand mb-0 h1">Wrong ID Or PassWord</span>
		</nav>
		<button class="mybtn"><a href="../forms/Login.jsp">TRY AGAIN</a></button>
	<%
		}
	%>
	
</body>

</html>

