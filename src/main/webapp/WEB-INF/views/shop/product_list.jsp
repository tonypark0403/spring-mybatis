<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/shop/product_list.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<script>
	function add_product() {
		window.location = "${path}/shop/product/write.do";
	}
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<h2>Product List</h2>
	<input type="button" value="Add Product"
		onclick="javascript:add_product()">
	<table border="1" width="500px">
		<tr>
			<th>Product ID</th>
			<th>&nbsp;</th>
			<th>Product Name</th>
			<th>Price</th>
		</tr>
		<c:forEach var="row" items="${list}">
			<tr>
				<td>${row.product_id}</td>
				<td><img src="${path}/images/${row.picture_url}" width="100px"
					height="100px"></td>
				<td><a href="${path}/shop/product/detail/${row.product_id}">${row.product_name}</a>
					<!-- Only for admin user --> <c:if
						test="${sessionScope.admin_userid != null}">
						<br>
						<a href="${path}/shop/product/edit/${row.product_id}"> [Edit]</a>
					</c:if></td>
				<td><fmt:formatNumber value="${row.price}" pattern="#,###" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
