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
<link rel="stylesheet" href="resources/ogjcss/facility.css">
</head>
<body>

 <jsp:include page="../inc/oh_camping_top2.jsp" />

	<section class="main_facility">
		<div class="top">
			<h1>Barbecue</h1>
			<h3>저희 펜션에서 즐거운 바베큐 파티를 해보세요</h3>
		</div>
		<div class="wrap_facil">
			<div class="facil_block facil_block1">
				<div class="main_facil main_facilt_1"></div>
				<div class="main_facil main_facilt_1_2"></div>

			</div>
			<div class="facil_block facil_block2">
				<div class="main_facil main_facilt_1_5">
					<div class="wrap_facil_txt">
						<h1>바베큐</h1>
						<h2>Babecue</h2>
						<a href="<%=request.getContextPath()%>/facility_sub.do?no=1" class="btn_facil">View More</a>
					</div>
				</div>
			</div>

			<div class="facil_block facil_block3">
				<div class="main_facil main_facilt_1_3"></div>
				<div class="main_facil main_facilt_1_4"></div>

			</div>
		</div>

	</section>
	
		<section class="main_facility">
		<div class="top_sub">
			<h1>Swimming pool</h1>
			<h3>저희 펜션 수영장에서 즐거운 시간을 보내보세요</h3>
		</div>
		<div class="wrap_facil">
			<div class="facil_block facil_block1">
				<div class="main_facil main_facilp_1"></div>
				<div class="main_facil main_facilp_1_2"></div>

			</div>
			<div class="facil_block facil_block2">
				<div class="main_facil main_facilp_1_5">
					<div class="wrap_facil_txt">
						<h1>수영장</h1>
						<h2>Swimming pool</h2>
						<a href="<%=request.getContextPath()%>/facility_sub.do?no=2" class="btn_facil">View More</a>
					</div>
				</div>
			</div>

			<div class="facil_block facil_block3">
				<div class="main_facil main_facilp_1_3"></div>
				<div class="main_facil main_facilp_1_4"></div>

			</div>
		</div>

	</section>
	
	
		<section class="main_facility">
		<div class="top_sub">
			<h1>Valley</h1>
			<h3>저희 펜션 근처에 있는 계곡에서 자연을 만끽해보세요</h3>
		</div>
		<div class="wrap_facil">
			<div class="facil_block facil_block1">
				<div class="main_facil main_facilv_1"></div>
				<div class="main_facil main_facilv_1_2"></div>

			</div>
			<div class="facil_block facil_block2">
				<div class="main_facil main_facilv_1_5">
					<div class="wrap_facil_txt">
						<h1>계곡</h1>
						<h2>Valley</h2>
						<a href="<%=request.getContextPath()%>/facility_sub.do?no=3" class="btn_facil">View More</a>
					</div>
				</div>
			</div>

			<div class="facil_block facil_block3">
				<div class="main_facil main_facilv_1_3"></div>
				<div class="main_facil main_facilv_1_4"></div>

			</div>
		</div>

	</section>
	
			<section class="main_facility">
		<div class="top_sub">
			<h1>playground</h1>
			<h3>놀이터에서 즐거운 시간을 가져보세요</h3>
		</div>
		<div class="wrap_facil">
			<div class="facil_block facil_blocpl1">
				<div class="main_facil main_facilpl_1"></div>
				<div class="main_facil main_facilpl_1_2"></div>

			</div>
			<div class="facil_block facil_block2">
				<div class="main_facil main_facilpl_1_5">
					<div class="wrap_facil_txt">
						<h1>놀이터</h1>
						<h2>playground</h2>
						<a href="<%=request.getContextPath()%>/facility_sub.do?no=4" class="btn_facil">View More</a>
					</div>
				</div>
			</div>

			<div class="facil_block facil_block3">
				<div class="main_facil main_facilpl_1_3"></div>
				<div class="main_facil main_facilpl_1_4"></div>

			</div>
		</div>

	</section>
	
				<section class="main_facility">
		<div class="top_sub">
			<h1>Sauna</h1>
			<h3>사우나에서 피로를 풀어보세요</h3>
		</div>
		<div class="wrap_facil">
			<div class="facil_block facil_blocpl1">
				<div class="main_facil main_facils_1"></div>
				<div class="main_facil main_facils_1_2"></div>

			</div>
			<div class="facil_block facil_block2">
				<div class="main_facil main_facils_1_5">
					<div class="wrap_facil_txt">
						<h1>사우나</h1>
						<h2>Sauna</h2>
						<a href="<%=request.getContextPath()%>/facility_sub.do?no=5" class="btn_facil">View More</a>
					</div>
				</div>
			</div>

			<div class="facil_block facil_block3">
				<div class="main_facil main_facils_1_3"></div>
				<div class="main_facil main_facils_1_4"></div>

			</div>
		</div>

	</section>
<jsp:include page="../inc/oh_camping_bottom.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>