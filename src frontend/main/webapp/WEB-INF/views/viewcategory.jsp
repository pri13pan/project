<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="admin.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head><br><br><br>
<body>
<b>Details about the Category</b>
<table>
<tr>
<td>Category Name:</td><td>${category.categoryName }</td>
</tr>
<tr>
<td>Category Description:</td><td>${category.categoryDescription }</td>
</tr>
</table>
<c:url value="/admin/Category/viewcategory" var="url1"></c:url>
<a href="${url1 }">Back to category list</a>
<br>
</body>
</html> --%>