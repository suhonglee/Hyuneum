<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" charset="UTF-8"/> 
<html>
<head>
	<title>Home</title>
</head>
<body>
	<form action="${CONTEXT }/bbs/" method="post"  onsubmit="return checkBbs()" enctype="multipart/form-data">
		<img id="view_image" src="${CONTEXT }/resources/img/header/h_logo.png" width="200px" height="150px"/>
		<br/>
		제목 : <input type="text" name="title" id="title"/>
		<br/>
		연락처 : <input type="text" name="tel" id="tel" onkeypress="return isNumberKey(event)"/>
		<br/>
		내용 : <textarea name="content" id="content"></textarea>
		<br/>
		<input type="file" name="file" size="50" onchange="fileCheck(this);"/>
		<br/>
		<input type="hidden" name="code" value="${code }"/>
		<input type="submit" value="등록"/>
	</form>
</body>
<%-- <script src="${CONTEXT }/resources/js/FrameWork/jquery-1.8.3.min.js"></script> --%>
<script>
	
</script>
</html>
