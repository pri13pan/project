<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- Angular Js -->
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
  <!-- JQuery -->
  <script src="https://code.jquery.com/ajax/jquery-2.2.1.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
   <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<title>Insert title here</title>

</head>

<body> 
<nav class="navbar navbar-inverse navbar-fixed-top" >
  <div class="container-fluid">   
<div class="navbar-header">
     
   
    <ul class="nav navbar-nav">
      <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">product
      <span class="caret"></span></a>
      <ul class="dropdown-menu">
      
     <li><a href="admin/productform">Add </a></li>
     <li><a href="admin/productform/viewproduct">View </a></li>  
      
      
    </ul>
    </li>
    </ul>
    <ul class="nav navbar-nav">
    <li class="dropdown">
       <a class="dropdown-toggle" data-toggle="dropdown" href="#">category
      <span class="caret"></span></a>
      <ul class="dropdown-menu">
      
     <li><a href="admin/Category">Add</a></li>     
     <li><a href="admin/Category/viewcategory">view</a></li>  
     <li><a href="#">edit</a></li> 
     <li><a href="#">delete</a></li>   
    </ul>
    </li>   
    </ul>
    </div>
    </div>
    </nav>
 
</body>
</html>

 --%>