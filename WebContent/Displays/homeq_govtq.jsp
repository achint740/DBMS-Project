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
<style>
	table{
		margin-left : 30%;
		margin-top: 10%;
		border: 2px dashed black;
	}

	td{
		padding-left: 20px;
		padding-top: 20px;
	}
</style>
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
		
				<tr>
					<th>First_Name</th>
					<th>Last_Name</th>
					<th>Aadhar_No</th>
					<th>Age</th>
					<th>Gender</th>
					<th>Address</th>
					<th>City</th>
					<th>State</th>
					<th>PinCode</th>
					<th>Action</th>
				</tr>
		
			<%
				for(int x=0;x<mylist.size();x++){
					JSONObject p = mylist.get(x);
					//out.println(p);
			%>
				<tr>
					<td><%=p.get("First_Name")%></td>
					<td><%=p.get("Last_Name")%></td>
					<td class="td_aadhar"><%=p.get("Aadhar_Number")%></td>
					<td><%=p.get("Age")%></td>
					<td><%=p.get("Gender")%></td>
					<td><%=p.get("Address_Line_1")%></td>
					<td><%=p.get("City")%></td>
					<td><%=p.get("State")%></td>
					<td><%=p.get("PinCode")%></td>
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