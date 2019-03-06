<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/memo/view.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<script type="text/javascript">
	$("#btnUpdate").click(function(){
		document.form1.action="${path}/memo/update/${dto.idx}";
		document.form1.submit();
	});
	$("#btnDelete").click(function(){
		if(confirm("Please confirm of it again!")){
			document.form1.action="${path}/memo/delete/${dto.idx}";
			document.form1.submit();
		}
	});
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<h2>Memo Detail</h2>
	<form name="form1" method="post">
		<table border="1" width="500px">
			<tr>
				<td>No.</td>
				<td>${dto.idx}</td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input name="writer" value="${dto.writer}"></td>
			</tr>
			<tr>
				<td>Memo</td>
				<td><textarea rows="5" cols="60" name="memo" id="memo">${dto.memo}</textarea>
				</td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="hidden" name="idx"
					value="${dto.idx}"> <input type="button" value="Update"
					id="btnUpdate"> <input type="button" value="Delete"
					id="btnDelete"></td>
			</tr>
		</table>
	</form>
</body>
</html>
