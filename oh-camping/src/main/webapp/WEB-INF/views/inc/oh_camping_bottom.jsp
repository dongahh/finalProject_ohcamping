<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<!-- 바텀 시작 -->
    <footer id="footer">
        <div class="bg_foot_menu">
            <div id="foot_menu">
                <ul class="clearfix ">
                	<li><a href="<%=request.getContextPath() %>/">Home</a></li>
                    <!-- 로그인 메뉴 -->
                    <% 
                        // 로그인 안되었을 경우 - 로그인, 회원가입 버튼을 보여준다.
                        if(session.getAttribute("sessionID")==null){ 
                     %>    
                          <li><a href="<%=request.getContextPath() %>/camp_login.do">로그인</a></li>
                          <li><a href="<%=request.getContextPath() %>/camp_join.do">회원가입</a></li>
                          <li><a href="<%=request.getContextPath() %>/camp_admin_login.do">관리자로그인</a></li>
                   	 <%  } else{ // 로그인 했을 때 
                	   		String loginId = (String)session.getAttribute("sessionID");
                	   		if (loginId.equals("admin")){ // 관리자 %>
                	   			<li><a href="<%=request.getContextPath() %>/main.do">관리자</a></li>
                                <li><a href="<%=request.getContextPath() %>/camp_logout.do">로그아웃</a></li> 
                	  <%  	}else{ // 일반 사용자%>
                	   			<!--  <li><a href="<%=request.getContextPath() %>/camp_info.do?id=<%=loginId %>">MyPage</a></li>-->
                                <li><a href="<%=request.getContextPath() %>/camp_logout.do">로그아웃</a></li> 
                	  <%  	}
                     	  }  %>
	                
                </ul>
                <div class="clear"></div>
            </div>
        </div>
        <div id="foot_contents">
            <div class="company_info">
                <ul>
                    <li>
                        <h5><strong>INFORMATION</strong></h5>
                    </li>
                    <li>상호명 : <strong>Oh Camping</strong> </li>
                    <li>주소 : 서울특별시 중구 남대문로 120 대일빌딩 2층, 3층 </li>
                </ul>
                <ul>
                    <li>
                        <h5><strong>&nbsp;</strong></h5>
                    </li>
                    <li>대표전화 : 02-1544-9970</li>
                    <li>팩스번호 : 02-1544-9971 </li>
                    <li>e-mail : ohCamping@naver.com </li>
                </ul>
                <div class="clear"></div>
            </div>
            <div id="bg_copy">
	            <div class="wd">
	                <div class="copy_year">
	                    <span class="color-red">모든 컨텐츠의 무단복제 및 재판매를 금지합니다.</span><br>
	                    Copyright(c) <span id="year">2022</span> by <strong>Oh Camping</strong> All Rights Reserved.
	                </div>
	            </div>
	        </div>
        </div>
        
    </footer>

    <script src="<%=request.getContextPath() %>/resources/dist/aos.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/main.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/common.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/data.js"></script>

	<script>
	
	    setTimeout(function(){
	      AOS.init({
	          duration: 700,
	          // disable: 'mobile',
	          // useClassNames: true,
	          // // initClassName: false,
	          // animatedClassName: 'animated',
	        });
	    },2000)
	
	  var btn_mute = document.querySelector('.btn_mute');
	  var video_viewport = document.querySelector('.box_arrow_main.right');
	
	    $('.mb_btn').on('click',function(){
	      $(this).toggleClass('on');
	      $('.menu_mb').toggleClass('on');
	    })
	
	
	    if(device_width > 600){
	
	        window.onscroll = function (e) {
	
	            var bounding = video_viewport.getBoundingClientRect();
	
	            if (
	                bounding.top >= 0 &&
	                bounding.left >= 0 &&
	                bounding.right <= (window.innerWidth || document.documentElement.clientWidth) &&
	                bounding.bottom <= (window.innerHeight || document.documentElement.clientHeight)
	            ) {
	                unmuteVideo();
	            } else {
	                muteVideo();
	
	            }
	        }
	    }
	
	</script>
</html>