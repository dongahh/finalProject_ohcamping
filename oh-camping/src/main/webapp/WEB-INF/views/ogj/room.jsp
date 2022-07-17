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
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="resources/ogjcss/room.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

</head>
<body>


	<section>
		<div align="center">
			<div class="top">
				<jsp:include page="../inc/oh_camping_top2.jsp" />
				<div class="top2">
					<h1>Room Previes</h1>
					<h3>저희 펜션의 객실을 한눈에 확인해보세요.</h3>
					<div class="roombtn">
						<a type="button" class="nextbtn">계곡1,2,3,4
							<div><span class="nextsub"></span></div>
						</a> <a type="button"
							class="prevbtn">대형1,2,3,4
							<div><span class="prevsub"></span></div>
							</a>
					</div>
				</div>
			</div>

			<div class="wrap_preview">

			


				<div class="slick-btn-main">
					<div class="slick-btn left next">
						<span class="material-symbols-outlined"> chevron_left </span>
					</div>
					<div class="slick-btn right prev">
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
		</div>
		<jsp:include page="../inc/oh_camping_bottom.jsp" />
	</section>







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