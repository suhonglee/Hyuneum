<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/> 


<html>
<head>
	<title>Home</title>
</head>
<link href="${CONTEXT }/resources/bbs/css/FrameWork/bootstrap.css" rel="stylesheet" media="screen">
<link href="${CONTEXT }/resources/bbs/css/FrameWork/bootstrap-responsive.css" rel="stylesheet" media="screen">
<style>
	#bbslist{
		margin-top: 40px;
	}
	.board-Wrapper{
		
	}
	.container{
		min-height: 900px;
	}
	.bbslist-header{
		overflow: auto;
		list-style-type: none;
		border: 2px solid #aaa;
		background-color: #aaa;
		-moz-box-shadow: 2px 3px 5px #777;
		-webkit-box-shadow: 2px 3px 5px #777;
		box-shadow: 2px 3px 5px #777;
	}
	.bbslist-header > li{
		float: left;
		display: inline;
		text-align: center;
		font-family: sans-serif;
		font-weight: 700;
		font-size: 17px;
		color: #fff;
	}
	.bbslist-header > li:first-child{width: 10%;}
	.bbslist-header > li:nth-child(2){width: 55%;}
	.bbslist-header > li:nth-child(3){width: 20%;}
	.bbslist-header > li:nth-child(4){width: 15%;}
	.bbslist-item{
		overflow: hidden;
		list-style-type: none;
		border: 1px solid #ccc;
		background-color: #eee;
		margin-bottom: 3px;
	}
	.bbslist-item:hover{
		background-color: #fff;
		border: 1px solid #fff;
	}
	.bbslist-item > li{
		width: 25%;
		float: left;
		display: inline;
		text-align: center;
	}
	.bbslist-item > li:hover{
		background-color: #D59392;
		opacity: 0.5;
	}
	.bbslist-item > li:first-child{width: 10%;}
	.bbslist-item > li:nth-child(2){width: 55%;}
	.bbslist-item > li:nth-child(3){width: 20%;}
	.bbslist-item > li:nth-child(4){width: 15%;}
	
	.write-button , .go-main-button{
		position: relative;
		float:right;
		right: 1px; 
		width: 80px;
		height: 30px;
		margin: 3px;
		background-color: #000;
		-moz-box-shadow: 2px 2px 3px #777;
		-webkit-box-shadow: 2px 2px 3px #777;
		box-shadow: 2px 2px 3px #777;
		border-radius: 1px 1px 1px 1px;
	}
	.write-button > a , .go-main-button > a{
		font-weight: 600;
		display: block;
		color: #fff;
		text-align: center;
		text-decoration: none;
		position: relative;
		top: 5px;
		width: 80px;
		margin: 0px auto;
	}
	.write-button:hover , .go-main-button:hover{
		top: 1px;
	}
	.write-button{
		background-color : #555;
		border: solid 1px #333;
	}
	.go-main-button{
		background-color : #A9302A;
		border: solid 1px #99201A;
	}
</style>
<body>
	<div class="span12 board-Wrapper">
		<c:if test="${userCode==888 }">
			<div class="write-button">
				<a href="${CONTEXT }/bbs/write?code=${code }">글쓰기</a>
			</div>
		</c:if>
		<!--==============================-->
		<!--==============================-->
		<!--==============================-->
		공지사항 게시판
    	<div id="bbslist">
			<ul class="bbslist-header">
				<li>
					<p>글번호</p>
				</li>
				<li>
					<p>제목</p>
				</li>
				<li>
					<p>등록일</p>
				</li>
				<li>
					<p>조회수</p>
				</li>
			</ul>
		<c:forEach items="${data}" var="bbs">
			<ul class="bbslist-item">
				<li>${bbs.no}</li>
				<li><a href="${CONTEXT }/bbs/${bbs.no}?code=${bbs.code}">${bbs.title}</a></li>
				<li>${bbs.time }</li>
				<li>${bbs.hit }</li>
			</ul>
		</c:forEach>
		
		</div>

		<!--==============================-->
		<!--==============================-->
		<!--==============================-->
	</div>
	<div>
		<c:if test="${pageCount>1 }">
			<a href="${CONTEXT }/bbs/?code=${code }&page=${firstPage-1 }">[이전]</a>
		</c:if>
		<c:forEach begin="${firstPage }" end="${firstPage+9 }" var="cnt">
			<c:if test="${cnt<=pageSize }">
				<c:if test="${currentPage != cnt}">
					<a href="${CONTEXT }/bbs/?code=${code }&page=${cnt}">[ ${cnt} ]</a>
				</c:if>
				<c:if test="${currentPage == cnt}">
					<b>[ ${cnt } ]</b>
				</c:if>
			</c:if>
		</c:forEach>
		<c:if test="${firstPage+9 < pageSize}">
			<a href="${CONTEXT }/bbs/?code=${code }&page=${firstPage+10}">[다음]</a>
		</c:if>
	</div>
	
</body>
</html>
