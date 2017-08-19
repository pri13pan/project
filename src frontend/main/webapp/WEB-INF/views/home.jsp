<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html lang="en">
<head>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<!--  <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Cosmetics</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home">Home</a></li>
      <li><a href="aboutus">About Us</a></li>
      <li><a href="contactus">Contact Us</a></li>
     
      

    </ul>
    <ul class="nav navbar-nav navbar-right">
    <c:url value="/registrationform" var="url"></c:url>
      <li><a href="${url}"><span class="glyphicon glyphicon-user">Register</span></a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       <li><a href="admin">Admin</a></li>
    </ul>
  </div>
</nav> -->


<div class="container">
    
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      

    </ol>

    
    <div class="carousel-inner" role="listbox">
      <div class="item active">
     
        <img class="first-slide home-image" src="resources/images/bang1.jpg" alt="first slide" style="width:200%"/>
        <div class="carousel-caption">
          <h3>Jewellery</h3>
          <p>Welcome to Jewellery World</p>
        </div>
      </div>

      <div class="item">
        <img class="second-slide home-image" src="resources/images/goldcollect.jpeg" alt="second slide" style="width:200%"/>
         <div class="carousel-caption">
          <h3>Collection</h3>
          <p> more collections available </p>
        </div>
      </div>
    
      <div class="item">
        <img class="third-slide home-image" src="resources/images/gold-orna-1.jpg" alt="third slide" style="width:200%"/>
<div class="carousel-caption">
          <h3>Glowup</h3>
          <p> Trustworthy ornaments</p>
        </div>
      </div>

 


    </div>

    
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


<div class="container">
<br><br><br>
<div class="row">

    <div class="col-md-6">
      <div class="Rounded Corners">
        <a href="resources/images/ring.jpg" target="_blank">
         <h3>Golden ornaments</h3>
          <img class="fourth-slide home-image" src="resources/images/chain.jpg" alt="fourth slide" style="width:500px">
         
          
        </a>
      </div>
    </div>

    <div class="col-md-6">
      <div class="Rounded Corners">
        <a href="resources/images/bang1.jpg" target="_blank">
<h3>Golden ornaments</h3>
          <img class="fifth-slide home-image" src="resources/images/braclet.jpg" alt="fifth slide" style="width:500px">
          
        </a>
      </div>
    </div>
    </div>
    </div>

<%@include file="footer.jsp" %>

  </body>
</html>  

 