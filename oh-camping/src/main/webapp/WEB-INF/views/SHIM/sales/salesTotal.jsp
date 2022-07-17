<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="h-100">
<head>
<meta charset="UTF-8">
<title>매출 관리</title>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/SHIM/js/salesTotal.js"></script>
</head>
<body class="d-flex flex-column h-100">

    <jsp:include page="../../inc/admin_top2.jsp" /> 
    <c:set var="list" value="${List }" />
	<c:set var="paging" value="${Paging }" /> 
    <div id="admin_wrap" class="container webfont">
        <!-- 왼쪽 메뉴 -->
        <div id="aside">
            <div class="leftmenu">
                <h3 id="left_menu_head">매출</h3>
                <ul class="left_menu_ul">
                    <li class="nav_on">
                        <a href="<%=request.getContextPath() %>/sales/main.do">
                            <i class="fa fa-caret-right"></i> 매출관리
                        </a>
                    </li>                  

                </ul>
            </div>
        </div>
        <!-- // 왼쪽 메뉴 -->
			<section id="section" style="clear: none; margin-bottom: 50px;">
			
						            <!-- 본문 타이틀 -->
            <h3 class="admin_title">매출 관리 <span class="sub_title2">member</span></h3>

            <!-- 본문 내용 시작 -->
		<%-- ----------------------- 분류 부분 ----------------------- --%>
				<table class="table division-table">
					<tr>
						<th>날 짜</th>
						<td class="radio">
							<input id="r1" type="radio" name="radio_date" value="all_date" checked/>
							<label for="r1">전체</label>
							<input id="r2" type="radio" name="radio_date" value="today"/>
							<label for="r2">오늘</label>
							<input id="r3" type="radio" name="radio_date" value="week"/>
							<label for="r3">7일</label>
							<input id="r4" type="radio" name="radio_date" value="month"/>
							<label for="r4">1개월</label>
							<input id="r5" type="radio" name="radio_date" value="3month"/>
							<label for="r5">3개월</label>
							<input id="r6" type="radio" name="radio_date" value="6month"/>
							<label for="r6">6개월</label>
							<input id="r7" type="radio" name="radio_date" value="year"/>
							<label for="r7">1년</label>
						</td>
						<th>객실 분류</th>
						<td class="room">
							<select class="divide_room" name="divide_room">
								<option value="all_room" selected>객실 전체</option>
								<option class="separator" disabled>∥계곡∥</option>
								<option value="계곡 1호">계곡 1호</option>
								<option value="계곡 2호">계곡 2호</option>
								<option value="계곡 3호">계곡 3호</option>
								<option value="계곡 4호">계곡 4호</option>
								<option value="계곡 5호">계곡 5호</option>
								<option class="separator" disabled>∥대형∥</option>
								<option value="대형 1호">대형 1호</option>
								<option value="대형 2호">대형 2호</option>
								<option value="대형 3호">대형 3호</option>
								<option value="대형 4호">대형 4호</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>기 간</th>
						<td>
							<input type="date" class="start_date"/>
							<span class="date-range">~</span> 
							<input type="date" class="end_date"/> 
							<input class="inquire-btn" type="button" value="조회" onclick="dateList()"/>
						</td>
					</tr>
				</table>
				<%-- ----------------------- 목록 부분 ----------------------- --%>
				<div class="sales-body">
					<table class="table sales-table">
						<thead>
							<tr class="sales-thead">
								<th>날짜</th>
								<th>객실</th>
								<th>매출액</th>
							</tr>
						</thead>
						<tbody class="sales-tbody">
						<%-- Ajax 매출 목록 --%>
						</tbody>
						<tr>
							<td class="sales-total" colspan="3">
							총 매출 : <span class="total-money"></span>원
							</td>
						</tr>
					</table>
					<%-- ----------------------- 매출 통계 부분 ----------------------- --%>
					<div class="sales-content">
						<table class="table content-table">
							<tr class="content-thead">
								<th>객실</th>
								<th>예약 횟수</th>
								<th>매출액</th>
								<th>비율</th>
								<th>그래프</th>
							</tr>
							<tbody class="stat-tbody">
							<%-- Ajax 통계 목록 --%>
							</tbody>
						</table>
					</div>
				</div>
			</section>
		</main>
	</div>		
	
	<jsp:include page="../../inc/admin_bottom.jsp" />
</body>
</html>