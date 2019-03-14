<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/shop/product_write.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/admin_menu.jsp"%>
	<script>
		function product_delete() {
			if (confirm("Delete?")) {
				document.form1.action = "${path}/shop/product/delete.do";
				document.form1.submit();
			}
		}

		function product_update() {
			// For name tag
			// var product_name=document.form1.product_name.value;

			// For id
			var product_name = $("#product_name").val();
			var price = $("#price").val();
			var description = $("#description").val();
			if (product_name == "") {
				alert("Input product name.");
				$("#product_name").focus();
				return;
			}
			if (price == "") {
				alert("Input price.");
				$("#price").focus();
				return;
			}
			if (description == "") {
				alert("Input product description.");
				$("#description").focus();
				return;
			}
			document.form1.action = "${path}/shop/product/update.do";
			document.form1.submit();
		}
	</script>


	<h2>Edit Product Information</h2>
	<form name="form1" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<td>Name</td>
				<td><input name="product_name" id="product_name"
					value="${dto.product_name}"></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input name="price" id="price" value="${dto.price}"></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><textarea rows="5" cols="60" name="description"
						id="description">${dto.description}</textarea></td>
			</tr>
			<tr>
				<td>Image</td>
				<td><img src="${path}/images/${dto.picture_url}" width="300px"
					height="300px"> <br> <input type="file" name="file1"
					id="file1"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="hidden"
					name="product_id" value="${dto.product_id}"> <input
					type="button" value="Update" onclick="product_update()"> <input
					type="button" value="Delete" onclick="product_delete()"> <input
					type="button" value="List"
					onclick="location.href='${path}/shop/product/list.do'"></td>
			</tr>
		</table>
	</form>

</body>
</html>
