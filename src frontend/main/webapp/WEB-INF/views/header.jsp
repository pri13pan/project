<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
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



<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button> 

<div class="navbar-header">
<c:url value="/resources/images/gold-orna-1.jpg" var="url5"></c:url>
  <a class="navbar-brand" href="#"><img src="${url5 }" alt="NIIT" height="30px" width="30px"></a>
  </div>
  
  <div class="collapse navbar-collapse" id="collapse-example">
  <ul class="nav navbar-nav">
<c:url value="/home" var="url1"></c:url>
  <li class="active"><a href="${url1 }">Home<span class="sr-only">You are in home page link</span></a></li>
 
 <c:url value="/contactus" var="url2"></c:url>
  <li><a href="${url2 }">Contact us</a></li>
 
  <c:url value="https://en.wikipedia.org/wiki/Jewellery" var="url3"></c:url>
  <li><a href="${url3 }">About us</a></li>
</ul>  
 
 
  
  <ul class="nav navbar-nav navbar-right">
  
  <c:url value="/admin/productform/" var="url9"></c:url>
  
       <li>
   	<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<security:authorize access="hasRole('ROLE_ADMIN')">
			<a href="${url9}">Add Product</a>
		    </security:authorize>
			</c:if>
			</li>
  
  
  <c:url value="/all/productform/viewproduct" var="url4"></c:url>
			<li><a href="${url4 }">Browse All Products</a></li>
    
      <li>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<a href="">Welcome ${pageContext.request.userPrincipal.name }</a>
			</c:if>
			</li>
	
	<c:if test="${pageContext.request.userPrincipal.name==null }">	
	<c:url value="/registrationform" var="url5"></c:url>
    <li><a href="${url5}"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
     
    <c:url value="/login" var="url6"></c:url>
      <li><a href="${url6}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      
      <li><security:authorize access="hasRole('ROLE_USER')">
         <li><a href="<c:url value="/cart/getcart"></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
         </security:authorize></li>
      
      
       <c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
		    <c:if test="${pageContext.request.userPrincipal.name!=null }">
		    <li><a href="${logoutUrl }">logout</a></li>
		    </c:if>
      
    
   
<li class="dropdown">
<a href="" class="dropdown-toggle" data-toggle="dropdown">Select by Category
<b class="caret"></b></a>
<ul class="dropdown-menu">
<li>
<c:forEach items="${categories}" var="c">
<c:url value="/all/addproduct/searchbycategory?searchCondition=${c.categoryName}" var="url7"></c:url>
<a href="${url7}">${c.categoryName}</a>
</c:forEach>
<c:url value="/all/addproduct/searchbycategory?searchCondition=All" var="url8"></c:url>
<a href="${url8}">All</a>
</li>
 </ul> 
 </li> 
</ul>

</div>
</div>
</nav>
  
</body>
</html>

