<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
<link rel="icon" type="image/png" sizes="16x16"
	href="${path }/resources/image/favicon/favicon-16x16.png" />
<link rel="manifest"
	href="${path }/resources/image/favicon/manifest.json" />
<meta name="msapplication-TileColor" content="#ffffff" />
<meta name="msapplication-TileImage"
	content="${path }/resources/image/favicon/ms-icon-144x144.png" />
<meta name="theme-color" content="#ffffff" />
<link href="${path}/resources/css/footer.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-latest.min.js"
	type="application/javascript"></script>
<script>
	$(document).ready(
			function() {
				var fileTarget = $('.filebox .upload-hidden');

				fileTarget.on('change', function() { // 값이 변경되면
					if (window.FileReader) { // modern browser
						var filename = $(this)[0].files[0].name;
					} else { // old IE
						var filename = $(this).val().split('/').pop().split(
								'\\').pop(); // 파일명만 추출
					}

					// 추출한 파일명 삽입
					$(this).siblings('.upload-name').val(filename);
				});
			});
</script>
<style>
* {
	font-weight: bold;
}
.order_box{
        width: 790px;
        height: 110px;
        display: flex;
 		align-items: flex-end;
        justify-content: center;
      }    
.order{
        width: 500px;
        display: flex;
        flex-direction: row;
        justify-content: space-evenly;
        }
#view {
	width: 1320px;
	height: 1600px;
	margin: 100px auto;
}

#menu h2 {
	font-size: 40px;
	font-weight: bold;
}

.hr {
	height: 2px;
	background-color: #FF7373;
	border: none;
	margin-bottom: 50px;
}

#writing_view {
	width: 1100px;
	
	
	border: 3px solid #FF8F8F;
	border-radius: 10px;
	margin: 0 auto 0;
}

.title {
	margin: 20px auto 10px;
	width: 970px;
	min-height: 40px;
	font-size: 25px;
	line-height: 40px;
}

.content {
	margin: 0 auto 20px;
	
	width: 970px;
	min-height: 360px;
	
}

#writing_view ul {
	margin: 30px 70px;
}

#writing_view li {
	display: inline-block;
	margin-right: 40px;
	font-weight: bold;
}

.file {
	width: 1100px;
	height: 50px;
	vertical-align: middle;
	margin: 20px auto 0;
}

.filebox {
	display: inline;
	float: right;
	width: 1100px;
	height: 50px;
	margin: 10px auto 0;
	border: 3px solid #FF8F8F;
	border-radius: 30px;
}

.filebox p {
	display: inline;
}

#button1 {
	width: 1100px;
	height: 50px;
	margin: 40px auto 0;
}

#button1 button {
	width: 100px;
	height: 50px;
	padding: 10px;
	margin: 0 10px;
	font-size: 20px;
	font-weight: bold;
	background-color: #FFEFEF;
	border: #FFEFEF;
	border-radius: 10px;
	display: inline-block;
	float: right;
}

#button1 button:hover {
	border-radius: 10px;
	transition: .2s;
	box-shadow: inset 1px 1px 3px rgb(197, 197, 197);
	cursor: pointer;
}

.filebox {
	display: flex;
	width: 1100px;
	height: 50px;
	margin: 20px auto 0;
	border: 3px solid #FF8F8F;
	border-radius: 30px;
	align-items: center;
	font-weight: bold;
}

.filebox .file1 {
	margin: 0 20px 0 20px;
	font-size: 18px;
}

.filebox input[type="file"] {
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.filebox label {
	background-color: #FFE7E7;
	cursor: pointer;
	border: #FFEFEF;
	border-radius: 10px;
	vertical-align: center;
	padding: 10px;
	margin-left: 715px;
}

.filebox label:hover {
	border-radius: 10px;
	transition: .2s;
	box-shadow: inset 1px 1px 3px rgb(197, 197, 197);
	cursor: pointer;
}
/* named upload */
.filebox .upload-name {
	font-size: 18px;
	border: none;
	font-weight: bold;
	background: #fff;
	width: 530px;
}
</style>
</head>
<body>
	<%@include file="../includes/header.jsp"%>
	<div class="order_box">
		<ul class="order">
			<li style="color: #CE8080;">공지사항</li>
			<li>|</li>
			<li>문의사항</li>
			<li>|</li>
			<li>건강상담소</li>
		</ul>
	</div>
	<section id="view">
		<div id="menu">
			<h2>공지사항</h2>
		</div>
		<hr class="hr">
		<form action="">
			<div id="writing_view">
				<div class="title">${vo.btitle}</div>
                <div class="content" style="white-space:pre;">${vo.bcontent}</div>
				<ul>
					<li>${vo.bwriter}</li>
					<li>${vo.bwdate}</li>
				</ul>
			</div>
			<div class="file">
				<div class="filebox">
					<p class="file1">첨부파일</p>
					
					<a href="fileDown.do?bidx=${vo.bidx }"><input class="upload-name" value="${fvo.originname }" disabled="disabled"></a>
				</div>
			</div>
			<div id="button1">
				<button type="button" onClick="location.href='list.do'">목록</button>
				<c:if test="${member.mgrade == 'A'}">
				<button type="button" onClick="location.href='delete.do?bidx=${vo.bidx}'">삭제</button>		
				<button type="button" onClick="location.href='modify.do?bidx=${vo.bidx}'">수정</button>
				</c:if>
			</div>
		</form>
	</section>

	<%@include file="../includes/footer.jsp"%>
</body>
</html>