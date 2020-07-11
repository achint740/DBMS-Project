<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CMS</title>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<style>
	body{
		background-image: url("Images/Main_Page.jpg");
		background-size: cover;
	}
	h1{
		color: red;
		text-decoration: underline;
		font-family: 'Lobster', cursive;
		font-size: 40px;
	}
	img{
		margin-top : 100px;
		margin-right : 150px;
		margin-left : 150px;
		height: 300px;
		width : 300px;
	}
	.content {
      display: flex;
      justify-content: center;
      align-items: center;
      width:100%;
      height:100%;
    }
    .loader-wrapper {
      width: 100%;
      height: 100%;
      position: absolute;
      top: 0;
      left: 0;
      background-color: #242f3f;
      display:flex;
      justify-content: center;
      align-items: center;
    }
    .loader {
      display: inline-block;
      width: 30px;
      height: 30px;
      position: relative;
      border: 4px solid #Fff;
      animation: loader 2s infinite ease;
    }
    .loader-inner {
      vertical-align: top;
      display: inline-block;
      width: 100%;
      background-color: #fff;
      animation: loader-inner 1s infinite ease-in;
    }
    @keyframes loader {
      0% { transform: rotate(0deg);}
      25% { transform: rotate(180deg);}
      50% { transform: rotate(180deg);}
      75% { transform: rotate(360deg);}
      100% { transform: rotate(360deg);}
    }
    @keyframes loader-inner {
      0% { height: 0%;}
      25% { height: 0%;}
      50% { height: 100%;}
      75% { height: 100%;}
      100% { height: 0%;}
    }
</style>
</head>
<body>
	<center><h1>Covid-19 Management System</h1></center>
	
	<a href="people/citizen.jsp"><img alt="" src="Images/indian.jpeg"></a>
	
	<a href="Login.jsp"><img alt="" src="Images/hospitalgreen.jpg"></a>
	
	<a href="Login.jsp"><img alt="" src="Images/admin.jpg"></a>
	
	<a href="Login.jsp"><img alt="" src="Images/team.jpg"></a>
	
	<a href="Login.jsp"><img alt="" src="Images/doctor.jpg"></a>
	
	<div class="loader-wrapper">
      <span class="loader"><span class="loader-inner"></span></span>
    </div>
</body>
<script src="jQuerry.js"></script>
  <script src="script.js"></script>
</html>