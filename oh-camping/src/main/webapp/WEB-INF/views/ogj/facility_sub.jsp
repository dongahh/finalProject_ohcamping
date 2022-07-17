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
		<div class="about_tit">
			<h1>${text}</h1>
		</div>
		<div class="slick-btn-main">
			<div class="slick-btn left big-next">
				<span class="material-symbols-outlined"> chevron_left </span>
			</div>
			<div class="slick-btn right big-prev">
				<span class="material-symbols-outlined"> chevron_right </span>
			</div>

		</div>
		<div class="big-slick bigroom">
			<div class="roomimage" style="background-image: url('${img}1.jpg')"></div>
			<div class="roomimage" style="background-image: url('${img}2.jpg')"></div>
			<div class="roomimage" style="background-image: url('${img}3.jpg')"></div>
			<div class="roomimage" style="background-image: url('${img}4.jpg')"></div>
			<div class="roomimage" style="background-image: url('${img}5.jpg')"></div>

		</div>
	</section>
	<script>
	AOS.init();
	</script>



<section class="facil_detail" data-aos="fade-right">
	<div class="style_bg_facil_1"></div>
	<div class="wrap_facil_img">
		<div class="img_facil facil_1" style="background: url('${img}1.jpg')no-repeat 50% 50%;background-size: cover"></div>
	</div>
	<div class="facil_detail_txt">
		<div>
			<h1 class="tit_intro bor_bottom">${text }</h1>
			<p class="style_intro1">
			
			${text2 }
			
			</p>
			<a href="<%=request.getContextPath()%>/facility.do" class="btn_facil_1">preview facility</a>
		</div>
	</div>
</section>

<section class="facil_detail style2" data-aos="fade-left">
	<div class="style_bg_facil_2">
		<h1>
			<span class="pen_name_tit">Finland Camping</span>''s Facility
		</h1>
	</div>
	
	<div class="wrap_facil_img">
		<div class="img_facil facil_1_2" style="background: url('${img}2.jpg')no-repeat 50% 50%;background-size: cover"></div>
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
		
		
	
	});
	</script>

</body>
</html>