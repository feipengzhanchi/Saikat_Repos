<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
<h3 align="center">Product Image Page</h3>
<div class="row text-center text-lg-left">
<c:forEach items="${productList }" var="product">
<div class="col-lg-3 col-md-4 col-6">
<a href="productinfo" class="d-block mb-4 h-100">
<c:set var="pid" value="${product.productName}${product.productId}"/>
<img class="img-fluid img-thumbnail" src="<c:url value="/resource/images/pid.jpg"/>" alt="" width="100" height="100"/>
<b>Price : ${product.price}/-</b>
<b>Stock : ${product.stock}/-</b>
<!--  <p>Price : ${product.price}/-</p>-->
<!-- <p>Stock : ${product.stock}/-</p>-->
</a>
</div>
</c:forEach>
</div>
</body>
</html>