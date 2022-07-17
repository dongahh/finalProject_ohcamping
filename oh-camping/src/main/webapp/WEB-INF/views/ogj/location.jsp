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
<link rel="stylesheet" href="resources/ogjcss/location.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

</head>
<body>

   
	<section>
	<div align="center">
		<div class="top">
		    <jsp:include page="../inc/oh_camping_top2.jsp" />  
		    <div class="top2">
			<h1>Location</h1>
			<h3>저희 펜션으로 오시는 길을 안내해 드리겠습니다</h3>
			</div>
		</div>
		
		<div class="wrap_location">
			<h1>Map</h1>
			<h3>지도로 저희 펜션의 위치를 확인해보세요</h3>
			<div id="map" style="width:100%;height:400px; margin-top: 50px"></div>
		</div>
		
		<div class="wrap_location">
			<h1>Location by a Car</h1>
			<h3>자동차로 오는 법</h3>
			<div class="wrap_find_place car mt">
				<div class="find_img_1"></div>
				<div class="find_txt left">
					<b>주소지는 "서울 중구 남대문로 120 대일빌딩 " 로 검색해서 찾아와 주세요</b>
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
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=df2f894e46583ba7142ab71c503731f3"></script>
		
		<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.567932, 126.978947),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		var marker = new kakao.maps.Marker({
		    map: map, 
		    position: new kakao.maps.LatLng( 37.567932, 126.978947)
		});
		
		marker.setMap(map);
		
		var content = '<div class ="label"><span class="left"></span><span class="center" style="font-weight:bold;">오캠핑 캠핑장</span><span class="right"></span></div>';

		// 커스텀 오버레이가 표시될 위치입니다 
		var position = new kakao.maps.LatLng(37.567922, 126.978947);  

		// 커스텀 오버레이를 생성합니다
		var customOverlay = new kakao.maps.CustomOverlay({
		    position: position,
		    content: content   
		});

		// 커스텀 오버레이를 지도에 표시합니다
		customOverlay.setMap(map);

	</script>
	





</body>
</html>