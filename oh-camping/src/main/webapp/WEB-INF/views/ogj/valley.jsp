<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="resources/ogjcss/valley.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<script type="text/javascript" src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	


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
		<div class="big-slick bigroom">
			<div class="bigroom1 roomimage">
						<div class="about_tit">
					<h1>계곡 1~4 </h1>
				</div>
			</div>
			<div class="bigroom2 roomimage"></div>
			<div class="bigroom3 roomimage"></div>
			<div class="bigroom4 roomimage"></div>
			<div class="bigroom5 roomimage"></div>

		</div>
</section>


<section class="section1">

	<div class="section1-div1" ></div>
	<div class="section1-div2">
	<script>
	AOS.init();
	</script>
		<div class="main-int" data-aos="fade-left"  >
			
			<h1>계곡 1~4</h1>
			<p>아름다운 경치, 깨끗한 자연, 상쾌한 피톤치드와 함께 힐링해보세요</p>
		</div>
		<div class="section1-div2-div2">
			<div class="detail_main">
				<h3>객실정보 안내</h3>
				<ul>
					<li>평수 : 약42m<sub>2</sub>(13평)</li>
					<li>객실형태 : 침대1, 소파, 화장실, 싱크대, 계곡 뷰</li>
					<li>입실시간 : 15:00</li>
					<li>퇴실시간 : 11:00</li>
				</ul>
			</div>
			<div class="detail_sub">
				<h3>기준인원</h3>
				<ul>
					<li>이용인원 : 기준 2명 / 최대 4명</li>
					<li>기준인원 초과시 15,000원 추가요금이 있습니다.</li>
					<li>만 6세미만은 무료이지만 인원수에 포함.</li>
				</ul>
			</div>
			<div class="detail_sub">
				<h3>구비시설</h3>
				<ul>
					<li>퀸침대 1개, 호텔식 침구, 변형 침대매트리스 2개 , 냉난방기, 선풍기, TV, 와이파이, 드라이기, 전기장판 2개, 전자렌지, 전기밥솥, 커피포트, 건조대, 2구버너, 220리터 대형온수기, 개별화장실(샴푸, 린스, 바디워시), 개별싱크대(대형냄비, 소형냄비, 후라이팬, 칼, 도마, 집게 등 기본식기세트), 전용화로대, 숯 웨버그릴, 실내외 테이블 2세트(4인기준), 개별파라솔</li>
				</ul>
			</div>
			<div class="detail_sub">
				<h3>기간 안내</h3>
				<ul>
					<li>준성수기 : 07월 01일 ~ 08월 31일</li>
					<li>성수기 : 07월 25일 ~ 08월 05일</li>
				</ul>
			</div>
			<div>
				<a>Reservation</a>
			</div>
		</div>
	</div>

</section>
<section class="roomimages">
	<div class="room_img_left" data-aos="fade-right">
		<div class="room_img_list room_size_1"></div>
	</div>
	<div class="room_img_right">
		<div class="bg_room1" data-aos="fade-left"></div>
		<div class="room_img_list room_size_2" data-aos="fade-left"></div>
		<h1 class="room_comment">Luxury atomosphere and Spa</h1>
		<div class="room_img_list room_size_3" data-aos="fade-left"></div>
	
	</div>

</section>
 <section class="roomimages">
	<div class="room_img_right">
		<div class="bg_room1 roomleft" data-aos="fade-left"></div>
		<div class="room_img_list room_size_4" data-aos="fade-right"></div>
		<h1 class="room_comment">Beautiful Interior</h1>
		<div class="room_img_list room_size_5" data-aos="fade-right"></div>
	</div>
	<div class="room_img_left"  data-aos="fade-left">
		<div class="room_img_list room_size_6"></div>
	
	</div>
	
	

</section> 
<section>

		<div align="center">
			<div class="roombtn">
						<a type="button" class="nextbtn">계곡1,2,3,4
							<div><span class="nextsub"></span></div>
						</a> <a type="button"
							class="prevbtn">대형1,2,3,4
							<div><span class="prevsub"></span></div>
							</a>
					</div>
		</div>

	<div class="main-btn">
			<div class="slick-btn-main">
				<div class="main-slick-btn left next">
					<span class="material-symbols-outlined"> chevron_left </span>
				</div>
				<div class="main-slick-btn right prev">
					<span class="material-symbols-outlined"> chevron_right </span>
				</div>
			</div>
			<div class="main-slick">
				<div class="room1">
					<div class="roomtxt">
						<div class="pretxt">
							<h2>계곡1,2,3,4</h2>
							<p>
								평수 : 약42m<sup>2</sup>(13평)
							</p>
							<p>객실형태 : 침대1,소파,화장실,싱크대,계곡 뷰</p>
							<p>이용인원 : 기준 2명/ 최대 4명</p>
							<a href="<%=request.getContextPath()%>/valley.do">View more</a>
						</div>
					</div>
				</div>
				<div class="room2">
					<div class="roomtxt">
						<div class="pretxt">
							<h2>대형 1,2,3,4</h2>
							<p>
								평수 : 약52<sup>2</sup>(16평)
							</p>
							<p>객실형태 : 침대2,화장실,싱크대,수영장 뷰</p>
							<p>이용인원 : 기준 2명/ 최대 6명</p>
							<a href="<%=request.getContextPath()%>/bigroom.do">View more</a>
						</div>

					</div>
				</div>

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
	$(function(){
		$('.big-slick').slick({
			  dots: true,
			  infinite: true,
			  speed: 500,
			  fade: true,
			  nextArrow:$('.big-next'),
			  prevArrow:$('.big-prev'),
			  dots: false
		});
		
		
		$('.main-slick').slick({
			dots : true,
			infinite : true,
			speed : 500,
			fade : true,
			nextArrow : $('.next'),
			prevArrow : $('.prev'),
			dots : false
		});

		$('.nextbtn').click(function() {

			$('.main-slick').slick('goTo', 0);

			$('.nextbtn').css("color", "#ebb68c");

			$('.prevbtn').css("color", "black");
			
			$('.prevsub').css("width", "0");
			
			$('.nextsub').css("width", "93px");
			
			
			
			
		});

		$('.prevbtn').click(function() {

			$('.main-slick').slick('goTo', 1);

			$('.prevbtn').css("color", "#ebb68c");

			$('.nextbtn').css("color", "black");
			
			$('.prevsub').css("width", "93px");
			
			$('.nextsub').css("width", "0");
			
		});

		$('.next, .prev').click(function() {
			var slick = $('.main-slick').slick('slickCurrentSlide');

			if (slick == 0) {
				$('.nextbtn').css("color", "#ebb68c");

				$('.prevbtn').css("color", "black");
			} else {
				$('.prevbtn').css("color", "#ebb68c");

				$('.nextbtn').css("color", "black");
			}
		})
	});
	</script>

</body>
</html>