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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<%
		String state = request.getParameter("state");
		
		JSONObject obj1 = new JSONObject();
		obj1.put("state",state);
		
		Execute_Statement s = new Execute_Statement();
		ArrayList<JSONObject> list = s.Read(obj1, "City_Analysis");
	%>
			<table id="Table" class="table table-hover border border-dark">
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
		    	</thead><tbody>
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
			 <%}%>
		    </tbody>
			</table>
</body>
</html>