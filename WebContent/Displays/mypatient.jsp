<%@page import="java.util.*"%>
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
		String d_id = request.getParameter("doctorid");
	
		JSONObject obj1 = new JSONObject();
		obj1.put("Doctor_ID",d_id);
		
		Execute_Statement e = new Execute_Statement();
		ArrayList<JSONObject> list = e.Read(obj1,"My_Patients");
		//out.println(list);
	%>
	<table>
				<thead>
			<% 
			for(JSONObject obj : list){
				Iterator<String> keysItr = obj.keys();
				while(keysItr.hasNext()){
					String key = keysItr.next();
			%>
					<th><%=key %></th>
			<%
				}
				break;
			}
		    %>
		    	</thead>
		    <% 
			for(JSONObject obj : list){
				Iterator<String> keysItr = obj.keys();
			%>  
				<tr>
			<% 
				while(keysItr.hasNext()){
					String key = keysItr.next();
					Object value = obj.get(key);
			%>
					<td><%=value %></td>
			<%
				}
			%>
				</tr>
			<% 
			}
			
		    %>
			</table>
</body>
</html>