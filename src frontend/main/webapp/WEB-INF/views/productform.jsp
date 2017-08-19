<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Form</title>
</head>
<body>
   <c:url value="/admin/productform/saveproduct" var="prod"></c:url>
  <form:form action="${prod}" method="post" modelAttribute="product" enctype="multipart/form-data">
  <div class="form-group">
  <form:hidden path="id" class="form-control"/>
  </div>
  <br><br><br><br>
  <div class="form-group">
  Enter Product Name<form:input path="productName" class="form-control"/><br>
  <form:errors path="productName" cssStyle="color:red"></form:errors>
  </div>
  <div class="form-group">
  Enter price <form:input path="price" class="form-control"/><br>
  <form:errors path="price" cssStyle="color:red"></form:errors>
  </div>
  <div class="form-group">
  Enter Quantity <form:input path="quantity" class="form-control"/><br></div>
  <div class="form-group">
  Enter Description <form:textarea path="description" class="form-control"/><br>
  <form:errors path="description" cssStyle="color:red"></form:errors>
  </div>
  
  <div class="form-group">
  Select Category<c:forEach items="${categories }" var="c">
  <form:radiobutton path="category.id" value="${c.id }"/>${c.categoryName }
  </c:forEach><br></div>
  
  <div class="form-group">
  Upload an image <input type="file" name="image">
  
  </div>
  <div class="form-group">
  <input type="submit" value="Add Product" class="form-control">
  </div>
 
  </form:form>
</body>
</html>