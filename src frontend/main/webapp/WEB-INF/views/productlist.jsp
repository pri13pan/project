<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List</title>
<script>
      $(document).ready(function() {
    	  var searchCondition='${searchCondition}';
    	  $('.table').DataTable({
    		  "lengthMenu" : [ [ 2,3,5,6,8,-1], [2,3,5,6,8,"ALL"]],
    		   
    		  "oSearch" : {
    			  "sSearch" : searchCondition
    		  }
    	  
    	  })
    	  
    	  
      });

</script>
</head>
<body>
<b>List of Products</b>
<div class="container">
<table class="table table-striped">
<thead>
<tr><th>Image</th><th>Product Name</th><th>Price</th><th>Category</th><th>Quantity</th><th>Description</th><th>Action</th></tr>
</thead>
<br><br>
<tbody>
<c:forEach items="${products}" var="p">
<c:url value="/resources/images/${p.id }.png" var="imageurl"></c:url>
<c:url value="/all/productform/viewproduct/${p.id}" var="viewUrl"></c:url>
<c:url value="/admin/productform/deleteproduct/${p.id}" var="deleteUrl"></c:url>
<c:url value="/admin/productform/geteditform/${p.id}" var="editUrl"></c:url>
<tr>
<td><img src="${imageurl }" height="50"></td>
<td><a href="${viewUrl}">${p.productName}</a></td><td>${p.price}</td><td>${p.category.categoryName }</td><td>${p.quantity}</td>
<td>${p.description}</td>
<td><a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign"></span></a>
<security:authorize access="hasRole('ROLE_ADMIN')">
<a href="${deleteUrl }"><span class="glyphicon glyphicon-trash"></span></a>
<a href="${editUrl }"><span class="glyphicon glyphicon-pencil"></span></a>
</security:authorize>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>