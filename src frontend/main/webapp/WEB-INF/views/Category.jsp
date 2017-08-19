<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="admin.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="height.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <form class="form-horizontal">
  <form:form  modelAttribute="category" action="Category/savecategory" method="post">
  <form:hidden path="id"/><br><br><br><br><br>
  <div class="form-group">
   <label class="control-label col-sm-2" for="name">Enter category Name:</label>
  <div class="col-sm-4">
  <form:input path="categoryName" id="name" class="form-control"/><br>
  </div>
  </div><br>
   <div class="form-group">
    <label class="control-label col-sm-2" for="des">Enter category Description:</label>
   <div class="col-sm-4">
  <form:textarea path="categoryDescription" id="des" class="form-control"/><br>
  </div>
  </div><br>
   Select AddProduct<c:forEach items="${products }" var="p">
  <form:radiobutton path="products.id" value="${p.id }"/>${p.productName }
  </c:forEach><br>
   <div class="form-group">
    <div class="col-sm-offset-2 col-sm-4">
  <input type="submit" value="Category" class="form-control">
</div>
</div><br>  
 </form:form>
 </form>
 </div>
</body>

</html> --%>