<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	
	.res_header {
		width: 100%;
		text-align: center;
		/* position: fixed;
		top: 0px; */
		
		margin-top:50px;
		
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
		padding: 57px 0px 0px;
	}

	.button_group {
		display: flex;
		flex-direction: row;
	}
	
	.button_fisrt {
		width: 33.3%;
		height: 20px;
		border-top: 1px solid black;
		border-left: 1px solid black;
		border-bottom: 1px solid black;
		text-align: center;
		font-size: 16px;
		padding: 18px 0px;
	}
	
	.button_fisrt_on {
		width: 33.3%;
		height: 20px;
		border-top: 1px solid black;
		border-left: 1px solid black;
		border-bottom: 1px solid black;
		text-align: center;
		font-size: 16px;
		padding: 18px 0px;
		font-weight: 700;
		background-color: #fafafa;
	}
	
	.button_second {
		width: 33.3%;
		height: 20px;
		border: 1px solid black;
		text-align: center;
		font-size: 16px;
		padding: 18px 0px;
	}
	
	.button_second_on {
		width: 33.3%;
		height: 20px;
		border: 1px solid black;
		text-align: center;
		font-size: 16px;
		padding: 18px 0px;
		font-weight: 700;
		background-color: #fafafa;
	}
	
	.button_third {
		width: 33.3%;
		height: 20px;
		border-top: 1px solid black;
		border-right: 1px solid black;
		border-bottom: 1px solid black;
		text-align: center;
		font-size: 16px;
		padding: 18px 0px;
	}
	
	.button_third_on {
		width: 33.3%;
		height: 20px;
		border-top: 1px solid black;
		border-right: 1px solid black;
		border-bottom: 1px solid black;
		text-align: center;
		font-size: 16px;
		padding: 18px 0px;
		font-weight: 700;
		background-color: #fafafa;
	}
	
	.payinfo_title {
		margin-top: 40px;
		font-size: 16px;
		font-weight: 700;
		margin-bottom: 40px;
	}
	
	.payinfo_header {
		width: 75px;
		height: 30px;
		text-align: center;
		font-size: 16px;
		font-weight: 600;
		border-bottom: 3px solid black;
	}
	
	.header_bar {
		margin-top: 2px;
		height: 1px;
		background-color: #aaa;
	}
	
	.notice_message {
		margin-top: 15px;
		font-size: 11px;
		color: #999;
		text-align: right;
		margin-bottom: 15px;
	}
	
	.price_table {
		width: 100%;
		padding: 0px;
		border: 0px;
		marging: 0px auto;
	}
	
	.price_table tbody tr th {
		text-align: center;
		color: #666;
		font-weight: 700;
		border-bottom: 1px solid #e6e5e5;
		padding: 10px 0px;
		background-color: #f4f4f4;
		vertical-align: middle;
	}
	
	.price_table tbody tr td {
		text-align: center;
		padding: 10px 0px;
		border-bottom: 1px solid #e6e5e5;
		font-weight: 400;
		vertical-align: middle;
		height: 52px;
	}
	
	.info_title {
		font-size: 11pt;
		color: #333;
		font-weight: 700;
		border-bottom: 1px solid #666;
		padding: 14px 0px;
		margin: 0px 10px;
		text-align: left;
		margin-top: 40px;
	}
	
	.info_content {
		font-size: 10pt;
		line-height: 150%;
		padding: 10px;
		margin-top: 20px;
	}
	

	.basic_price {
		color: #aaa;
		text-decoration: line-through;
	}
	
	.room_price_blue {
		color: blue;
	}
	
	.room_price_red {
		color: red;
	}
	
	.info_content {
	    font-size: 10pt;
	    line-height: 150%;
	    position: relative;
	    padding: 10px;
	    margin-top: 20px;
	}
	
	#resinfo_page {
		margin-top: 50px;
	}
	
	.res_title {
		font-size: 16px;
		color: #333;
		font-weight: 700;
		line-height: 1.5;
		text-align: left;
		margin-top: 40px;
		vertical-align: middle;
		padding: 0px;
		padding-bottom: 24px;
	}
	
	.res_sub_title {
		padding: 0px;
		margin: 0px auto;
		font-size: 14px;
		line-height: 1.5;
		text-align: left;
		color: #333;
		font-weight: 700;
		padding-bottom: 16px;
	}
	
	.res_content {
		padding: 0px;
		margin: 0px auto;
		font-size: 12px;
		color: #666;
		line-height: 2;
		text-align: left;
		padding-bottom: 56px;
	}
	
	b {
		font-weight: bold;
	}
	
	.res_phone {
		font-size: 12pt;
		margin-bottom: 50px;
	}
	
	.cancelinfo_table {
		padding: 0px;
		margin: 24px 0px 40px;
		border: 1px solid #d9d9d9;
		width: 600px;
		position: relative;
	}
	
	.cancelinfo_table tbody tr th {
		width: 260px;
		background-color: #fafafa;
		padding: 10px 20px;
		text-align: center;
		font-size: 12px;
		line-height: 2;
		color: #666;
		border: 0px;
		border-bottom: 1px solid #d9d9d9;
	}
	
	.cancelinfo_table tbody tr td {
		width: 260px;
		background-color: #fff;
		padding: 10px 20px;
		text-align: center;
		font-size: 12px;
		line-height: 2;
		color: #666;
		border: 0px;
	}
	
	p {
    margin: 0;
    padding: 0;
    line-height: 1.5;
    font-size: 10pt;
    letter-spacing: -1px;
    
    
	}
	
	.cancelinfo_table {
	position: relative;
    padding: 0px;
    margin: 24px 0px 40px;
    border: 1px solid #D9D9D9;
    width: 600px;
	
	}
	
	.cancel_table_red {
		color: red;
	}
	
	a {
		text-decoration: none;
		color: black;
	}
	

	

</style>
</head>
<body>

<section>

 <jsp:include page="../inc/oh_camping_top3.jsp" />

	
	<div class="res_header">
	
	<div class="res_headerLayer">
		
		<div class="res_header_right">
			
			<div class="headerLink" onclick="location.href='calendar_iframe7.do'">예약달력</div>
			<label class="linebar">|</label>
			
			<div class="headerLink" onclick="location.href='<%=request.getContextPath()%>/reserve_reserve.do'">예약하기</div>
			<label class="linebar">|</label>
			
			<div class="headerLink" onclick="location.href='reserveinfo.do'">예약확인</div>
			<label class="linebar">|</label>
			
			<div class="headerLink on" onclick="location.href='payinfo.do'">요금안내</div>
			<label class="linebar">|</label>
			
			
		</div>
		
		<div class="header_title" onclick="location.href='camp_main.do'">가평 oh-camping 펜션&글램핑</div>
		
		
	</div>
	
	</div>
	
	

	<div class="wrapper">
	
	<div class="wrapper2">
	<div id="payinfo_page">
	<div class="button_group">
		<div class="button_fisrt_on">요금안내</div>
		<div class="button_second"><a href="#resinfo_page">예약안내</a></div>
		<div class="button_third"><a href="#cancel_page">환불규정</a></div>
	</div>
	
	<div class="payinfo_title">[ 요 금 안 내 ]</div>
	
	<div id="payinfo_container">
		<div class="payinfo_header">비수기</div>
		<div class="header_bar"></div>
		
		<div class="notice_message">* 아래 요금은 실제 적용일에 따라 다르게 적용될 수 있습니다.</div>
	
		<table cellpadding="0" cellspacing="0" class="price_table">
			<tr class="price_title" style="display: table-row;" >			
				
				<th class="room_name" 
				style="font-size: 10pt; display: table-cell;" >객실명</th>
						
				<th style="font-size: 10pt;" >형태</th>
			
				<th class="room_size" 
				style="font-size: 10pt; display: table-cell;" >평수</th>
				
				<th class="room_people" 
				style="font-size: 10pt; display: table-cell;" >기준/최대</th>
				
				<th class="room_price" 
				style="font-size: 10pt; width: 15%;" >주중
				<div class="day_guide" style="font-size: 9pt;">(일~목)</div>
				</th>
				
				<th class="room_price" 
				style="font-size: 10pt; width: 15%;" >금요일</th>
				
				<th class="room_price" 
				style="font-size: 10pt; width: 15%;" >주말
				<div class="day_guide" style="font-size: 9pt;">(토,공휴일 전일)</div>
				</th>
			</tr>
			
			<tr class="price_content" style="font-size: 9pt; ">
				<td class="room_name" 
				style="font-size: 10pt; display: table-cell;" >대형 1호</td>
						
				<td style="font-size: 10pt;" ></td>
			
				<td class="room_size" 
				style="font-size: 10pt; display: table-cell;" >54m<sup>2</sup>/16평</td>
				
				<td class="room_people" 
				style="font-size: 10pt; display: table-cell;" >4명/6명</td>
				
				<td class="room_price" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				279,000원
				</td>
				
				<td class="room_price_blue" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				359,000원
				</td>
				
				<td class="room_price_red" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				359,000원
				</td>
			</tr>
			
			<tr class="price_content" style="font-size: 9pt; ">
				<td class="room_name" 
				style="font-size: 10pt; display: table-cell;" >대형 2호</td>
						
				<td style="font-size: 10pt;" ></td>
			
				<td class="room_size" 
				style="font-size: 10pt; display: table-cell;" >54m<sup>2</sup>/16평</td>
				
				<td class="room_people" 
				style="font-size: 10pt; display: table-cell;" >4명/6명</td>
				
				<td class="room_price" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				279,000원
				</td>
				
				<td class="room_price_blue" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				359,000원
				</td>
				
				<td class="room_price_red" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				359,000원
				</td>
			</tr>
			
			<tr class="price_content" style="font-size: 9pt; ">
				<td class="room_name" 
				style="font-size: 10pt; display: table-cell;" >대형 3호</td>
						
				<td style="font-size: 10pt;" ></td>
			
				<td class="room_size" 
				style="font-size: 10pt; display: table-cell;" >54m<sup>2</sup>/16평</td>
				
				<td class="room_people" 
				style="font-size: 10pt; display: table-cell;" >4명/6명</td>
				
				<td class="room_price" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				279,000원
				</td>
				
				<td class="room_price_blue" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				359,000원
				</td>
				
				<td class="room_price_red" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				359,000원
				</td>
			</tr>
			
			<tr class="price_content" style="font-size: 9pt; ">
				<td class="room_name" 
				style="font-size: 10pt; display: table-cell;" >대형 4호</td>
						
				<td style="font-size: 10pt;" ></td>
			
				<td class="room_size" 
				style="font-size: 10pt; display: table-cell;" >54m<sup>2</sup>/16평</td>
				
				<td class="room_people" 
				style="font-size: 10pt; display: table-cell;" >4명/6명</td>
				
				<td class="room_price" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				279,000원
				</td>
				
				<td class="room_price_blue" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				359,000원
				</td>
				
				<td class="room_price_red" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">400,000원</div>
				359,000원
				</td>
			</tr>
			
			<tr class="price_content" style="font-size: 9pt; ">
				<td class="room_name" 
				style="font-size: 10pt; display: table-cell;" >계곡 1호</td>
						
				<td style="font-size: 10pt;" ></td>
			
				<td class="room_size" 
				style="font-size: 10pt; display: table-cell;" >43m<sup>2</sup>/13평</td>
				
				<td class="room_people" 
				style="font-size: 10pt; display: table-cell;" >2명/4명</td>
				
				<td class="room_price" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				209,000원
				</td>
				
				<td class="room_price_blue" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				269,000원
				</td>
				
				<td class="room_price_red" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				269,000원
				</td>
			</tr>
			
			<tr class="price_content" style="font-size: 9pt; ">
				<td class="room_name" 
				style="font-size: 10pt; display: table-cell;" >계곡 2호</td>
						
				<td style="font-size: 10pt;" ></td>
			
				<td class="room_size" 
				style="font-size: 10pt; display: table-cell;" >43m<sup>2</sup>/13평</td>
				
				<td class="room_people" 
				style="font-size: 10pt; display: table-cell;" >2명/4명</td>
				
				<td class="room_price" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				209,000원
				</td>
				
				<td class="room_price_blue" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				269,000원
				</td>
				
				<td class="room_price_red" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				269,000원
				</td>
			</tr>
			
			<tr class="price_content" style="font-size: 9pt; ">
				<td class="room_name" 
				style="font-size: 10pt; display: table-cell;" >계곡 3호</td>
						
				<td style="font-size: 10pt;" ></td>
			
				<td class="room_size" 
				style="font-size: 10pt; display: table-cell;" >43m<sup>2</sup>/13평</td>
				
				<td class="room_people" 
				style="font-size: 10pt; display: table-cell;" >2명/4명</td>
				
				<td class="room_price" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				209,000원
				</td>
				
				<td class="room_price_blue" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				269,000원
				</td>
				
				<td class="room_price_red" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				269,000원
				</td>
			</tr>
			
			<tr class="price_content" style="font-size: 9pt; ">
				<td class="room_name" 
				style="font-size: 10pt; display: table-cell;" >계곡 4호</td>
						
				<td style="font-size: 10pt;" ></td>
			
				<td class="room_size" 
				style="font-size: 10pt; display: table-cell;" >43m<sup>2</sup>/13평</td>
				
				<td class="room_people" 
				style="font-size: 10pt; display: table-cell;" >2명/4명</td>
				
				<td class="room_price" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				209,000원
				</td>
				
				<td class="room_price_blue" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				269,000원
				</td>
				
				<td class="room_price_red" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				269,000원
				</td>
			</tr>
			
			<tr class="price_content" style="font-size: 9pt; ">
				<td class="room_name" 
				style="font-size: 10pt; display: table-cell;" >계곡 5호</td>
						
				<td style="font-size: 10pt;" ></td>
			
				<td class="room_size" 
				style="font-size: 10pt; display: table-cell;" >43m<sup>2</sup>/13평</td>
				
				<td class="room_people" 
				style="font-size: 10pt; display: table-cell;" >2명/4명</td>
				
				<td class="room_price" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				209,000원
				</td>
				
				<td class="room_price_blue" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				269,000원
				</td>
				
				<td class="room_price_red" 
				style="font-size: 10pt; width: 15%;" >
				<div class="basic_price">300,000원</div>
				269,000원
				</td>
			</tr>
		</table>
	</div>
	
	<div class="info_title">안내사항</div>
	
	<div class="info_content">
		<p>남성4인 이상 예약금지(환불불가) 저희는 가족, 커플 위주로 글램핑을 영업하고 있습니다.</p>
		<p>매너타임을 지키지 않으시는 분들이 많아서 남성 4인 이상을 받지 않고 있으니 이점 유의하여 예약 부탁드립니다.</p>
		<p><계좌번호></p>
		<p>농협 : 351-1089-4614-03 핀란드캠핑성 </p>
		<p><기본이용안내></p>
		<p>추가인원 : 성인(대학생) 이상 20,000원, 초등학생 이상 15,000원, 미취학 아동(만 6세이하) 인원수에 포함되나 추가 요금 없음.</p>
		<p>입실시간 : 15:00 얼리체크인 불가</p>
		<p>퇴실시간 : 11:00 레이트체크아웃 불가 저녁 8시 이후 체크인 불가</p>
		<p>당일권 : 15:00 입실 22:00시 퇴실</p>
		<p>추가인원 인당 10,000원, 미취학 면제 차량은 계곡 1~11은 1동당 1대 기준, 대형 1~4는 1동당 2대 허용.</p>
		<p>*퇴실시 기본적인 방정리를 해주시고, 본인이 드신 음식물의 설거지는 캠핑의 기본입니다.</p>
		<p>분리한 쓰레기등은 매점앞 분리수거함 앞에 놓고 가시면 됩니다.</p>
		<p><이용 주의사항></p>
		<p>- 남성4인이상 예약금지(환불불가)</p>
		<p>- 애견동반불가</p>
		<p>- 밤 11시부터 '매너타임' 시작으로 음주를 동반한 고성방가 시 1차 주의, 2차 경고 3차 강제퇴실 처리됩니다.</p>
		<p>(사전 부주의로 인한 퇴실이기에 환불은 불가합니다.)</p>
		<p>- 매너타임이 지켜지지 않고 다른숙박분들의 피해가 많아 부득이 성인 남성 4인이상 이용은 전화로 요청하셔도 예약이 불가하며, 당일 현장방문시에도 환불처리는 불가합니다.</p>
		<p>- 각 호수마다 개별 화장실 구비되어 있습니다.</p>
		<p>- 개인 세면 도구와 필요하신 수건 여유분 별도 지참 부탁드리겠습니다.</p>
		<p>- 예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다.</p>
		<p>- 기준인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.</p>
		<p>- 최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다.</p>
		<p>- 반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다.</p>
		<p>- 숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다.</p>
		<p>- 다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다.</p>
		<p>- 객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다.</p>
		<p>- 객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯,장작, 전기/전열기구 등)은 반입이 금지되어 있습니다.</p>
		<p>- 객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다.</p>
		<p>- 다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다.</p>
		<p>- 실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불받을 수 있습니다. (야놀자펜션 고객센터 측에서 확인 즉시 안내드립니다.)</p>
		<p>- 펜션별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다.</p>
		<p><기타공지사항></p>
		<p>*밤 11시부터 매너 타임입니다.</p>
		<p>모임으로 밤 늦게까지 떠들고 싶으신 분, 원없이 술을 드시고 싶으신 분, 다른 사람은 자든 말든 우리만 즐겁게 놀면 된다는 분들은 저희 캠핑장 예약을 하지 말아 주세요.</p>
		<p>다른 분들에게 피해가 됩니다. 이제 캠핑도 매너의 시대입니다.</p>
		<p>이점 꼭 양해 부탁드리며, 3번의 경고에도 계속해서 큰소리로 떠드시는 분은 강제 퇴실시키겠습니다.</p>
	</div>
	</div>
	
	<div id="resinfo_page">
	<div class="button_group">
		<div class="button_fisrt"><a href="#payinfo_page">요금안내</a></div>
		<div class="button_second_on">예약안내</div>
		<div class="button_third"><a href="#cancel_page">환불규정</a></div>
	</div>
	
	<div class="res_title">[예 약 안 내]</div>
	
	<div class="res_sub_title">입실.퇴실 안내</div>
	
	<div class="res_content">
	<b>·입실 15:00 이후, 퇴실 11:00 이전</b>
	<br>
	· 1.주의사항 확인 후 예약 부탁드립니다. 이점 유의해주시고 자신 없으시면 예약 자제 부탁드리겠습니다. <br>
	· 2.인원추가요금 : 성인(대학생 이상) 2만원 아동(초등이상) 15,000원 연 7세 이하(미취학) 무료 입니다. <br>
	· 3.블루투스 마이크 사용금지 낮에도 소리가 커서 반입을 금지합니다. 스피커는 밤 10시 까지만 사용해주세요. <br>
	· 4.애견 동반 출입 불가 (동반 시 입실이 불가합니다.) <br>
	· 21시 이후 입실 불가 그 전에 입실 부탁드리며 사정이 생길 경우 연락바랍니다.
	</div>
	
	<div class="res_sub_title">확인사항 및 기타</div>
	
	<div class="res_content">
	· 남성4인 이상 예약금지 환불불가 <br>
	· 밤 11시부터는 매너타임입니다. <br>
	· 스피커 사용 종료 부탁드리며 음주를 동반한 고성방가 1차 주의 2차 경고 3차 강제 퇴실입니다<br>
	· 이점 못지키실것 같으면 예약 자제 부탁드립니다.<br>
	· 3번의 경고에도 계속해서 큰소리로 떠드시는 분은 강제 퇴실될수 있음을 고지합니다.<br>
	· 반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며 해당사유로 환불 받을 수 없습니다.<br>
	· 예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락해주시기 바랍니다.<br>
	· 기준인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다.<br>
	· 최대인원 초과 시 입실이 불가능하며 해당사유로 환불 받을 수 없습니다.<br>
	· 숙박업소는 법적으로 청소년 혼숙이 금지되어있습니다. 또한, 미성년자의 예약 및 이용은숙소규정에 따라 결정되며 해당 사유로 환불받을 수 없습니다.<br>
	· 다음 이용 고객을 위해 입실, 퇴실 시간을 준수해주세요<br>
	· 12시 이후 퇴실하시는 분들은 추가 요금 3만 원 부과됩니다.객실 및 주변 시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며 손해배상의 책임을 질 수 있습니다.<br>
	· 객실의 안전과 화재 예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해오는취사도구(숯, 그릴/전열 기구 난방기구) 등은 반입이 금지되어 있습니다.<br>
	· 다른 이용객에게 피해를 줄 수 있는 무분별한 오락 음주 고성방가는 삼가해주세요.밤 11시부터 매너타임 시작 3회 경고 후에도 문제시 강제 퇴실<br>
	· 객실 내에서의 흡연은 금지되어 있습니다. 지정된 장소를 이용해주세요.<br>
	· 실시간 예약 시 중복예약이 발생할 수 있으며 해당 사유의 경우 고객센터를 통해 전액 환불받을 수 있습니다.(야놀자 펜션 고객센터 측에서 확인 즉시 안내해 드립니다).<br>
	· 펜션별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우 자동 예약 취소 처리되며 정상금액으로 재 예약할 수 있습니다.
	</div>
	
	<div class="res_sub_title">문의전화</div>
	
	<div class="res_phone">
	<b>· 010-9639-7621</b>
	</div>
	</div>
	
	<div id="cancel_page">
	<div class="button_group">
		<div class="button_fisrt"><a href="#payinfo_page">요금안내</a></div>
		<div class="button_second"><a href="#resinfo_page">예약안내</a></div>
		<div class="button_third_on">환불규정</div>
	</div>
	
	<div class="res_title">[환 불 규 정]</div>
	
	<div class="res_content">
	* 펜션의 취소수수료는 이용 일자별로 적용되어 합산됩니다.<br>
	(단, 옵션 상품의 경우 이용 첫째 날 기준으로 적용됩니다.)<br>
	* 이용 당일 예약 후 바로 취소한 경우에도 이용 당일 취소이므로 환불이 불가합니다.
	<div class="cancelinfo_layer">
	<table cellpadding="0" cellspacing="0" class="cancelinfo_table">
		<tr>
			<th>취소일기준</th>
			<th>취소수수료</th>
		</tr>
		
		<tr>
			<td class="cancel_table_red">기본 취소 수수료</td>
			<td>0%</td>
		</tr>
		
		<tr>
			<td>이용 5일 전</td>
			<td>10%</td>
		</tr>
		
		<tr>
			<td>이용 4일 전</td>
			<td>20%</td>
		</tr>
		
		<tr>
			<td>이용 3일 전</td>
			<td>30%</td>
		</tr>
		
		<tr>
			<td>이용 2일 전</td>
			<td>50%</td>
		</tr>
		
		<tr>
			<td>이용 1일 전</td>
			<td>70%</td>
		</tr>
		
		<tr>
			<td>이용일 당일</td>
			<td>100% </td>
		</tr>
	</table>
	</div>
	
	* 환불은 결제한 금액에서 취소수수료를 제외한 금액으로 환불됩니다.<br>
	(취소수수료는 마일리지, 쿠폰, 특가 적용(할인) 전 이용금액 기준으로 책정됩니다.)<br>
	* 예약 후 펜션이나 객실 변경은 해당 예약 취소 후 다시 예약하셔야 합니다.<br>
	* 취소수수료는 결제금액이 아닌 예약금액(객실금액+옵션금액) 기준으로 책정됩니다.<br>
	* 보호자 동반(동의) 없는 미성년자는 예약 및 이용이 불가합니다.<br>
	* 최대 인원 초과로 인한 입실 거부 시 환불되지 않으니 유의하시기 바랍니다.<br>
	* 최대 인원이 2명인 커플 객실은 영, 유아 동반 입실이 되지 않습니다.<br>
	* 예약 변경을 위한 취소 시에도 취소수수료가 부과되오니 양지하여 주시기 바랍니다.<br>
	* 실시간예약 특성상 1객실에 중복예약이 발생될 수 있으며, 이 경우 먼저 결제된 예약 건에 우선권이 있습니다.<br>
	* 펜션별 기간이 미 확정되어 요금이 잘못 반영되었거나 요금표가 잘못 등록된 경우 예약이 완료된 경우라도 예약이 취소되며, 정상 금액으로 재 예약할 수 있습니다.<br>
	* 휴대폰번호가 잘못 입력되어 연락이 불가할 경우 발생되는 불이익은 고객 책임이오니 예약 시 입력한 정보를 꼭 확인해주세요.<br>
	* 야놀자펜션은 통신판매중개자로 펜션은 펜션주의 책임하에 운영되고 있습니다.<br>
	* 당사는 펜션예약 대행사로서 예약상의 문제 이외의 펜션 상품 자체의 하자로 인한 문제는 펜션에 귀속됨을 알려드립니다.
	
	
	</div>
	
	</div>
	
	</div>
	
	</div>
	
	<jsp:include page="../inc/oh_camping_bottom.jsp" />
	
	</section>
	
	

	
	


</body>
</html>