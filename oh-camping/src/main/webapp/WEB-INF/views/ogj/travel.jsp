<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link rel="stylesheet" href="resources/ogjcss/facility_sub.css">
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
			<div class="roomimage" style="background-image: url('resources/images/travel1.jpg')">
				<div class="about_tit">
					<h1>Garden of Mornong Calm</h1>
					<h3>아침고요 수목원</h3>
				</div>
			</div>
			<div class="roomimage" style="background-image: url('resources/images/travel2.jpg')">
			<div class="about_tit">
					<h1>Petite France</h1>
					<h3>쁘띠 프랑스</h3>
				</div></div>
			<div class="roomimage" style="background-image: url('resources/images/travel3.jpg')">
			<div class="about_tit">
					<h1>Nami Island</h1>
					<h3>남이섬</h3>
				</div>
			</div>
			<div class="roomimage" style="background-image: url('resources/images/travel4.jpg')">
			<div class="about_tit">
					<h1>Phochen Art Valley</h1>
					<h3>포천아트밸리</h3>
				</div>
			</div>
			<div class="roomimage" style="background-image: url('resources/images/travel5.jpg')">
			<div class="about_tit">
					<h1>Bears Town Ski Resort</h1>
					<h3>베어스타운스키장</h3>
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
			  nextArrow:$('.big-prev'),
			  prevArrow:$('.big-next'),
			  dots: false
		});
		
		
	
	});
	</script>

</body>
</html>