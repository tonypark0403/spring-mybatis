<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<%@ include file="include/header.jsp"%>
</head>
<body>
	<%@ include file="include/menu.jsp"%>
	<c:if test="${sessionScope.userid != null }">
		<h2>Welcome to Home, ${sessionScope.name}(${sessionScope.userid}).</h2>
	</c:if>

	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
</body>
</html>