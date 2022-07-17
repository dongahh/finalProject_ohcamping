<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript">

	function showpayinfo() {
		
		var cont = document.getElementsByClassName("roomPriceLayer");
		var pricebutton = document.getElementById("pricebutton");
		var i;
		
		for(i=0; i < cont.length; i++) {
			if(cont[i].style.display == 'none'|| cont[i].style.display === "") {
				cont[i].style.display = 'block';
			}else{
				cont[i].style.display = 'none';
			}
		}

		pricebutton.classList.toggle('on');
		
	}
	
	
</script>
<style type="text/css">

	.res_header {
		width: 100%;
		text-align: center;
				/* 메뉴 넣기위한 수정 */
		
		/* position: fixed; */
		/* top: 0px; */
		margin-top : 50px;
		left: 0px;
		z-index: 11;
		background-color: rgb(255, 255, 255);
		font-family: Noto sans kr;
		padding: 18px 0px 8px;
		border-bottom: 1px solid rgb(230, 229, 229);
	}
	
	.res_header .res_headerLayer {
		width: 1024px;
		text-align: left;
		margin: 0px auto;
		position: relative;
		padding: 0px;
	}
	
	.res_header_right {
		float: right;
	}
	
	.headerLink {
		position: relative;
		font-weight: 700;
		padding: 7px 14px 8px 14px;
		font-size: 13px;
		color: #aaa;
		cursor: pointer;
		display: inline-block;
	}
	
	.headerLink:hover {
		color: #333;
	}
	
	.headerLink.on {
		color: #333;
	}
	
	.linebar {
		color: #aaa;
		padding: 0px;
		font-weight: 300;
		display: inline-block;
	}

	.admin_button {
		border: 1px solid #aaa;
		color: #aaa;
		font-size: 12px;
		padding: 6px 8px;
		cursor: pointer;
		margin-top: -5px;
		margin-left: 10px;
		display: inline-block;
	}
	
	.admin_button:hover {
		color:#333; 
		border:1px solid #333;
	}
	
	.header_title {
		font-size: 16px;
		color: #333;
		font-weight: 700;
		cursor: pointer;
	}
	


	.wrapper {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
		margin-top: 80px;
		align-items: center;
		font-size: 12pt;
		font-family: Noto sans kr;
	}
	
	.wrapper2 {
		width: 1024px;
	}
	
	.cal_header {
		width: 100%;
		display: flex;
		justify-content: space-between;
		font-size: 12px;
	}
	
	.revstate_info {
		display: flex;
		justify-content: space-around;
	}
	
	.revstate_info div {
		margin-left: 5px;
		margin-right: 5px;
	}
	
	.rev_poss {
		width: 20px;
		height: 18px;
		background-color: #8fc31f;
		color: #fff;
		letter-spacing: 0px;
		text-align: center;
		padding-top: 2px;
		font-weight: 400;
	}
	
	.rev_wait {
		width: 20px;
		height: 18px;
		background-color: #5c92ff;
		color: #fff;
		letter-spacing: 0px;
		text-align: center;
		padding-top: 2px;
		font-weight: 400;
	}
	
	.rev_succ {
		width: 20px;
		height: 18px;
		background-color: #ff6559;
		color: #fff;
		letter-spacing: 0px;
		text-align: center;
		padding-top: 2px;
		font-weight: 400;
	}
	
	.rev_sale {
		width: 20px;
		height: 18px;
		background-color: #666666;
		color: #fff;
		letter-spacing: 0px;
		text-align: center;
		padding-top: 2px;
		font-weight: 400;
	}
	
	.cal_month {
		margin-right: 210px;
	}
	
	.month_info {
		font-size: 16px;
		font-weight: 700;
		color: #000;
		margin: 0px 15px;
		top: -8px;
		position: relative;
	}
	
	
	.todayButton {
		display: inline-block;
		border: 1px solid #aaa;
		color: #666;
		cursor: pointer;
		padding: 5px 8px;
	}
	
	.todayButton:hover {
		color:#333; 
		border:1px solid #333; 
		background-color:#FFF;
	}
	
	.priceview {
		display: inline-block;
		border: 1px solid #aaa;
		color: #666;
		cursor: pointer;
		padding: 5px 8px;
	}
	
	.priceview.on {
		color: #fff;
		background-color: #ff6559;
		border: 1px solid #ff6559;
	}
	
	.priceview:hover {
		color:#333; 
		border:1px solid #333; 
		background-color:#FFF;
	}
	
	.cal_calendar {
		width: 100%;
		margin-top: 10px;
	}
	
	.cal_table {
		width: 100%;
		table-layout: fixed;
	}
	
	.cal_table tr th {
		background-color: #f4f4f4;
		text-align: center;
		font-size: 12px;
		padding: 12px 0px;
		border: 1px solid #e6e5e5;
		border-right: 0px;
	}
	
	.cal_table tr th.sunday {
		color: #FF4141;
	}
	
	.cal_table tr th.satday {
		color: #0c71c0;
	}
	
	.cal_table tr th.last_child {
		border-right: 1px solid #e6e5e5;
	}
	
	tr {
		display: table-row;
		vertical-align: inherit;
		border-color: inherit;
	}
	
	.cal_table tr td {
		background-color: #FFF;
	    text-align: center;
	    font-size: 12px;
	    padding: 4px 8px 6px 8px;
	    border: 1px solid #E6E5E5;
	    border-right: 0px;
	    border-top: 0px;
	    vertical-align: middle;
	    max-width: 14%;
	    height: 100px;
	}
	
	.cal_table tr td.last_child {
		border-right: 1px solid #e6e5e5;
	}
	
	.calDayLayer {
		width: 100%;
		z-index: 1;
	}
	
	.calDay {
		display: inline-block;
		font-size: 16px;
		font-weight: 700;
		color: #333;
	}
	
	.calDayName {
		font-size: 11px;
		color: #888;
		position: relative;
	}
	
	ul {
		display: block;
		list-style-type: disc;
		padding-inline-start: 0px;
	}
	
	.calRoomLayer {
		position: relative;
		width: 100%;
		z-index: 1;
	}
	
	
	.saleLayer {
		padding: 3px 3px;
		width: 100%;
		font-size: 12px;
		letter-spacing: 0px;
		position: relative;
		top: 1px;
		font-weight: 700;
		display: inline-block;
		margin-top: 4px;
		text-align: left;
		color: #ff4141;
	}
	
	.roomNameLayer {
		position: relative;
		margin-top: 8px;
		list-style: none;
		height: 18px;
		overflow: hidden;
		cursor: pointer;
	}
	
	.iconLayer {
		float: left;
	}
	
	.SuccIcon {
		padding: 2px 3px;
		height: 14px;
		font-size: 11px;
		background-color: #ff6559;
		color: #fff;
		display: inline-block;
		letter-spacing: 0px;
		text-align: center;
		font-weight: 400;
	}
	
	.PossIcon {
		padding: 2px 3px;
		height: 14px;
		font-size: 11px;
		background-color: #8fc31f;
		color: #fff;
		display: inline-block;
		letter-spacing: 0px;
		text-align: center;
		font-weight: 400;
	}
	
	.roomName.block {
		color: #ccc;
		cursor: default;
	}
	
	.roomName {
		font-size: 12px;
		margin-left: 20px;
		height: auto;
		text-align: left;
		letter-spacing: -0.5px;
	}
	
	.bottom_info {
		text-align: center;
		color: rgb(170, 170, 170);
		margin: 0px auto;
		padding: 30px 0px 60px;
		font-size: 12px;
	}
	
	.roomPriceLayer {
		font-weight: 700;
		text-align: left;
		margin-left: 20px;
		display: none;
		height: auto;
		overflow: visible;
		list-style: none;
	}
	
	.roomPriceLayer.block {
		color: #333;
	}
	
	.roomBasicPrice {
		color: #c2c2c2;
		display: inline-block;
		text-decoration: line-through;
		margin-right: 4px;
		font-weight: 400;
	}
	
	.roomResultPrice {
		display: inline-block;
	}
	
	.pre_month {
		position: relative;
		cursor: pointer;
		width: 27px;
		height: 27px;
		display: inline-block;
		background-image: url("./resources/image/cursor.png");
		background-position: -27px 0px;
	}
	
	.pre_month:hover {
		background-position: -54px 0px;
	}
	
	.pre_month:active {
		background-position: -81px 0px;
	}
	
	.next_month {
		position: relative;
		cursor: pointer;
		width: 27px;
		height: 27px;
		display: inline-block;
		background-image: url("./resources/image/cursor.png");
		background-position: -27px -27px;
	}
	
	.next_month:hover {
		background-position: -54px -27px;
	}
	
	.next_month:active {
		background-position: -81px -27px;
	}
	
	

</style>
</head>
<body>

 <section>
 
  <jsp:include page="../inc/oh_camping_top3.jsp" />

	

	<div class="res_header">
	
	<div class="res_headerLayer">
		
		<div class="res_header_right">
			
			<div class="headerLink on" onclick="location.href='calendar_iframe7.do'">예약달력</div>
			<label class="linebar">|</label>
			
			<div class="headerLink" onclick="location.href='<%=request.getContextPath()%>/reserve_reserve.do'">예약하기</div>
			<label class="linebar">|</label>
			
			<div class="headerLink" onclick="location.href='reserveinfo.do'">예약확인</div>
			<label class="linebar">|</label>
			
			<div class="headerLink" onclick="location.href='payinfo.do'">요금안내</div>
			<label class="linebar">|</label>
			
			
		</div>
		
		<div class="header_title"  onclick="location.href='camp_main.do'">가평 oh-camping 펜션&글램핑</div>
		
		
	</div>
	
	</div>
	
	
	
	<div class="wrapper">
	
	<div class="wrapper2">
	
	<div class="cal_content">
	
	<div class="cal_header">
	
	<c:set var="roomList" value="${List }" />
	
		<div class="revstate_info">
			<div class="rev_poss">가</div>
			예약가능
			<div class="rev_wait">대</div>
			입금대기
			<div class="rev_succ">완</div>
			예약완료
			<div class="rev_sale">대</div>
			판매대기
		</div>
	
		<div class="cal_month">
			<div class="pre_month" onclick="location.href='calendar_iframe7.do'"></div>
			<label class="month_info">2022년 8월</label>
			<div class="next_month"></div>
		</div>
		
		
		
		<div class="cal_top_right">
			<div class="todayButton" onclick="location.href='calendar_iframe7.do'">오늘</div>
			<div class="priceview" id="pricebutton" onclick="showpayinfo()">요금보기</div>
		</div>
	
	</div> <!-- cal_header end -->
	
	<div class="cal_calendar">
		<table cellpadding="0" cellspacing="0" class="cal_table">
			<tr>
				<th class="sunday">일요일</th>
				<th>월요일</th>
				<th>화요일</th>
				<th>수요일</th>
				<th>목요일</th>
				<th>금요일</th>
				<th class="satday last_child">토요일</th>
			</tr>
			
			
			<tr>
				<td class="blockday"></td>
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">1</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 01 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">2</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 02 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">3</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 03 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">4</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 04 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">5</div>
						<div class="calDayName">성수기 금</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 05 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after last_child">
					<div class="calDayLayer">
						<div class="calDay">6</div>
						<div class="calDayName">성수기 주말</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 06 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
			</tr>
			
			<tr>
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">7</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 07 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">8</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 08 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">9</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 09 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">10</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 10 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">11</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 11 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">12</div>
						<div class="calDayName">성수기 금</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 12 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after last_child">
					<div class="calDayLayer">
						<div class="calDay">13</div>
						<div class="calDayName">성수기 주말</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 13 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
			</tr>
			
			<tr>
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">14</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 14 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">15</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 15 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">16</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 16 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">17</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 17 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">18</div>
						<div class="calDayName">성수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 18 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">19</div>
						<div class="calDayName">성수기 금</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 19 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after last_child">
					<div class="calDayLayer">
						<div class="calDay">20</div>
						<div class="calDayName">성수기 주말</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 20 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
			</tr>
			
			<tr>
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">21</div>
						<div class="calDayName">비수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">30% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 21 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">22</div>
						<div class="calDayName">비수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">30% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 22 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">23</div>
						<div class="calDayName">비수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">30% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 23 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">24</div>
						<div class="calDayName">비수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">30% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 24 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">25</div>
						<div class="calDayName">비수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">30% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 25 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">26</div>
						<div class="calDayName">비수기 금</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 26 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after last_child">
					<div class="calDayLayer">
						<div class="calDay">27</div>
						<div class="calDayName">비수기 주말</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 27 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
			</tr>
			
			<tr>
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">28</div>
						<div class="calDayName">비수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">30% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 28 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">29</div>
						<div class="calDayName">비수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">30% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 29 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">30</div>
						<div class="calDayName">비수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">30% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 30 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">31</div>
						<div class="calDayName">비수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">30% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 08 && room.room_resdate.substring(8, 10) == 31 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">9/1</div>
						<div class="calDayName">비수기 주중</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">30% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 09 && room.room_resdate.substring(8, 10) == 01 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">279,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">209,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after">
					<div class="calDayLayer">
						<div class="calDay">9/2</div>
						<div class="calDayName">비수기 금</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 09 && room.room_resdate.substring(8, 10) == 02 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
				
				<td class="after last_child">
					<div class="calDayLayer">
						<div class="calDay">9/3</div>
						<div class="calDayName">비수기 주말</div>
					</div>
					
					<ul>
						
							<span class="saleLayer">10% 할인</span>
						
						<c:if test="${!empty roomList}">
						<c:forEach items="${roomList }" var="room">
							<c:if test="${room.room_resdate.substring(5, 7) == 09 && room.room_resdate.substring(8, 10) == 03 }">
							<c:if test="${room.room_possible == 1 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="SuccIcon">완</div>
								</div>
								<div class="roomName block" id="${room.room_no }">${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							
							</c:if>
							
							<c:if test="${room.room_possible == 0 }">
							<li class="roomNameLayer" title="${room.room_name }">
								<div class="iconLayer">
									<div class="PossIcon">가</div>
								</div>
								<div class="roomName" id="${room.room_no }" onclick="location.href='reserve_confirm2.do?roomNo=${room.room_no }&roomDay=${room.room_resdate }'"
								>${room.room_name }</div>
							</li>
							
							<c:if test="${room.room_people == 4 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">400,000</div>
							<div class="roomResultPrice">359,000</div>
							</li>
							</c:if>
							<c:if test="${room.room_people == 2 }">
							<li class="roomPriceLayer block">
							<div class="roomBasicPrice">300,000</div>
							<div class="roomResultPrice">269,000</div>
							</li>
							</c:if>
							
							</c:if>
							</c:if>
						</c:forEach>
						</c:if>
						</div>
					</ul>
				</td>
			</tr>
			
		</table>
	</div>
	
	<div class="bottom_info"> 야놀자펜션은 통신판매중개자로서 예약시스템만 제공하며, 예약 관련 서비스는 숙박업체의 책임하에 운영되고 있습니다. </div>
	
	</div> <!-- cal_content end -->
	
	</div>	<!-- wrapper2 end -->
	
	</div>	<!-- wrapper end -->
	
		<jsp:include page="../inc/oh_camping_bottom.jsp" />
	
	</section>

</body>
</html>