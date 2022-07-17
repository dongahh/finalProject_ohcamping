<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="h-100">
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="<c:url value="/resources/SHIM/css/member/main.css" />?26" rel="stylesheet">
<link href="<c:url value="/resources/SHIM/fontello/css/fontello.css" />?3" rel="stylesheet">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/SHIM/js/member.js?8"></script>
</head>
<body class="d-flex flex-column h-100">
    <jsp:include page="../../inc/admin_top.jsp" /> 
    <c:set var="list" value="${List }" />
	<c:set var="paging" value="${Paging }" /> 
	<input type="hidden" value="${adminId }" id="adminId" />
    <div id="admin_wrap" class="container webfont">
        <!-- 왼쪽 메뉴 -->
        <div id="aside">
            <div class="leftmenu">
                <h3 id="left_menu_head">회원</h3>
                <ul class="left_menu_ul">
                    <li class="nav_on">
                        <a href="<%=request.getContextPath() %>/main.do">
                            <i class="fa fa-caret-right"></i> 회원관리
                        </a>
                    </li>                  

                </ul>
            </div>
        </div>
        <!-- // 왼쪽 메뉴 -->
			
			<section id="section" style="clear: none;">
			
			            <!-- 본문 타이틀 -->
            <h3 class="admin_title">회원 관리 <span class="sub_title2">member</span></h3>

            <!-- 본문 내용 시작 -->
				<div class="head">
		<%-- ----------------------- 정렬 부분 ----------------------- --%>
					<div class="sort_block">
						<select name="sort" class="sort">
						  <option value="null" selected>※정렬※</option>
						  <option value="no">번호</option>
						  <option value="id">아이디</option>
						  <option value="name">성 명</option>
						  <option value="email">이메일</option>
						</select>
					</div>
		<%-- ----------------------- 검색 부분 ----------------------- --%>
					<div class="search">
						<select class="search_option" name="search">
						  <option value="no">번호</option>
						  <option value="id">아이디</option>
						  <option value="name">성 명</option>
						  <option value="email">이메일</option>
						</select>
						<div class="search_key_btn">
							<input class="search_key" type="search" name="keyword" placeholder="Search..."
								onkeypress="if( event.keyCode == 13 ){search();}"/>
							<button class="search_btn" type="button" onclick="search();">
								<span class="icon-search"></span>
							</button>
						</div>
					</div>
				</div>
		<%-- ----------------------- 목록 부분 ----------------------- --%>
				<table class="table table-hover">
					<tr class="thead">
						<th>No.</th> <th>아이디</th> <th>성 명</th> <th>이메일</th>
					</tr>
					
					<%-- 회원 조회 --%>
					<tbody class="detail-user"></tbody>
				</table>
				<nav class="paging" aria-label="Page navigation example">
				
					<%-- 회원 페이징 --%>
					<ul class="list-page pagination justify-content-center"></ul>
				</nav>	
			</section>
		</main>
	</div>	
	<%-- ----------------------- 회원 상세 부분 ----------------------- --%>		
	<div class="card detail-modal" style="z-index: 5000">
	
		<%-- 회원 정보 --%>
		<div class="card-body"></div>
		
		<%-- 문의 내역 --%>
		<div class="inquiry"></div>
		
		<%-- 예약 내역 --%>
		<div class="reserve"></div>
		
		<%-- 회원 수정 --%>
		<div class="modify"></div>		
			
	</div>
	
	<jsp:include page="../../inc/admin_bottom.jsp" />
	
	
	
</body>
</html>
