 <%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<style type="text/css">
 table.center 
 {
    margin-left:auto; 
    margin-right:auto;
 }
</style>
</head>
<body>
<h3 align="center">Category menu</h3>
<form action="includecategory" method="post">
<table class="center">
<tr>
<td style="text-align: center;">Category Name</td>
<td style="text-align: center;"><input type="text" name="categoryName"></td>
</tr>
<tr>
<td style="text-align: center;">Category Description</td>
<td style="text-align: center;"><input type="text" name="categoryDesc"></td>
</tr>
<tr>
<td style="text-align: center;" colspan="2"><input type="submit" value="Add Category"></td>
</tr>
</table>
</form>
<table class="center" border="1">
<tr>
<td style="text-align: center;">Category ID</td>
<td style="text-align: center;">Category Name</td>
<td style="text-align: center;">Category Description</td>
<td style="text-align: center;">Edit</td>
<td style="text-align: center;">Delete</td>
</tr>
<c:forEach items="${categoryList}" var="category">
<tr>
<td style="text-align: center;">${category.categoryId}</td>
<td style="text-align: center;">${category.categoryName}</td>
<td style="text-align: center;">${category.categoryDesc}</td>
<td style="text-align: center;">
<a href="<c:url value="/amendCategory/${category.categoryId}"/>">Edit</a>
</td>
<td style="text-align: center;">
<a href="<c:url value="/${category.categoryId}/removeCategory"/>">Delete</a>
</td>
</tr>
</c:forEach>
</table>
</body>
</html>