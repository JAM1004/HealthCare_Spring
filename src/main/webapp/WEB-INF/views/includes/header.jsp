<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

<title>네비바</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<link href="${path}/resources/css/reset.css" rel="stylesheet" />
<link href="${path}/resources/css/header.css" rel="stylesheet" />
<script src="${path}/resources/js/header.js"></script>

<!--xe아이콘-->
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css" />


</head>
<body>
	<header>
		<div class="nav_background">
			<nav class="nav">
				<div class="nav_main_menu">
					<ul class="nav_main_menu_1">
						<li><a href="#"><img
								src="${path }/resources/image/logo2.png" alt="로고이미지" /></a>
						</li>
					</ul>
					<ul>
						<li><a href="#">예방접종</a></li>
					</ul>
					<ul>
						<li><a href="#">건강검진</a></li>
					</ul>
					<ul>
						<li><a href="#">헌혈</a></li>
					</ul>
					<ul>
						<li><a href="#">모두건강</a></li>
					</ul>
					<ul>
						<li><a href="#">건강광장</a></li>
					</ul>
				</div>
				<div id="sliding_menu">
					<ul>
						<li><a href="#">예방접종 예약</a></li>
					</ul>
					<ul>
						<li><a href="#">건강검진 예약</a></li>
					</ul>
					<ul>
						<li><a href="#">헌혈 예약</a></li>
					</ul>
					<ul>
						<li><a href="#">건강소식</a></li>
						<li><a href="#">자가검진</a></li>
					</ul>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">문의사항</a></li>
						<li><a href="#">건강상담소</a></li>
					</ul>
				</div>
			</nav>

			<div id="profli">
				<div class="main_profli">
					<img src="${path }/resources/image/profli.png" alt="프로필" />
					<button type="submit" class="btn">
						<i class="xi-plus" alt="검색"></i>
					</button>
					<p>김모모님</p>
				</div>
				<div id="profli_menu">
					<ul>
						<li><img src="${path }/resources/image/profli.png" alt="프로필" /></li>
						<li><p>김모모님</p></li>
						<li><hr width="250px" /></li>
						<li><a href="#">마이페이지</a></li>
						<li><a href="#">내가 쓴 글</a></li>
						<li><a href="#">개인정보 설정</a></li>
						<li><hr width="250px" /></li>
						<li>
							<button>
								<a href="#">로그아웃</a>
							</button>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</header>
</body>
</html>