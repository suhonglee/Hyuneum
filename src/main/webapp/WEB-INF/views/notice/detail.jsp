<!-- 
		Korea Contents Company R&D TEAM
		Developer : lee su hong
		Last-Modified : 2013.11.06
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/> 
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Bbs Module Mainpage</title>
  </head>
<body>
	<div>
		<div>
			글번호 : ${bbs.no }
		</div>
		<div>
			작성일 : ${bbs.time } || 조회수 : ${bbs.hit }
		</div>
		<div>
			제목 : ${bbs.title }
		</div>
		<div>
			내용 : ${bbs.content }
		</div>
	</div>
		
	<hr/>
	<div>
		<form action="${CONTEXT }/" method="get" id="listform">
			<input type="hidden" name="code" value="${bbs.code }"/>
			<span onclick="frmSubmit()">목록</span>
		</form>
	</div>
	<c:if test="${userCode==888 }">
		<a href="write?code=${bbs.code }">글쓰기</a>
		<span onclick="deleteBbs(${bbs.no},'${bbs.code}')">삭제</span>
	</c:if>
	
</body>
<script src="${CONTEXT }/resources/js/FrameWork/jquery-1.8.3.min.js"></script>
<script>
	function frmSubmit()
	{
		$("#listform").submit();
	}
	function deleteBbs(no,code)
	{
		var req = new XMLHttpRequest();
		req.open("delete",no,true);
		req.setRequestHeader("Accept","application/json");
		req.setRequestHeader("Content-Type","application/json; charset=utf-8");
		req.onreadystatechange = function()
		{
			if(this.readyState == 4 && this.status==200)
			{
				if(this.responseText)
				{
					frmSubmit();
				}
				else
				{
					alert('삭제에 실패하였습니다');
				}
			}
		}
		req.send("code=${bbs.code}");
	}
</script>
</html>