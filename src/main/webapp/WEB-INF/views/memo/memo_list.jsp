<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<script>
	function memo_view(idx) {
		location.href = "${path}/memo/view/" + idx;
	}
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<h2>Memo</h2>
	<form method="post" action="${path}/memo/insert.do">
		Name : <input name="writer" size="10"><br> Memo :
		<!-- <input id="memo" name="memo" size="40"> -->
		<textarea rows="3" cols="50" name="memo" id="memo"></textarea>
		<input type="submit" value="Confirm">
	</form>
	<table border="1" width="500px">
		<tr>
			<th>No.</th>
			<th>Name</th>
			<th>Memo</th>
			<th>Created</th>
		</tr>
		<c:forEach var="row" items="${list}">
			<tr>
				<td>${row.idx}</td>
				<td>${row.writer}</td>
				<td><a href="#" onclick="memo_view('${row.idx}')">${row.memo}</a>
				</td>
				<td><tags:localDateTime date="${row.post_date}"
						pattern="yyyy-MM-dd HH:mm:ss" /> <%-- <fmt:formatDate value="${row.post_date}" 
						pattern="yyyy-MM-dd HH:mm:ss" /> --%></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
