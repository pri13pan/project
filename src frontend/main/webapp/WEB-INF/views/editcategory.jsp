<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="admin.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:url value="/admin/Category/editcategory" var="url"></c:url>
<form:form action="${url}" modelAttribute="categoryObj">
<div class="form-group">
<form:hidden path="id" class="form-control"/>
</div><br><br><br>
<div class="form-group">
Category Name:<form:input path="categoryName" class="form-control"/><br>
<!--<form:errors path="productName" CSSStyle="color:Pink"></form:errors>-->
</div>
  <div class="form-group">
 Category Description <form:textarea path="categoryDescription" class="form-control"/><br>
  </div>
 
  <!--<div class="form-group">
  Select Category<c:forEach items="${categories }" var="c">
  <form:radiobutton path="category.id" value="${c.id }" />${c.categoryName }
  </c:forEach><br>
  </div>-->
  
  
  <div class="form-group">
  <input type="submit" value="Edit category" class="form-control">
  </div>



</form:form>


</body>
</html>

 --%>