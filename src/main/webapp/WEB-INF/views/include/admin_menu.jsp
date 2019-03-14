<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- views/include/admin_menu.jsp -->
<%@ taglib prefix="c" 
uri="http://java.sun.com/jsp/jstl/core" %>

<a href="${path}/shop/product/list.do">Products</a> |
<a href="${path}/shop/product/write.do">Add Product</a> | 

<div style="text-align:right;">
	<c:choose>
		<c:when test="${sessionScope.admin_userid == null }">
			<a href="${path}/admin/login.do">Admin Login</a>
		</c:when>
		<c:otherwise>
			Welcome, ${sessionScope.admin_name}.
			<a href="${path}/admin/logout.do">Logout</a>
		</c:otherwise>
	</c:choose>
</div> 
<hr>  