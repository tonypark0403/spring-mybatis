<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/shop/product_detail.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<h2>Product in detail</h2>
	<table>
		<tr>
			<td><img src="${path}/images/${dto.picture_url}" width="300px"
				height="300px"></td>
			<td align="center">
				<table>
					<tr>
						<td>Name</td>
						<td>${dto.product_name}</td>
					</tr>
					<tr>
						<td>Price</td>
						<td>${dto.price}</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>${dto.description}</td>
					</tr>
					<tr>
						<td colspan="2">
							<form name="form1" method="post"
								action="${path}/shop/cart/insert.do">
								<input type="hidden" name="product_id" value="${dto.product_id}">
								<select name="amount">
									<c:forEach begin="1" end="10" var="i">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select> <input type="submit" value="Add in Cart">
							</form>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
