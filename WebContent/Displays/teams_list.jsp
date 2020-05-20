<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="java.util.ArrayList"%>
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
		String t_id = request.getParameter("teamid");
		
		JSONObject obj = new JSONObject();
		obj.put("Team_ID",t_id);
		
		Execute_Statement e = new Execute_Statement();
		
		ArrayList<JSONObject> mylist = e.Read(obj,"Home_to_Govt_Guarantine");
		//out.println(mylist);
	%>
		<table>
		
			<%
				for(int x=0;x<mylist.size();x++){
					JSONObject p = mylist.get(x);
			%>
				<tr>
					<td><%="Name"%></td>
					<td><%=p %></td>
					<td><button class="Plus">ADD</button></td>
				</tr>
			
			<%} %>
		
		</table>
		
		<form method="post" action="../insert/insert_by_team.jsp" id="hidden_form">
			<input type="hidden" name="aadhar_no" id="myaadhar">
		</form>
		
	<script src="jQuerry.js"></script>
	<script type="text/javascript" src="team.js"></script>	
</body>
</html>