<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CMS</title>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="style.css" rel="stylesheet">
<!-- 
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
 -->
</head>
<body>
	<!-- 
	<center><h1>Covid-19 Management System</h1></center>
	
	<a href="people/citizen.jsp"><img alt="" src="Images/indian.jpeg"></a>
	
	<a href="Login.jsp"><img alt="" src="Images/hospitalgreen.jpg"></a>
	
	<a href="Login.jsp"><img alt="" src="Images/admin.jpg"></a>
	
	<a href="Login.jsp"><img alt="" src="Images/team.jpg"></a>
	
	<a href="Login.jsp"><img alt="" src="Images/doctor.jpg"></a>
	
	<div class="loader-wrapper">
      <span class="loader"><span class="loader-inner"></span></span>
    </div>
     -->
     <!-- Vertical navbar -->
<div class="vertical-nav bg-white" id="sidebar">
  <div class="py-4 px-3 mb-4 bg-light">
  
    <div class="media d-flex align-items-center">
      <!-- 
      <img src="https://res.cloudinary.com/mhmd/image/upload/v1556074849/avatar-1_tcnd60.png" alt="..." width="65" class="mr-3 rounded-circle img-thumbnail shadow-sm">
       -->
      <div class="media-body">
        <h4 class="m-0">CMS</h4>
       <!-- <p class="font-weight-light text-muted mb-0">Web developer</p>  -->
      </div>
      
    </div>
 
  </div>

  <p class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0">Main</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item">
      <a href="index.jsp" class="nav-link text-dark font-italic bg-light">
                <i class="fa fa-th-large mr-3 text-primary fa-fw"></i>
                HOME
      </a>
    </li>
    <li class="nav-item">
      <a href="#" class="nav-link text-dark font-italic">
                <i class="fa fa-address-card mr-3 text-primary fa-fw"></i>
                ABOUT US
      </a>
    </li>
  </ul>

  <p class="text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0">Portals</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item">
      <a href="people/citizen.jsp" class="nav-link text-dark font-italic">
                <i class="fa fa-area-chart mr-3 text-primary fa-fw"></i>
                CITIZEN
            </a>
    </li>
    <li class="nav-item">
      <a href="Login.jsp" class="nav-link text-dark font-italic">
                <i class="fa fa-bar-chart mr-3 text-primary fa-fw"></i>
                HOSPITAL
            </a>
    </li>
    <li class="nav-item">
      <a href="Login.jsp" class="nav-link text-dark font-italic">
                <i class="fa fa-pie-chart mr-3 text-primary fa-fw"></i>
                DOCTOR
            </a>
    </li>
    <li class="nav-item">
      <a href="Login.jsp" class="nav-link text-dark font-italic">
                <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                TEAM
            </a>
    </li>
    <li class="nav-item">
      <a href="Login.jsp" class="nav-link text-dark font-italic">
                <i class="fa fa-line-chart mr-3 text-primary fa-fw"></i>
                ADMIN
       </a>
    </li>
  </ul>
</div>
<!-- End vertical navbar -->


<!-- Page content holder -->
<div class="page-content p-5" id="content">
  <!-- Toggle button -->
  <button id="sidebarCollapse" type="button" class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4"><i class="fa fa-bars mr-2"></i><small class="text-uppercase font-weight-bold">Toggle</small></button>

  <!-- Demo content -->
  <h2 class="display-4">Covid-19 Management System</h2>
  <p class="lead mb-0">We are in this together and we'll get through this together</p>
  <!-- 
  <p class="lead text-white">Snippet by <a href="https://bootstrapious.com/snippets" class="text-white">
        <u>Bootstrapious</u></a>
  </p>
   -->
  <div class="separator"></div>
  <div class="row text-white">
    <div class="col-lg-7">
      <p class="lead">The Online Covid-19 Management System allows the accurate
						display of information regarding CoronaVirus cases, available medical facilities, statistics of
						medical resources used and the number of pending cases and other information required to
						manage the pandemic.</p>
      
      <div class="bg-white p-5 rounded my-5 shadow-sm">
        <p class="lead font-italic mb-0" id="health"><b>"The COVID-19 pandemic has reminded all of us of the vital role health workers play to relieve suffering and save lives.
        It's essential to protect health workers from violence; to improve their mental health; to protect them from physical and biological hazards; to advance national programmes 
        for health worker safety, and to connect health worker safety policies to existing patient safety policies.
        <br> Giving workers the feeling that they are being protected by the national and local government and hospital is especially valuable because it increases their motivation
        and lowers their hesitation to work."</b>
        </p>
      </div>
      
      <p class="lead" id="vid"><b>New to this Site? Click Here to Get Started</b></p>
      
      <video class="lead" id="site_vid" controls autoplay>
      		<source src="./Images/covid.mp4" type="video/mp4">
      </video>
     
    </div>
    
    <div class="col-lg-5">
      <p class="lead"> <b>Covid-19 Transmission and Protective Measures </b> <br> 
      Covid-19 spreads primarily from person to person. Fighting this disease is our joint responsibility.
	  Protect yourself and others by making these simple precautions your new habits:
      </p>
      <ul class="list-group list-group-flush" id="who">
      	<li class="list-group-item">Clean your hands often</li>
      	<li class="list-group-item">Cough or sneeze in your bent elbow - not your hands!</li>
      	<li class="list-group-item">Avoid touching your eyes, nose and mouth</li>
      	<li class="list-group-item">Limit social gatherings and time spent in crowded places</li>
      	<li class="list-group-item">Avoid close contact with someone who is sick</li>
      	<li class="list-group-item">Clean and disinfect frequently touched objects and surfaces</li>
      	<li class="list-group-item">Avoid crowded or indoor settings</li>
      	<br> <br>
      </ul>
      <p class="lead">
      <b>WHO Advisory</b>
      <ul class="list-group list-group-flush">
      	<li class="list-group-item">Maintain at least a 1-metre distance between yourself and others</li>
      	<li class="list-group-item">Make wearing a mask a normal part of being around other people.</li>
      	<li class="list-group-item"	>Clean your hands before you put your mask on, as well as before and after you take it off and
    		make sure it covers both your nose, mouth and chin.</li>
    	<li class="list-group-item">Avoid the 3Cs: spaces that are closed, crowded or involve close contact.</li>
    	<li class="list-group-item"><a href="https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public">Complete Read ... </a></li>
      </ul>
      </p>
   
    </div>
  </div>

</div>
<!-- End demo content -->
     
</body>
<script src="jQuerry.js"></script>
<script src="script.js"></script>
</html>