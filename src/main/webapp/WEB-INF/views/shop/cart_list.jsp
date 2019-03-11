<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/shop/cart_list.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<script>
	$(function() {
		$("#btnList").click(function() {
			location.href = "${path}/shop/product/list.do";
		});
		$("#btnDelete").click(function() {
			if (confirm("Cancel your items in cart?")) {
				location.href = "${path}/shop/cart/deleteAll.do";
			}
		});
	});
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<h2>Cart</h2>
	<c:choose>
		<c:when test="${map.count == 0}">
		Empty in your cart..
	</c:when>
		<c:otherwise>
			<form id="form1" name="form1" method="post"
				action="${path}/shop/cart/update.do">
				<table border="1" width="400px">
					<tr>
						<th>Product</th>
						<th>Price</th>
						<th>Amount</th>
						<th>Total</th>
						<th>&nbsp;</th>
					</tr>
					<c:forEach var="row" items="${map.list}">
						<tr align="center">
							<td>${row.product_name}</td>
							<td><fmt:formatNumber value="${row.price}"
									pattern="#,###,###" /></td>
							<td><input type="number" name="amount" style="width: 30px;"
								value="<fmt:formatNumber value="${row.amount}" pattern="#,###,###" />">
								<input type="hidden" name="cart_id" value="${row.cart_id}"></td>
							<td><fmt:formatNumber value="${row.money}"
									pattern="#,###,###" /></td>
							<td><a
								href="${path}/shop/cart/delete.do?cart_id=${row.cart_id}">Delete</a></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="5" align="right">Total amount in cart : <fmt:formatNumber
								value="${map.sumMoney}" pattern="#,###,###" /><br>
							Delivery fee : ${map.fee}<br> Total : <fmt:formatNumber
								value="${map.sum}" pattern="#,###,###" />
						</td>
					</tr>
				</table>
				<button id="btnUpdate">Update</button>
				<button type="button" id="btnDelete">Remove items</button>
			</form>
		</c:otherwise>
	</c:choose>
	<button type="button" id="btnList">Product List</button>
</body>
</html>
