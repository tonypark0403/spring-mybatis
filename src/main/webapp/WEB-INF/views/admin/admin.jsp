<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%@ include file="../include/admin_menu.jsp"%>
	<c:if test="${message == 'success'}">
		<h2>Welcome to Home,
			${sessionScope.admin_name}(${sessionScope.admin_userid}).</h2>
	</c:if>
</body>
</html>