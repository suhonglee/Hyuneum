<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" charset="UTF-8"/> 
<html>
<head>
	<title>Home</title>
</head>
<script src="${CONTEXT }/resources/js/FrameWork/jquery-1.8.3.min.js"></script>
<body>
	<jsp:include page="../editor.jsp"></jsp:include>
	<input type="button" onclick="saveContent('${CONTEXT }/bbs/')" value="등록"/>
	<div>
		<a href="${CONTEXT }/">홈으로</a>
	</div>
</body>
</html>
