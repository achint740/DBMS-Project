<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Portal</title>
<style>
	body{
		background-image: url("../Images/Sign_Up.jpg");
		background-size: cover;		
	}
	form{
		margin-left: 850px;
		margin-top: 100px;
	}
	h1{
		color: green;
		text-decoration: underline;
		font-family: 'Lobster', cursive;
		font-size: 40px;
		margin-left : 680px;	
	}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<h1>Welcome to CMS Sign-Up Portal</h1>
	<form method="post" action="../controller/verify.jsp">
		<input type="text" name="user_id" minlength="12" maxlength="12" placeholder="UserID" width="50"><br><br>
		<input type="password" name="password" placeholder="Enter Password" width="50"><br><br>
		<input type="submit" value="LOGIN"> 
	</form>
</body>
</html>

-->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Portal</title>
<head>
<link rel="stylesheet" type="text/css" href="login_style.css">
</head>
<body>
<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 width="800px" height="600px" viewBox="0 0 800 600" enable-background="new 0 0 800 600" xml:space="preserve">
<linearGradient id="SVGID_1_" gradientUnits="userSpaceOnUse" x1="174.7899" y1="186.34" x2="330.1259" y2="186.34" gradientTransform="matrix(0.8538 0.5206 -0.5206 0.8538 147.9521 -79.1468)">
	<stop  offset="0" style="stop-color:#FFC035"/>
	<stop  offset="0.221" style="stop-color:#F9A639"/>
	<stop  offset="1" style="stop-color:#E64F48"/>
</linearGradient>
<circle fill="url(#SVGID_1_)" cx="266.498" cy="211.378" r="77.668"/>
<linearGradient id="SVGID_2_" gradientUnits="userSpaceOnUse" x1="290.551" y1="282.9592" x2="485.449" y2="282.9592">
	<stop  offset="0" style="stop-color:#FFA33A"/>
	<stop  offset="0.0992" style="stop-color:#E4A544"/>
	<stop  offset="0.9624" style="stop-color:#00B59C"/>
</linearGradient>
<circle fill="url(#SVGID_2_)" cx="388" cy="282.959" r="97.449"/>
<linearGradient id="SVGID_3_" gradientUnits="userSpaceOnUse" x1="180.3469" y1="362.2723" x2="249.7487" y2="362.2723">
	<stop  offset="0" style="stop-color:#12B3D6"/>
	<stop  offset="1" style="stop-color:#7853A8"/>
</linearGradient>
<circle fill="url(#SVGID_3_)" cx="215.048" cy="362.272" r="34.701"/>
<linearGradient id="SVGID_4_" gradientUnits="userSpaceOnUse" x1="367.3469" y1="375.3673" x2="596.9388" y2="375.3673">
	<stop  offset="0" style="stop-color:#12B3D6"/>
	<stop  offset="1" style="stop-color:#7853A8"/>
</linearGradient>
<circle fill="url(#SVGID_4_)" cx="482.143" cy="375.367" r="114.796"/>
<linearGradient id="SVGID_5_" gradientUnits="userSpaceOnUse" x1="365.4405" y1="172.8044" x2="492.4478" y2="172.8044" gradientTransform="matrix(0.8954 0.4453 -0.4453 0.8954 127.9825 -160.7537)">
	<stop  offset="0" style="stop-color:#FFA33A"/>
	<stop  offset="1" style="stop-color:#DF3D8E"/>
</linearGradient>
<circle fill="url(#SVGID_5_)" cx="435.095" cy="184.986" r="63.504"/>
</svg>


<div class="container">
  <h2>login</h2>
  <form method="post" action="LoginServlet">
    <input type="text" class="email" placeholder="User-ID" name="userid">
    <br/>
    <input type="password" class="pwd" placeholder="password" name="pwd">
    <button class="signin">
    	<span>Sign In</span>
  	</button>  
  </form>
  
  <div class="reg"></div>
  <div class="sig"></div>

 
 
</div>
</body>