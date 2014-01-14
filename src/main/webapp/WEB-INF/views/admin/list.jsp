<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<c:if test="${userCode==888 }">
		<form action="${CONTEXT }/kco/logout" method="GET" onsubmit="return confirm('로그아웃 하시겠습니까?')">
			<input type="submit" value="로그아웃">
		</form>
		<div>
			<div onclick="changeEstimate()">견적문의</div>
		</div>
	</c:if>
	
	<div id="content">
	</div>
</body>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script>
changeEstimate();
function changeEstimate()
{
	$("#content").load("${CONTEXT}/bbs/?code=estimate");
}
</script>
</html>
