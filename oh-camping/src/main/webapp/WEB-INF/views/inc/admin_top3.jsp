<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <title>Oh Camping 관리자</title>

    <!-- CSS Files -->
    <!-- 부트스트랩  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <!-- Awesome.css -->
    <link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/font.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/reset_h.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/common.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/admin_st.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/SHIM/css/reserve/main.css?17" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
</head>
<body>
    <!-- 메뉴바(header) -->
    <div class="fixed-top border-bottom admin_header">
      	<nav class="bg-light border-bottom">
          	<div class="container nav1"><!-- d-flex flex-wrap -->
             	<ul class=""> <!-- nav -->
                	<li class="nav-item"> <!-- nav-item -->
                		<a href="<%=request.getContextPath() %>/" class="nav-link link-dark px-2">
                			<i class="fa fa-caret-right"></i> 내사이트 바로가기
                		</a>
                	</li>
              	</ul>
          	</div>
      	</nav>
      	<div class="container nav2">
          	<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3">
              	<a href="<%=request.getContextPath() %>/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
                  	<img src="<%=request.getContextPath() %>/resources/img/logo.png">
              	</a>
              	<ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                  	<li><a href="<%=request.getContextPath() %>/reserve/main.do" class="nav-link link-secondary">예약관리</a></li>
                  	<li><a href="<%=request.getContextPath() %>/sales/main.do" class="nav-link link-dark">매출관리</a></li>
                  	<li><a href="<%=request.getContextPath() %>/main.do" class="nav-link link-dark">회원관리</a></li>
                  	<li><a href="<%=request.getContextPath() %>/admin_notice_list.do" class="nav-link link-dark">공지사항</a></li>
                  	<li><a href="#" class="nav-link link-dark">문의답변</a></li>
                  	<li><a href="<%=request.getContextPath() %>/admin_popup.do" class="nav-link link-dark">팝업관리</a></li>
                  	<li><a href="<%=request.getContextPath() %>/admin_review.do"" class="nav-link link-dark">리뷰관리</a></li>
              	</ul>

              	<div class="col-md-3 text-end">
                  	<button type="button" class="btn btn-outline-primary me-2"
                  		onclick="location.href='camp_logout.do'">로그아웃</button>
              	</div>
          	</header>
      	</div>
  	</div>
    <!-- // 메뉴바(header) -->

</body>
</html>