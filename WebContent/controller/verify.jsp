<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Controller*</title>
</head>
<body>
	<h1>Validating your Data</h1>
	<%
		//Fetch data from html
		String user = request.getParameter("user_id");
		String pwd = request.getParameter("password");
		//out.println("Here");
		
		//Create JSON Object
		//JSONObject obj = new JSONObject();
		//obj.put("User_ID",user);
		//obj.put("Password",pwd);
		
		//Send It
		
		
		//Receive Status
		if(true){
	%>
		<h2>Validated!</h2>
		<a href="../mainpage.jsp">Move to Main Page</a>
	<%
		}
		
		else{
	%>
		<a href="../login.jsp"><h2>Try AGAIN</h2></a>
	<%
		}
	%>
</body>
</html>