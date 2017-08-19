<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="admin.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--<script>
      $(document).ready(function() {
    	  var searchCondition='${searchCondition}';
    	  $('.table').DataTable({
    		  "lengthMenu" : [ [ 2,3,4,5,6,-1], [ 2,3,4,5,6,"ALL"]],
    		   
    		  "oSearch" : {
    			  "sSearch" : searchCondition
    		  }
    	  
    	  })
    	  
    	  
      });

</script>-->
</head>

<br><br>
<body>
<br><br>
<b>List of Category</b>
<div class="container">
<table class="table table-striped">
<thead>
<tr><th>Category Name</th><th>Category Description</th><th>Action</th></tr>
</thead>
<br><br>
<tbody>
<c:forEach items="${categorys}" var="c">


<c:url value="/admin/Category/viewcategory/${c.id}" var="viewUrl"></c:url>
<c:url value="/admin/Category/deletecategory/${c.id}" var="deleteUrl"></c:url>
<c:url value="/admin/Category/geteditform/${c.id}" var="editUrl"></c:url>
<tr>
<td><a href="${viewUrl}">${c.categoryName}</a></td>
<td>${c.categoryDescription}</td>
<td><a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign"></span></a>
<a href="${deleteUrl }"><span class="glyphicon glyphicon-trash"></span></a>
<a href="${editUrl }"><span class="glyphicon glyphicon-pencil"></span></a></td>
</tr>

</c:forEach>
</tbody>
</table>
</div>
</body>
</html>
 --%>