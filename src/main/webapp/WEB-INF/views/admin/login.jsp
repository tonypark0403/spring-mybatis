<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/member/login.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<script>
	$(function() {
		$("#btnLogin").click(function() {
			var userid = $("#userid").val();
			var passwd = $("#passwd").val();
			if (userid == "") {
				alert("Please input ID.");
				$("#userid").focus();
				return;
			}
			if (passwd == "") {
				alert("Please input password.");
				$("#passwd").focus();
				return;
			}

			document.form1.action = "${path}/admin/login_check.do";
			document.form1.submit();
		});
	});
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<h2>Admin Login</h2>
	<form name="form1" method="post">
		<table border="1" width="400px">
			<tr>
				<td>ID</td>
				<td><input name="userid" id="userid"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="passwd" id="passwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button"
					id="btnLogin" value="Login"> <c:if
						test="${param.message == 'nologin' }">
						<div style="color: red;">Please Login first.</div>
					</c:if> <c:if test="${message == 'error' }">
						<div style="color: red;">Please check your ID or password.</div>
					</c:if> <c:if test="${message == 'logout' }">
						<div style="color: blue;">Log out successfully.</div>
					</c:if></td>
			</tr>
		</table>
	</form>
</body>
</html>