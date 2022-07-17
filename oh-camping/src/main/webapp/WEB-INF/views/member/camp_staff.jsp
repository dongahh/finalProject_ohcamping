<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- 부트스트랩  -->
<link rel="canonical" href="https://getbootstrap.com/docs/5.2/layout/grid/"><link rel="preconnect" href="https://AK7KMZKZHQ-dsn.algolia.net" crossorigin>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
<link href="https://getbootstrap.com/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

</head>
<body>
    
   <section class="wrap_staff ">
         <div class="wrapper"> 
            <jsp:include page="../inc/oh_camping_top.jsp" />   
         </div>
         <div id="sub_wrap" class="webfont"> 
            <div id="sub_contents">
                <h1>Staff Introduction</h1>
                <div class="staff">
                    <div class="row">
                        <!-- 직원소개1 -->
                        <div class="col-4">
                            <div class="staff_in">                        
                                <div class="img_box">
                                    <img class="img-responsive" src="<%=request.getContextPath() %>/resources/img/staff/staff01.jpg" width="100%" alt=""/>
                                </div>
                                <div class="stitle_v1_black sm-margin-bottom-10 staff_title">
                                    <i class="fa fa-user marjin_right5"></i> 오경종 <span>(<span>사장</span> 조장</span>)
                                </div>
                                <p class="text-muted staff_txt">“코딩이 미래다”</p>
                            </div>
                        </div>
                        <!-- // 직원소개1 -->
                        
                        <!-- 직원소개2 -->
                        <div class="col-4">
                            <div class="staff_in">
                                <div class="img_box">
                                    <img class="img-responsive" src="<%=request.getContextPath() %>/resources/img/staff/staff02.jpg" width="100%" alt=""/>
                                </div>
                                <div class="stitle_v1_black sm-margin-bottom-10 staff_title">
                                    <i class="fa fa-user marjin_right5"></i> 김동찬
                                </div>
                                <p class="text-muted staff_txt">"모두 고생하셨습니다!!"</p>
                            </div>
                        </div>
                        <!-- // 직원소개2 -->
                        
                        <!-- 직원소개3 -->
                        <div class="col-4">
                            <div class="staff_in">
                                <div class="img_box">
                                    <img class="img-responsive" src="<%=request.getContextPath() %>/resources/img/staff/staff03.jpg" width="100%" alt=""/>
                                </div>
                                <div class="stitle_v1_black sm-margin-bottom-10 staff_title">
                                    <i class="fa fa-user marjin_right5"></i> 김유나
                                </div>
                                <p class="text-muted staff_txt">"열심히, 즐겁게"</p>
                            </div>
                        </div>
                        <!-- // 직원소개3 -->
                    </div>
                    
                    
                    <div class="row">
                        <!-- 직원소개4 -->
                        <div class="col-4">
                            <div class="staff_in">                        
                                <div class="img_box">
                                    <img class="img-responsive" src="<%=request.getContextPath() %>/resources/img/staff/staff04.jpg" width="100%" alt=""/>
                                </div>
                                <div class="stitle_v1_black sm-margin-bottom-10 staff_title">
                                    <i class="fa fa-user marjin_right5"></i> 심규복
                                </div>
                                <p class="text-muted staff_txt">"다들 감사합니다"</p>
                            </div>
                        </div>
                        <!-- // 직원소개4 -->
                        
                        <!-- 직원소개5 -->
                        <div class="col-4">
                            <div class="staff_in">    
                                <div class="img_box">
                                    <img class="img-responsive" src="<%=request.getContextPath() %>/resources/img/staff/staff05.jpg" width="100%" alt=""/>
                                </div>
                                <div class="stitle_v1_black sm-margin-bottom-10 staff_title">
                                    <i class="fa fa-user marjin_right5"></i> 최동아
                                </div>
                                <p class="text-muted staff_txt">"항상 최선을 다하자"</p>
                            </div>
                        </div>
                        <!-- // 직원소개5 -->
                        
                    </div>
                </div>
            </div end-sub_contents>
            
            <div class="clear"></div>
         </div sub_wrap>
    </section>  
    
    <div class="footer_no_margin">
        <jsp:include page="../inc/oh_camping_bottom.jsp" />
    </div>
    
</body>
</html>