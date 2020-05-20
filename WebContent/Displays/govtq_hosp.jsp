<%@page import="java.util.ArrayList"%>
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
		String tid = request.getParameter("teamid");
	
		JSONObject obj = new JSONObject();
		obj.put("Team_ID",tid);
		
		Execute_Statement e = new Execute_Statement();
		ArrayList<JSONObject> mylist = e.Read(obj,"Govt_Guarantine_to_Hospital");
		
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
					<th>Enter HID</th>
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
					<td class="td_hosp"><input type="text" name="hosp_id" id="hid"></td>
					<td><button class="Plus">ADD</button></td>
				</tr>
			
			<%} %>
		
		</table>
		
		<form method="post" action="../controller/insert/insert_by_team_new.jsp" id="hidden_form">
			<input type="hidden" name="aadhar_no" id="myaadhar">
			<input type="hidden" name="hosp_id" id="hosp">
		</form>
		
		<script src="jQuerry.js"></script>
		<script type="text/javascript" src="govt_hosp.js"></script>
		
</body>
</html>