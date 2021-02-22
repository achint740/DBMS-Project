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
		String userName = null;
		Cookie[] cookies = request.getCookies();
		if(cookies !=null){
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("user")) 
					userName = cookie.getValue();
				//out.println("Value : " + cookie.getValue());
			}
		}
	
		if(userName == null) 
			userName = "DOCTOR_NULL";
		
		String d_id = userName;
		String p_id = request.getParameter("patientid");
		String status = request.getParameter("status");
		
		JSONObject what = new JSONObject();
		JSONObject where = new JSONObject();
		
		where.put("Doctor_ID",d_id);
		where.put("Patient_ID",p_id);
		what.put("Testing_Status",status);
		System.out.print(what);
		Execute_Statement e = new Execute_Statement();
		e.Update(what, where, "Entity_Patient");
		
		out.println("Updated!");
		
	%>
	
</body>
</html>