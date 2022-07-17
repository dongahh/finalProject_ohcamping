<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="resources/ogjcss/about.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<script type="text/javascript"
	src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>



</head>

<body>

	<jsp:include page="../inc/oh_camping_top2.jsp" />
	<section class="slick-section">
		<div class="slick-btn-main">
			<div class="slick-btn left big-next">
				<span class="material-symbols-outlined"> chevron_left </span>
			</div>
			<div class="slick-btn right big-prev">
				<span class="material-symbols-outlined"> chevron_right </span>
			</div>
		</div>
		<div class="about_tit">
			<h1>Landscape</h1>
		</div>
		<div class="big-slick bigroom">
			<c:forEach var="i" begin="1" end="13">
				<div class="roomimage"
					style="background-image: url('resources/images/about${i}.jpg')"></div>
			</c:forEach>

		</div>
	</section>
	<script>
		AOS.init();
	</script>


<section>
<div class="main_intro">
			<h1>Introduction</h1>
			<h3>새소리와 함께하는 계곡속 감성캠핑</h3>
			<p data-aos="fade-top">
				가평 물골길에 위치한 핀란드 캠핑성을 소개합니다. <br> 숙박하기 쾌적한 내부 시설과 천연 항균 물질인 피톤치드
				가 함유된 잣나무로 둘러 쌓여 공기 정화는 물론 <br> 온갖 종류의 다양한 새소리와 잔잔히 들리는 계곡 물
				흐르는 소리는 <br> 핀란드 캠핑성 최고의 자랑거리죠. <br> 더불어
				수영장,비치침대,카페,바베큐시설.매점등 편의 시설도 준비 되어 있습니다. <br> 아주 가끔은 집이 아닌 다른
				곳에서 편안한 휴식시간을 가지고 싶으시죠?
			</p>
			<h3>
				차 한잔의 여유로 생각에게 휴식을 줄 수 있는 공간.</h3>
				<p data-aos="fade-top">
					편안한 대화로 마음의 문을 열 수 있는 공간. <br> 추억의 물놀이로 화합을 느낄 수 있는 공간, <br>
					핀란드 캠핑성이라면 가능합니다. <br> 가족,연인,친구,직장동료,이웃주민등 환영합니다.
				</p>
		</div>
		<div class="wrap_main_img mt_intro1">
			<div class="ma_intro_img ma_img_1" data-aos="fade-right"></div>
			<div class="ma_intro_txt" data-aos="fade-left">
				<div class="intro_txt">
					<h2>아름다운 경치</h2>
					<h1>Beautiful View</h1>
					<p>저희 펜션의 아름다운 경관과 함께.<br>
					수십만 그루의 잣나무와 편백나무의 피톤치드로 힐링해보세요.</p>
				</div>
				<div class="intro_img img1"></div>
				
			</div>
		</div>
		<div class="wrap_main_img">
			
			<div class="ma_intro_txt" data-aos="fade-right">
				<div class="intro_txt">
					<h2>확 트인 전망</h2>
					<h1>Beautiful View</h1>
					<p>확 트인 전망을 즐길 수 있는 저희 펜션으로 놀러오세요<br>
					미세먼지를 피해 푸르른 숲의 맑은 공기가 가득한곳.</p>
				</div>
				<div class="intro_img img2"></div>
				
			</div>
			<div class="ma_intro_img ma_img_2" data-aos="fade-left"></div>
		</div>
		<div class="wrap_main_img">
			<div class="ma_intro_img ma_img_3" data-aos="fade-right"></div>
			<div class="ma_intro_txt" data-aos="fade-left">
				<div class="intro_txt">
					<h2>아늑한 인테리어</h2>
					<h1>Cozy Interior</h1>
					<p>아늑한 인테리어,아늑한 공간이 당신을 맞이합니다.<br>
					수 많은 새소리로 가득찬 핀란드 캠핑성이 당신을 기다립니다</p>
				</div>
				<div class="intro_img img3"></div>
				
			</div>
		</div>
</section>



	<jsp:include page="../inc/oh_camping_bottom.jsp" />




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<script type="text/javascript"
		src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript"
		src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<script type="text/javascript">
		$(function() {
			$('.big-slick').slick({
				dots : true,
				infinite : true,
				speed : 500,
				fade : true,
				nextArrow : $('.big-prev'),
				prevArrow : $('.big-next'),
				dots : false
			});

		});
	</script>

</body>
</html>