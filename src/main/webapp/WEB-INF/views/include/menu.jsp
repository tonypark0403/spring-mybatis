<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/include/menu.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<a href="${path}">Home</a>
<a href="${path}/memo/list.do">Memo</a>
<a href="${path}/upload/uploadForm">Upload</a>
<a href="${path}/shop/product/list.do">Products</a>
<div style="text-align: right;">
	<c:choose>
		<c:when test="${sessionScope.userid == null }">
			<a href="${path}/member/login.do">Login</a>
		</c:when>
		<c:otherwise>
			Welcome, ${sessionScope.name}.
			<a href="${path}/member/logout.do">Logout</a>
		</c:otherwise>
	</c:choose>
</div>
<hr>
