<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>문의사항 상세보기</title>
<!--파비콘-->
<link rel="icon" type="image/png" sizes="16x16"
	href="${path }/resources/image/favicon/favicon-16x16.png" />
<link rel="manifest"
	href="${path }/resources/image/favicon/manifest.json" />
<meta name="msapplication-TileColor" content="#ffffff" />
<meta name="msapplication-TileImage"
	content="${path }/resources/image/favicon/ms-icon-144x144.png" />
<meta name="theme-color" content="#ffffff" />

<style>
.order_box {
	width: 790px;
	height: 110px;
	display: flex;
	align-items: flex-end;
	justify-content: center;
}

.order {
	width: 500px;
	display: flex;
	flex-direction: row;
	justify-content: space-evenly;
}

.order li:nth-child(3) {
	color: #ce8080;
}

* {
	font-weight: bold;
}

.order_box {
	width: 790px;
	height: 110px;
	display: flex;
	align-items: flex-end;
	justify-content: center;
}

.order {
	width: 500px;
	display: flex;
	flex-direction: row;
	justify-content: space-evenly;
}

#view {
	width: 1320px;
	margin: 100px auto;
}

#main #view h2 {
	font-size: 40px;
	font-weight: bold;
}

#view hr {
	height: 2px;
	background-color: #FF7373;
	border: none;
	margin-bottom: 50px;
}

#writing_view {
	width: 1100px;
	height: 515px;
	border: 3px solid #FF8F8F;
	border-radius: 10px;
	margin: 0 auto 0;
}

.title {
	margin: 20px auto 10px;
	width: 970px;
	height: 40px;
	font-size: 25px;
	line-height: 40px;
}

.content {
	margin: 0 auto 20px;
	width: 970px;
	height: 360px;
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

.filebox a input {
	cursor: pointer;
}

.filebox p {
	display: inline;
}

#button {
	height: 50px;
	margin-right: 100px;
	margin-bottom: 50px;
}

.filebox {
	display: flex;
	width: 1100px;
	height: 50px;
	margin: 10px auto 10px;
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
}

#button button {
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

#button button:hover {
	border-radius: 10px;
	transition: .2s;
	box-shadow: inset 1px 1px 3px rgb(197, 197, 197);
	cursor: pointer;
}
/*///////////////////////////////////////////////////////////////////////////////////////////////*/
/*전문의 답변 작성란*/
#view h3 {
	font-size: 35px;
	margin: 0 0 20px 120px;
}

#doctor_writing_content {
	width: 1100px;
	margin: 0 auto 0;
	border: 3px solid #FF8F8F;
	border-radius: 25px;
}

.reply_input {
	margin: 0 auto 0;
}

#doctor_writing_content input {
	border-radius: 10px;
	margin: 10px 0 10px 40px;
	width: 1000px;
	height: 35px;
	text-align: left;
	font-size: 25px;
}

#main #doctor_writing_content textarea {
	width: 1000px;
	margin: 0 0 10px 40px;
	height: 150px;
	border-radius: 10px;
}

.button {
	margin: 0 20px 10px 800px;
	width: 250px;
	height: 40px;
}

.button button {
	font-weight: bold;
	width: 100px;
	padding: 10px;
	font-size: 15px;
	background-color: #FFEFEF;
	border: #FFEFEF;
	border-radius: 30px;
}

/*전문의 답변 뷰박스*/
#main #doctor_writing_view {
	width: 1100px;
	margin-left: 110px;
	margin-top: 30px;
}

#main  #doctor_writing_view {
	width: 1100px;
	border: 3px solid #FF8F8F;
	border-radius: 25px;
}

#main #doctor_writing_view .title {
	border-radius: 10px;
	width: 1000px;
	height: 35px;
	text-align: left;
	font-size: 25px;
}

#main #doctor_writing_view .content {
	width: 1000px;
	height: 150px;
}

#main #doctor_writing_view ul {
	margin: 30px 50px;
}

#main #doctor_writing_view li {
	display: inline-block;
	margin-right: 40px;
	font-weight: bold;
}

#main  #doctor_writing_view .button {
	display: inline-block;
	width: 250px;
	height: 40px;
}

#main #doctor_writing_view .button button {
	font-weight: bold;
	padding: 10px;
	margin: 0 10px;
	font-size: 15px;
	background-color: #FFEFEF;
	border: #FFEFEF;
	border-radius: 30px;
}

.button button:hover {
	border-radius: 30px;
	transition: .2s;
	box-shadow: inset 1px 1px 3px rgb(197, 197, 197);
	cursor: pointer;
}


 	.doctor_writing_content {
		width: 1100px;
		margin: 0 auto 0;
		
	}
	
	.input-group {
		height:280px;
		width: 1100px;
		margin: 0 auto 0;
		border: 3px solid #FF8F8F;
		border-radius: 25px;
	}
	

	input#ptitle {
		border-radius: 10px;
		margin: 10px 0 10px 40px;
		width: 1000px;
		height: 35px;
		text-align: left;
		font-size: 25px;
	}
	
	input#pcontent {
		width: 1000px;
		margin: 0 0 10px 40px;
		height: 150px;
		border-radius: 10px;
	}
	
	.input-group-btn {
		display: inline-block;
		width: 230px;
		height: 40px;
		margin-left:820px;
		margin-bottom:10px;
	}
	
	
	.input-group-btn button {
		font-weight: bold;
		width: 100px;
		padding: 10px;
		font-size: 15px;
		background-color: #FFEFEF;
		border: #FFEFEF;
		border-radius: 30px;
		margin-left:10px;
		
	} 
	.input-group-btn button:hover{
		
	
	}
	
	/*전문의 답변 뷰박스*/
	.replyList {
		width: 1100px;
		margin-top: 30px;
		height:100%;
	}
</style>
</head>

<body>
	<%@include file="../includes/header.jsp"%>
	<div class="order_box">
		<ul class="order">
			<li>공지사항</li>
			<li>|</li>
			<li>문의사항</li>
			<li>|</li>
			<li>건강상담소</li>
		</ul>
	</div>
	<main id="main">
		<section id="view">
			<h2>문의사항 상세</h2>
			<hr>
			<div id="writing_view">
				<div class="title">${vo.btitle}</div>
				<div class="content">${vo.bcontent}</div>
				<ul>
					<li>${vo.bwriter}</li>
					<li>${vo.bwdate}</li>
				</ul>
			</div>
			<div class="file">
				<div class="filebox">
					<p class="file1">첨부파일</p>
					<a href="fileDown.do?bidx=${vo.bidx }"><div	class="upload-name">${fvo.originname }</div></a>
				</div>
			</div>
			<div id="button">
			
				<button type="button" onClick="location.href='questionList.do'">목록</button>
			
			<c:set var="boardMidx" value="${vo.midx}" />			
			<c:if test="${member.midx == boardMidx}">
				<button type="button"
					onClick="location.href='questionDelete.do?bidx=${vo.bidx}'">삭제</button>
				<button type="button"
					onClick="location.href='questionModify.do?bidx=${vo.bidx}'">수정</button>
			</c:if>
			<c:if test="${member.mgrade == 'A' || member.midx == boardMidx }">
				<button onclick="openClose()" id="answerBtn" type="button">답변하기</button>
			</c:if>					
			</div>
	

			<h3>답변</h3>
			<div class="doctor_writing_content" >
			<c:if test="${member.mgrade == 'A' || member.midx == boardMidx }">
				<div id="writing_container" style="display:none;">
					<div class="container">
				    	<label for="pcontent"></label>
				        	<form name="replyInsertForm">
				            	<div class="input-group">
				               	<input type="hidden" name="bidx" id='bidx' value="${vo.bidx}"/>
				               	<input type="hidden" id='midx' name="midx" value="${member.midx}"/>
				               	<input type="hidden" name="pwriter" value="${member.mname}"/>
				               	<input type="text" class="form-control" id="ptitle" name="ptitle" placeholder="제목을 입력하세요.">
				               	<input type="text" class="form-control" id="pcontent" name="pcontent" placeholder="내용을 입력하세요.">
				               		<span class="input-group-btn">
				                   		<button class="btn btn-default" type="button" name="replyInsertBtn">등록</button>
				                   		<button type="button">취소</button>
				               		</span>
				              	</div>
				        	</form>
			    	</div>
			 	</div>
			    </c:if>
			   	<div class="container">
			   		<div class="replyList">
			   		<%@ include file="../medicalTalk/reply.jsp" %></div>
			    </div>
			</div>
			



			
		</section>
		
	</main>
	<%@include file="../includes/footer.jsp"%>
	<script>
	function openClose() {
		if($('#writing_container').css('display') == 'none'){
			$('#writing_container').show();
			$('#answerBtn').text('답변취소');
		}else{
			$('#writing_container').hide();
			$('#answerBtn').text('답변하기');
		}	
	}	
</script> 
</body>

</html>