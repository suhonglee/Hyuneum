<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<form action="${CONTEXT }/kco/login" method="post">
		ID : <input type="id" name="id"/>
		<br/>
		PW : <input type="password" name="password"/>
		<br/>
		<input type="submit" value="확인"/>
	</form>
</body>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script>
	if(${incorrect})
	{
		alert('ID/PW가 일치하지 않습니다');
	}
</script>
</html>
