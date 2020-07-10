<%@page import="java.util.*"%>
<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team Read</title>
</head>
<body>
	<%
	
		JSONObject obj1 = new JSONObject();
	
		Execute_Statement e = new Execute_Statement();
		
		ArrayList<JSONObject> list = e.Read(obj1,"Teams");
		out.println(list);
	
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