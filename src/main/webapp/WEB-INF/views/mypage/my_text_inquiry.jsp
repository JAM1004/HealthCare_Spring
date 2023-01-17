<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--파비콘-->
<link rel="icon" type="image/png" sizes="16x16" href="${path}/resources/image/favicon/android-icon-144x144.png"/>
<link rel="manifest" href="${path}/resources/image/favicon/manifest.json" />
<meta name="msapplication-TileColor" content="#ffffff" />
<meta name="msapplication-TileImage" content="${path}/resources/image/favicon/ms-icon-144x144.png" />
<meta name="theme-color" content="#ffffff" />

<link href="${path}/resources/css/reset.css" rel="stylesheet" />
<link href="${path}/resources/css/mypage/my_text_inquiry.css" rel="stylesheet" />

<script src="${path}/resources/js/mypage/my_text_inquiry.js"></script>

</head>
<body>
<%@include file="../includes/header.jsp"%>
    <script>
  
    //서브메뉴
    $(document).ready(function(){
        $(".menu-v1").mouseover(function(){
            $(this).children(".submenu").stop().slideDown(600);
        });
        $(".menu-v1").mouseleave(function(){
            $(this).children(".submenu").stop().slideUp(600);
        });
        
    });

    //전체 선택
    function selectAll(selectAll)  {
    const checkboxes 
     = document.querySelectorAll('input[type="checkbox"]');
  
     checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked
     })
}

  </script>
  <body>
    <main>
      <section>
        <p class="mypage_manu_p">마이페이지</p>
        <div class="mypage_manu">
          <div class="mypage_manu_1">
              <ul id="nav-v1">
                <li class="menu-v1">
                  <p class="a"><a href="#">조회</a></p>
                  <ul class="submenu">
                    <li><a href="#">예방접종 조회</a></li>
                    <li><a href="#">건강검진 조회</a></li>
                    <li><a href="#">헌혈 스탬프 / 조회</li>
                  </ul>
                </li>
                <li class="menu-v1">
                  <p class="a"><a href="#">내가 쓴 글</a></p>
                </li>
                <li class="menu-v1">
                  <p class="a"><a href="#">개인정보 수정</a></p>
                </li>
              </ul>
          </div>
        </div>
      </section>
      <section class="main_content">
        <div class="main_content_title">
            <h2>내가 쓴 글</h2>

             <select name="게시판" class="select">
              <option disabled selected>-게시판-</option>
                <option value="문의사항">문의사항</option>
                <option value="건강상담소">건강상담소</option>
            </select>
        </div>


        <hr />
        <div class="list">
            <div class="box">
              <div class="checkbox_box">
                <p>전체선택</p>
                <label>
                    <input type="checkbox"  onclick='selectAll(this)'/>
                    <span class="checkbox" >
                    </span>
                </label>

              </div>
                <ul class="main_list">
                    <li>병원명 </li>
                    <li>날짜</li>
                    <li>시간</li>
                    <li>접종명</li>
                    <li>위치</li>
                </ul>
            </div>
            <div class="box">
              <div class="checkbox_box">
                <label>
                    <input type="checkbox" />
                    <span class="checkbox" >
                    </span>
                </label>

              </div>

              <ul class="reserve_list">
                <li>땡땡 병원</li>
                <li>2022년 12월 30일</li>
                <li>오후 4시</li>
                <li>독감</li>
                <li>전라북도 전쥐시 땡떙동 땡땡길 10 4층</li>
              </ul>
            </div>

             

        </div>
        <!--.reserve_list-->
      </section>
      <div class="button">
        <input type="button" value="삭제하기"/>
      </div>
    </main>
    <%@include file="../includes/footer.jsp"%>
</body>
</html>