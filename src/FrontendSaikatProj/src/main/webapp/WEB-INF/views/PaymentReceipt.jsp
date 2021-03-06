<%@include file="CommonNavbar.jsp" %>
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
<div class="container">
<h3 align="center">Payment Receipt</h3>
<table class="table bordered">
<tr bgcolor="cyan">
<td>Order Id</td>
<td>${customerOrder.orderId}</td>
<td>Order Date</td>
<td>${customerOrder.dateOfOrder}</td>
</tr>
<tr bgcolor="orange">
<td>Customer Name</td>
<td>${userDetail.username}</td>
<td>Payment Mode</td>
<td>${customerOrder.paymentMode}</td>
</tr>
<tr bgcolor="cyan">
<td>Order Delivery Address</td>
<td colspan="3">${userDetail.address}</td>
</tr>
</table>
<br><br><br>
<table class="table bordered">
<tr bgcolor="silver">
<td><b> SL # </b></td>
<td><b> Product Name</b></td>
<td><b> Quantity</b></td>
<td><b> Price</b></td>
<td colspan="4"><b>Total Price</b></td>
</tr>


<c:forEach items="${listCartItems}" var="cartItem" varStatus="loop">
<!-- <form action="<c:url value="/amendcartitem/${cartItem.cartId}"/>" method="get"> -->
<tr>

<td>${loop.index + 1}</td>
<td> ${cartItem.productName}</td>
<td> ${cartItem.quantity}</td>
<!--<input type="text" name="quantity" id="quantity" value="${cartItem.quantity}"/>  -->
<td> ${cartItem.price}</td>
<td colspan="5"> ${cartItem.quantity * cartItem.price}/-</td>
</tr>
<!-- </form> -->
</c:forEach>
<tr bgcolor="cyan">
<td ><b>Total Cart Price</b></td>
<td/>
<td/>
<td/>	
<td ><b>Rs.${customerOrder.orderPrice}/-</b></td>
<td/>
<td/>
</tr>
<tr bgcolor="gray">
<td colspan="7" style="text-align: center;">
<b>Thank you for shopping with us.Please visit again.</b>
</td>
</tr>
</table>
</div>
</body>
</html>