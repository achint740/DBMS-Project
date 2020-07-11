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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="style.css">
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
		userName = "ADMIN_NULL";
		//response.sendRedirect("Login.jsp");

		String t_id = userName;
		
		JSONObject obj = new JSONObject();
		obj.put("Team_ID",t_id);
		
		Execute_Statement e = new Execute_Statement();
		
		ArrayList<JSONObject> mylist = e.Read(obj,"Home_to_Govt_Guarantine");
		//out.println(mylist);
	%>
		<table id="Table" class="table table-hover border border-dark">
		
				<thead>
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
				</thead>
				<tbody>
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
		</tbody>
		</table>
		
		<button class="mybtn"><a href="../people/teams.jsp">Go Back</a></button>
		
		<form method="post" action="../controller/insert/insert_by_team.jsp" id="hidden_form">
			<input type="hidden" name="aadhar_no" id="myaadhar">
		</form>
		
	<script src="jQuerry.js"></script>
	<script type="text/javascript" src="team.js"></script>	
</body>
</html>