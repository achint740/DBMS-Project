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
	
		String hosp_id = request.getParameter("hosp_id");
		
		JSONObject obj = new JSONObject();
		obj.put("Hospital_ID",hosp_id);
	
		Execute_Statement e = new Execute_Statement();
		ArrayList<JSONObject> mylist = e.Read(obj, "Hospital_New_List");
	%>

	<table>
	
		<%
			for(int x=0;x<mylist.size();x++){
				JSONObject p = mylist.get(x);
		%>
			<tr>
				<td><%=p.get("First_Name")%></td>
				<td><%=p.get("Last_Name")%></td>
				<td class="td_aadhar"><%=p.get("Aadhar_Number")%></td>
				<td class="td_hosp"><%=p.get("Hospital_ID")%></td>
				<td class="td_doctor"><input type="text" name="d_id"></td>
				<td><button class="Assign">Assign</button></td>
		</tr>
		<%} %>
	</table>
	
	<form action="../insert/controller/patient_c.jsp" method="POST">
		<input type="hidden" id="aadhar_no" name="aadhar">
		<input type="hidden" id="doctor_id" name="pid">
		<input type="hidden" id="hosp_id" name="hid">
	</form>
	
	<script src="jQuerry.js"></script>
	<script type="text/javascript" src="hosp_new.js"></script>	
</body>
</html>