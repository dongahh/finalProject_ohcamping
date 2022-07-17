<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <title>Oh Camping</title>

    <!-- CSS Files -->
    <!-- Awesome.css -->
    <link href="<%=request.getContextPath() %>/resources/css/font.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/reset_h2.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/dist/aos.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/dist/icon.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/dist/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/common.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/css/sub_st.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/ogjcss/top2.css" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <!-- slick 적용 -->
   	<script src="<%=request.getContextPath() %>/resources/dist/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
	    $(document).on('ready', function() {
	      $(".m_slick").slick({
	        dots: true,
	        autoplay: true,
	        autoplaySpeed: 3000,
	      });
	    });
	</script>
</head>
<body>
	<!-- 메뉴바(header) -->
    <header id="header" class="head_3">
    	<div class="top_header_bg">
            <div id="top_header" class="clearfix">
                <div id="g_nav">
                    <ul class="clearfix">
                        <li class="hidden-xs"><a href="<%=request.getContextPath() %>/camp_main.do">Home</a></li>
                        <% 
                           // 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다.
                            if(session.getAttribute("sessionID")==null){ 
                        %>    
                              <li><a href="<%=request.getContextPath() %>/camp_login.do">Login</a></li>
                              <li><a href="<%=request.getContextPath() %>/camp_join.do">Join</a></li>
                       	<%  } else{ // 로그인 했을 때 
                    	   		String loginId = (String)session.getAttribute("sessionID");
                    	   		if (loginId.equals("admin")){ // 관리자 %>
                    	   			<li><a href="<%=request.getContextPath() %>/main.do">관리자</a></li>
                                    <li><a href="<%=request.getContextPath() %>/camp_logout.do">Logout</a></li> 
                    	 <%  	}else{ // 일반 사용자%>
                    	   			<!--  <li><a href="<%=request.getContextPath() %>/camp_info.do?id=<%=(String)session.getAttribute("sessionID") %>">MyPage</a></li>-->
                                    <li><a href="<%=request.getContextPath() %>/camp_logout.do">Logout</a></li> 
                    	 <%  	}
                         	}  %>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
         </div>
         <nav id="navwrap_bg" class="wrap_menu">
         	<div class="menu_logo">
                <a href="<%=request.getContextPath() %>/camp_main.do">
                    <img src="<%=request.getContextPath() %>/resources/img/logo.png">
                </a>
            </div>
            <div class="menu_items sub">
                <div class="menu_list">
                    <a href="<%=request.getContextPath()%>/about.do">About</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="<%=request.getContextPath()%>/about.do">펜션소개</a>
                        </li>
                        <li class="inner_list">
                            <a href="<%=request.getContextPath()%>/camp_staff.do">직원소개</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="<%=request.getContextPath()%>/ogj_room.do">Room</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="<%=request.getContextPath()%>/ogj_room.do">미리보기</a>
                        </li>
                        <li class="inner_list">
                            <a href="<%=request.getContextPath()%>/valley.do">계곡 1,2,3,4</a>
                        </li>
                        <li class="inner_list">
                            <a href="<%=request.getContextPath()%>/bigroom.do">대형 1,2,3,4</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="<%=request.getContextPath()%>/facility.do?">Facility</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="<%=request.getContextPath()%>/facility.do?">미리보기</a>
                        </li>
                        <li class="inner_list">
                            <a href="<%=request.getContextPath()%>/facility_sub.do?no=1">바베큐</a>
                        </li>
                        <li class="inner_list">
                            <a href="<%=request.getContextPath()%>/facility_sub.do?no=2">수영장</a>
                        </li>
                        <li class="inner_list">
                              <a href="<%=request.getContextPath()%>/facility_sub.do?no=3">계곡</a>
                        </li>
                        <li class="inner_list">
                              <a href="<%=request.getContextPath()%>/facility_sub.do?no=4">놀이터</a>
                        </li>
                        <li class="inner_list">
                              <a href="<%=request.getContextPath()%>/facility_sub.do?no=5">사우나</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="<%=request.getContextPath()%>/travel.do">Travel</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                              <a href="<%=request.getContextPath()%>/travel.do">미리보기</a>
                        </li>
                        <li class="inner_list">
                              <a href="<%=request.getContextPath()%>/travel_sub.do?no=1">아침고요수목원</a>
                        </li>
                        <li class="inner_list">
                              <a href="<%=request.getContextPath()%>/travel_sub.do?no=2">쁘띠 프랑스</a>
                        </li>
                        <li class="inner_list">
                              <a href="<%=request.getContextPath()%>/travel_sub.do?no=3">남이섬</a>
                        </li>
                        <li class="inner_list">
                              <a href="<%=request.getContextPath()%>/travel_sub.do?no=4">포천아트밸리</a>
                        </li>
                        <li class="inner_list">
                              <a href="<%=request.getContextPath()%>/travel_sub.do?no=5">베어스타운스키장</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="<%=request.getContextPath()%>/location.do">Location</a>
                </div>
                <div class="menu_list">
                    <a href="<%=request.getContextPath()%>/calendar_iframe7.do">Reservation</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="<%=request.getContextPath()%>/calendar_iframe7.do">실시간 예약</a>
                        </li>
                        <li class="inner_list">
                            <a href="<%=request.getContextPath()%>/maininfo.do">예약안내</a>
                        </li>
                    </ul>
                </div>
                <div class="menu_list">
                    <a href="<%=request.getContextPath() %>/camp_notice.do">Community</a>
                    <ul class="menu_inner">
                        <li class="inner_list">
                            <a href="<%=request.getContextPath() %>/camp_notice.do">공지사항</a>
                        </li>
                        <li class="inner_list">
                            <a href="<%=request.getContextPath() %>/camp_qa.do">이용문의</a>
                        </li>
                        <li class="inner_list">
                            <a href="<%=request.getContextPath() %>/review.do">숙박후기</a>
                        </li>
                    </ul>
                </div>
            </div>
       </nav>
    </header>
    
      <div class="top">
  <h1>Reservation</h1>
			<h3>실시간 예약안내를 도와 드리겠습니다</h3>
  </div>
    <!-- // 메뉴바(header) -->

</body>
</html>