<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/upload/uploadForm.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<style>
iframe {
	width: 400px;
	height: 200px;
	border: 1px;
	border-style: solid;
}
</style>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>

	<form action="${path}/upload/uploadForm" method="post"
		enctype="multipart/form-data" target="iframe1">
		<input type="file" name="file"> <input type="submit"
			value="Upload">
	</form>
	<iframe name="iframe1"></iframe>

</body>

</html>
