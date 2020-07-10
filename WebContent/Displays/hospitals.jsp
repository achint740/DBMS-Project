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
			
			String city = request.getParameter("city");
	    	String state = request.getParameter("state");
	    	
	    	
	    	JSONObject obj = new JSONObject();
	    	obj.put("city",city);
	    	obj.put("state",state);
	    	
	    	Execute_Statement s = new Execute_Statement();
	    	ArrayList<JSONObject> hosp_list =  s.Read(obj, "Details_Nearby_Hospital");
		%>
		<table>
				<thead>
			<% 
			for(JSONObject obj1 : hosp_list){
				Iterator<String> keysItr = obj1.keys();
				while(keysItr.hasNext()){
					String key = keysItr.next();
			%>
					<th><%=key %></th>
			<%
				}
			}
		    %>
		    	</thead>
		    	<tr>
		    <% 
			for(JSONObject obj2 : hosp_list){
				Iterator<String> keysItr = obj2.keys();
				while(keysItr.hasNext()){
					String key = keysItr.next();
					Object value = obj2.get(key);
			%>
					<td><%=value %></td>
			<%
				}
			}
		    %>
		    	</tr>
			</table>
</body>
</html>