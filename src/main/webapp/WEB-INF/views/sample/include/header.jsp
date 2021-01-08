<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html><!-- 현재문서의 형태선언 -->
<html><!-- html문서는 태그열고 ~ 태그닫고 하는 영역확인 중요 -->
<head><!-- 문서내용과는 관계없는 문서정보=메타데이터(데이터의데이터)가 존재 -->
<meta charset="UTF-8"><!-- 문서의 언어 인코딩설정  지금은 유니코드로 됨 -->
<!-- 반응형을 작동하기 위해선 사용하는 메타태그 뷰포트는 모니터, 모바일, 액정, 프린터 -->
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1">
<title>반응형홈페이지</title><!-- 문서의 제목을 브라우저상단왼쪽에 표시 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<!-- :콜론(속성:값, Key:Value), ;세미콜론(문장의 끝) -->
<!-- 외부 자바스크립트 불러오는 태그(아래) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/resources/sample/js/user.js"></script>
<!-- 외부 css파일 불러오는 태그(아래) -->


<link rel="stylesheet" href="/resources/sample/css/reset.css" type="text/css">
<link rel="stylesheet" href="/resources/sample/css/mobile.css" type="text/css">
<link rel="stylesheet" href="/resources/sample/css/tablet.css" type="text/css">
<link rel="stylesheet" href="/resources/sample/css/pc.css" type="text.css">

<style>
/* 반응형 -모바일스타일 시자 */

/* 반응형 -모바일스타일 끝  */

/* 반응형 -태블릿스타일 시작 @media쿼리사용*/
@media all and (min-width:1132px) {



}
</style>
<script>
$(document).ready(function(){
	$(".carousel").carousel({
		interval:1000,
		pause:false
	});
});



</script>
<!-- 자바스크립트 끝  -->

</head>
<body><!-- 문서내용이 들어가는 영역 -->
<div id="wrap"><!-- 랩핑시킨 영역 -->
<header class="header">
<!-- 상단 로고와 햄버거 메뉴영역 시작 -->
<h1 class="LOGO">
<a href="/">LOGO</a><!-- a태그는 링크/페이지 이동역활, href헤르프 속성값 URL을 입력해서 이동 -->
</h1><!-- 헤드라인 글자를 표시 h1~h6 -->
<div class="menu-toggle-btn">
<span></span>
<span></span>
<span></span>
</div>

<!-- 리스트를 모여주는 태그 ul(UnOrdered List *.~, *.~ ) , ol(Ordered List 1.~, 2.~ ) -->
<nav class="gnb"><!-- gnb(GlobalNavigation) : 글로벌네비게이션==전체영역메뉴 -->
<!-- html5 시만텍 웹 = 의미가 있는 태그를 사용하게 해서 AI가 인식하게 됩니다. -->
<ul>
<li><a href="/sample">SampleHOME</a></li>
<li><a href="/sample/weare">WE ARE</a></li>
<li><a href="/sample/work">WORK</a></li>
<li><a href="/sample/blog">BLOG</a></li>
<li><a href="/sample/contactus">CONTACT US</a></li>
<li><a href="/">HOME</a></li>
</ul>
</nav>
<!-- 상단 로고와 햄버거 메뉴영역 끝 -->
</header>