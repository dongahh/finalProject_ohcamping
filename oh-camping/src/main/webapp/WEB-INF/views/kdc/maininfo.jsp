<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	.wrap_reservation {
		width: 1200px;
		margin: 0 auto;
	}
	
	.wrap_reser_info {
		width: 1200px;
		margin: 0 auto;
		padding: 60px 0;
		font-weight: bold; 
	}
	
	.price_content {
		width: 100%;
		height: auto;
		padding: 0px;
		margin: 0px auto;
		border: 0px;
		position: relative;
		font-size: 9pt;
	}
	
	.price_layer {
		width: auto;
		height: auto;
		padding: 10px;
		margin: 0px auto;
		border: 0px;
		position: relative;
	}
	
	.price_header {
		position: relative;
		height: 47px;
		border-bottom: 1px solid #e6e5e5;
		margin: 0px auto;
		padding: 0px;
		width: 100%;
	}
	
	.price_headerbar {
		position: relative;
		height: 50px;
		width: 100%;
		padding: 0px;
		margin: 0px auto;
		text-align: left;
	}
	
	.header_title {
		font-weight: 700;
		cursor: pointer;
		display: inline-block;
		position: relative;
	}
	
	.headerbar_line {
		position: absolute;
		width: 90px;
		height: 3px;
		background-color: #333;
		left: 0px;
		bottom: 2px;
	}

	.notice_message {
		text-align: right;
		font-size: 11px;
		color: #999;
	}
	
	.price_table {
		width: 100%;
		position: relative;
		padding: 0px;
		border: 0px;
		margin: 0px auto;
	}
	
	.price_table tbody {
		display: table-row-group;
		vertical-align: middle;
		border-color: inherit;
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
	
	.price_table tbody tr th.room_name {
		width: 15%;
	}
	
	.price_table tbody tr th.room_size {
		width: 10%;
	}
	
	.price_table tbody tr th.room_people {
		width: 12%;
	}
	
	.price_table tbody tr td {
		text-align: center;
		padding: 10px 0px;
		border-bottom: 1px solid #e6e5e5;
		vertical-align: middle;
		height: 42px;
		font-weight: bold;
	}
		
	.basicprice {
		font-size: 9pt;
		color: #aaa;
		text-decoration: line-through;
	}
	
	.room_price_black {
		color: #333;
	}
	
	.room_price_blue {
		color: #0c71c0;
	}
	
	.room_price_red {
		color: #ff4141;
	}
	
	.second_title {
		font-size: 11pt;
		color: #333;
		font-weight: 700;
		padding: 14px 0px;
		margin: 0px 10px;
		text-align: left;
		margin-top: 40px;
	}
	
	.map_title {
		margin: 20px;
		color: #cd996f;
		font-size: 50px;
		font-family: Poiret One;
		font-weight: 200;
		letter-spacing: 3px;
		text-align: center;
		margin-top: 50px;
	}
	
	.map_stitle {
		padding-bottom: 40px;
		border-bottom: 1px solid #cd996f;
		text-align: center;
	}
	
	.intro_content {
		font-size: 10pt;
		line-height: 150%;
		position: relative;
		padding: 10px;
		margin-top: 20px;
	}
	
	.wrap_place_map {
		text-align: center;
	}
	
	.wrap_place_map img {
		max-width: 100%;
	}
	
	.wrap_info_txt {
		display: flex;
		justify-content: space-between;
		margin-top: 30px;
	}
	
	.info_img {
		background: url("./resources/image/tour4.jpg")no-repeat 50% 50%;
		background-size: cover;
		width: 30%;
		height: 350px;
	}
	
	.info_txt {
		width: 65%;
	}
	
	.rer_detail {
		margin-left: 5px;
	}
	
	.rer_detail p.rer_tit {
		margin: 10px 0 5px 0;
		padding-left: 0;
		font-size: 15px;
	}
	
	.rer_detail p {
		margin: 0;
		padding-left: 10px;
		font-size: 13px;
		line-height: 1.3em;
	}
	
	.rer_mt {
		margin-top: 10px;
	}
	
	ul {
		margin: 0;
		padding: 0;
		list-style: none;
	}
	
	.rer_ins p {
		font-size: 13px;
		line-height: 1.3em;
	}
	
	.wrap_rer_info ul li {
		position: relative;
		font-size: 13px;
		line-height: 25px;
		padding-left: 1em;
	}
	
	.table_refund {
		margin-top: 30px;
		width: 100%;
		font-size: 11px;
		font-weight: normal;
		border-collapse: collapse;
	}
	
	.table_refund tbody tr th {
		border: 1px solid #cccccc;
		background-color: #f4f4f4;
		padding: 15px 0;
	}
	
	.table_refund tbody tr td {
		padding: 15px 0;
		text-align: center;
		border: 1px solid #cccccc;
	}


</style>
</head>
<body>

	<jsp:include page="../inc/oh_camping_top4.jsp" />

	<section>

	<div class="wrap_reservation">
	
	<div class="wrap_reser_info">
	
		<div class="price_content">
		
		<div class="price_layer">
		
		<div class="price_header">
		
		<div class="price_headerbar">
		
			<div class="header_title" style="font-size: 10pt; padding: 13px 2% 14px;">비수기</div>
			
			<div class="headerbar_line"></div>
		
		</div>
		
		</div>
		
		<div class="notice_message" style="margin-top: 15px;">아래 요금은 실제 적용일에 따라 다르게 적용될 수 있습니다.</div>
		
		<table cellpadding="0" cellspacing="0" class="price_table" style="margin-top: 0px;">
		
			<tr class="pricetable_title" style="display: table-row">
				<th class="room_name" style="font-size: 10pt; display: table-cell;">객실명</th> 
				<th style="font-size: 10pt">형태</th>
				<th class="room_size" style="font-size: 10pt; display: table-cell;">평수</th>	
				<th class="room_people" style="font-size: 10pt; display: table-cell;">기준/최대</th>
				<th class="room_price" style="font-size: 10pt;" width="20%">
					주중<div class="day_guide" style="font-size: 9pt">(일~목)</div>
				</th>
				<th class="room_price" style="font-size: 10pt; width: 20%;">금요일</th>
				<th class="room_price" style="font-size: 10pt; width: 20%;" >
					주말<div class="day_guide" style="font-size: 9pt">(토,공휴일 전일)</div>
				</th>					
			</tr>
			
			<tr class="pricetable_content" style="table-row;">
				<td class="room_name" style="font-size: 10pt; display: table-cell;">대형1호</td>
				<td style="font-size: 10pt;"></td>
				<td class="room_size" style="font-size: 10pt; display: table-cell;">53m<sup>2</sup> / 16평</td>
				<td class="room_people" style="font-size: 10pt; display: table-cell;">4명/6명</td>
				<td class="room_price_black" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 279,000원
				</td>
				<td class="room_price_blue" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 359,000원
				</td>
				<td class="room_price_red" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 359,000원
				</td>
			</tr>
			
			<tr class="pricetable_content" style="table-row;">
				<td class="room_name" style="font-size: 10pt; display: table-cell;">대형2호</td>
				<td style="font-size: 10pt;"></td>
				<td class="room_size" style="font-size: 10pt; display: table-cell;">53m<sup>2</sup> / 16평</td>
				<td class="room_people" style="font-size: 10pt; display: table-cell;">4명/6명</td>
				<td class="room_price_black" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 279,000원
				</td>
				<td class="room_price_blue" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 359,000원
				</td>
				<td class="room_price_red" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 359,000원
				</td>
			</tr>
			
			<tr class="pricetable_content" style="table-row;">
				<td class="room_name" style="font-size: 10pt; display: table-cell;">대형3호</td>
				<td style="font-size: 10pt;"></td>
				<td class="room_size" style="font-size: 10pt; display: table-cell;">53m<sup>2</sup> / 16평</td>
				<td class="room_people" style="font-size: 10pt; display: table-cell;">4명/6명</td>
				<td class="room_price_black" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 279,000원
				</td>
				<td class="room_price_blue" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 359,000원
				</td>
				<td class="room_price_red" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 359,000원
				</td>
			</tr>
			
			<tr class="pricetable_content" style="table-row;">
				<td class="room_name" style="font-size: 10pt; display: table-cell;">대형4호</td>
				<td style="font-size: 10pt;"></td>
				<td class="room_size" style="font-size: 10pt; display: table-cell;">53m<sup>2</sup> / 16평</td>
				<td class="room_people" style="font-size: 10pt; display: table-cell;">4명/6명</td>
				<td class="room_price_black" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 279,000원
				</td>
				<td class="room_price_blue" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 359,000원
				</td>
				<td class="room_price_red" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">400,000원</div> 359,000원
				</td>
			</tr>
			
			<tr class="pricetable_content" style="table-row;">
				<td class="room_name" style="font-size: 10pt; display: table-cell;">계곡1호</td>
				<td style="font-size: 10pt;"></td>
				<td class="room_size" style="font-size: 10pt; display: table-cell;">43m<sup>2</sup> / 13평</td>
				<td class="room_people" style="font-size: 10pt; display: table-cell;">2명/4명</td>
				<td class="room_price_black" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 209,000원
				</td>
				<td class="room_price_blue" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 269,000원
				</td>
				<td class="room_price_red" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 269,000원
				</td>
			</tr>
			
			<tr class="pricetable_content" style="table-row;">
				<td class="room_name" style="font-size: 10pt; display: table-cell;">계곡2호</td>
				<td style="font-size: 10pt;"></td>
				<td class="room_size" style="font-size: 10pt; display: table-cell;">43m<sup>2</sup> / 13평</td>
				<td class="room_people" style="font-size: 10pt; display: table-cell;">2명/4명</td>
				<td class="room_price_black" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 209,000원
				</td>
				<td class="room_price_blue" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 269,000원
				</td>
				<td class="room_price_red" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 269,000원
				</td>
			</tr>
			
			<tr class="pricetable_content" style="table-row;">
				<td class="room_name" style="font-size: 10pt; display: table-cell;">계곡3호</td>
				<td style="font-size: 10pt;"></td>
				<td class="room_size" style="font-size: 10pt; display: table-cell;">43m<sup>2</sup> / 13평</td>
				<td class="room_people" style="font-size: 10pt; display: table-cell;">2명/4명</td>
				<td class="room_price_black" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 209,000원
				</td>
				<td class="room_price_blue" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 269,000원
				</td>
				<td class="room_price_red" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 269,000원
				</td>
			</tr>
			
			<tr class="pricetable_content" style="table-row;">
				<td class="room_name" style="font-size: 10pt; display: table-cell;">계곡4호</td>
				<td style="font-size: 10pt;"></td>
				<td class="room_size" style="font-size: 10pt; display: table-cell;">43m<sup>2</sup> / 13평</td>
				<td class="room_people" style="font-size: 10pt; display: table-cell;">2명/4명</td>
				<td class="room_price_black" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 209,000원
				</td>
				<td class="room_price_blue" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 269,000원
				</td>
				<td class="room_price_red" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 269,000원
				</td>
			</tr>
			
			<tr class="pricetable_content" style="table-row;">
				<td class="room_name" style="font-size: 10pt; display: table-cell;">계곡5호</td>
				<td style="font-size: 10pt;"></td>
				<td class="room_size" style="font-size: 10pt; display: table-cell;">43m<sup>2</sup> / 13평</td>
				<td class="room_people" style="font-size: 10pt; display: table-cell;">2명/4명</td>
				<td class="room_price_black" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 209,000원
				</td>
				<td class="room_price_blue" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 269,000원
				</td>
				<td class="room_price_red" style="font-size: 10pt; width: 20%;">
					<div class="basicprice">300,000원</div> 269,000원
				</td>
			</tr>

		</table>
		</div>
		
		<div class="second_title">
			<h1 class="map_title">Season</h1>
			<h3 class="map_stitle">성수기</h3>
		</div>
		
		<div class="intro_content">
			<p>남성4인 이상 예약금지 (환불불가) 저희는 가족,커플 위주로 글램핑을 영업하고있습니다.</p>
			<p>매너타임을 지키지 않으시는 분들이 많아서 남성4인 이상을 받지 않고있으니 이점 유의하여 예약 부탁드립니다. </p>
			<p>&lt;계좌번호&gt;</p>
			<p>농협 : 111-2222-3333-44 oh-camping </p>
			<p>&lt;기본이용안내&gt; </p>
			<p>추가인원 : 성인(대학생) 이상 20,000원, 초등학생 이상 15,000원, 미취학 아동(만 6세이하) 인원수에 포함되나 추가 요금 없음. </p>
			<p>입실시간 : 15:00 얼리체크인 불가 </p>
			<p>퇴실시간 : 11:00 레이트체크아웃 불가 저녁 8시 이후 체크인 불가 </p>
			<p>당일권 : 15:00 입실  22:00시 퇴실 </p>
			<p>차량은 계곡 1~11은 1동당 1대 기준, 대형 1~4는 1동당 2대 허용/이후 추가 차량은 1대당 주차비 2만원 발생 </p>
			<p>*퇴실시 기본적인 방정리를 해주시고, 본인이 드신 음식물의 설거지는 캠핑의 기본입니다. </p>
			<p>분리한 쓰레기등은 매점앞 분리수거함 앞에 놓고 가시면 됩니다.</p>
			<p> &lt;이용 주의사항&gt; </p>
			<p>- 남성4인이상 예약금지(환불불가)</p>
			<p>- 애견동반불가 </p>
			<p>- 밤 11시부터 '매너타임' 시작으로 음주를 동반한 고성방가 시 1차 주의, 2차 경고 3차 강제퇴실 처리됩니다.</p>
			<p>(사전 부주의로 인한 퇴실이기에 환불은 불가합니다.) </p>
			<p>- 매너타임이 지켜지지 않고 다른숙박분들의 피해가 많아 부득이 성인 남성 4인이상 이용은 전화로 요청하셔도 예약이 불가하며, 당일 현장방문시에도 환불처리는 불가합니다.</p>
			<p>- 각 호수마다 개별 화장실 구비되어 있습니다. </p>
			<p>- 개인 세면 도구와 필요하신 수건 여유분 별도 지참 부탁드리겠습니다. </p>
			<p>- 예약 인원에서 인원이 추가되는 경우 펜션에 미리 연락을 주시기 바랍니다. </p>
			<p>- 기준인원 초과 시 추가 인원에 대한 비용이 별도로 발생할 수 있습니다. </p>
			<p>- 최대 인원 초과 시 입실이 불가능할 수 있으며, 해당 사유로 환불 받을 수 없습니다. </p>
			<p>- 반려동물 입실 가능 펜션 외에 반려동물 동반 시 입실이 거부될 수 있으며, 해당 사유로 환불 받을 수 없습니다. </p>
			<p>- 숙박 업소는 법적으로 청소년 혼숙이 금지되어 있습니다. 또한 미성년자의 예약 및 이용은 숙소 규정에 따라 결정되며 해당 사유로 환불 받을 수 없습니다. </p>
			<p>- 다음 이용 고객을 위해 입실, 퇴실 시간을 준수해 주시기 바랍니다. </p>
			<p>- 객실 및 주변시설 이용 시 시설물의 훼손, 분실에 대한 책임은 투숙객에게 있으며, 손해배상의 책임을 질 수 있습니다. </p>
			<p>- 객실의 안전과 화재예방을 위해 객실 내에서 생선이나 고기 등을 굽는 직화 방식은 허용되지 않으며, 개인적으로 준비해 오는 취사도구(그릴, 숯,장작, 전기/전열기구 등)은 반입이 금지되어 있습니다.</p>
			<p>- 객실 내에서의 흡연은 금지되어 있으며, 지정된 장소를 이용해 주시기 바랍니다. </p>
			<p>- 다른 이용객에게 피해를 줄 수 있는 무분별한 오락, 음주, 고성방가는 삼가주시기 바랍니다. </p>
			<p>- 실시간예약 시 중복예약이 발생할 수 있으며, 해당 사유의 경우 고객센터를 통해 전액 환불받을 수 있습니다. (야놀자펜션 고객센터 측에서 확인 즉시 안내드립니다.) </p>
			<p>- 펜션별 기간 미확정으로 인해 요금 및 요금표가 잘못 반영된 경우, 자동 예약 취소 처리되며 정상 금액으로 재예약할 수 있습니다. </p>
			<p>&lt;기타공지사항&gt; </p>
			<p>*밤 11시부터 매너 타임입니다. </p>
			<p>모임으로 밤 늦게까지 떠들고 싶으신 분, 원없이 술을 드시고 싶으신 분, 다른 사람은 자든 말든 우리만 즐겁게 놀면 된다는 분들은 저희 캠핑장 예약을 하지 말아 주세요. </p>
			<p>다른 분들에게 피해가 됩니다. 이제 캠핑도 매너의 시대입니다. </p>
			<p>이점 꼭 양해 부탁드리며, 3번의 경고에도 계속해서 큰소리로 떠드시는 분은 강제 퇴실시키겠습니다.</p>
		</div>

		</div>
		
		<div class="wrap_rer_info rer_period">
			<h1 class="map_title">Place Map</h1>
			<h3 class="map_stitle">안내도</h3>
			
			<div class="wrap_place_map">
				<img src="./resources/image/img_map.jpg" alt="place map">
			</div>		
		</div>
		
		<div class="wrap_rer_info res_ins">
			<h1 class="map_title">Facilities and Services</h1>
			<h3 class="map_stitle">부대시설 및 서비스</h3>
		
		<div class="wrap_info_txt">
			<div class="info_img"></div>
			
			<div class="info_txt">
				<p class="color_info"></p>
				<div class="rer_detail">
					<p class="rer_tit">- 숯불 바베큐</p>
					<p>숯그릴 : 20,000원 , 숯 추가 : 15,000원 (추가로 숯을 사용하실 시 점심 저녁은 따로입니다.)</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 개별 파라솔</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 돔 온수 수영장</p>
					<p>이용시간 : 15:00 부터 20:00까지 수영장 안전수칙을 읽고 꼭 준수해주세요.</p>
					<p>깊이 : 0.9M</p>
					<p>물 온도 : 31도</p>
					<p>준비물 : 수영복, 비치타올, 여분의 수건, 유아구명조끼</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 전기 온수기</p>
					<p>
					따뜻한물 편히 사용하시라고, 대용량 전기 온수기 220리터를 설치했으나, 사용시간이 약 40분 입니다.<br>
					다른 가족을 위해 사용하지 않을 때는 꼭 물을 잠궈주세요.
					</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 사우나</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 놀이터</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 호텔식 침구</p>
					<p>매일매일 세탁하는 깨끗한 호텔침구 사용 </p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 개별 화장실</p>
					<p>개별 화장실 내 샴푸, 린스, 바디워시 제공. 개인 세면도구(칫솔, 폼클렌징, 화장품, 면도기 등)는 챙겨오세요.</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 개별 싱크대</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 개별 화로대</p>
					<p>장작 : 12,000원, 모닥불 전용 화로대입니다. 고기는 굽지 말아주세요.</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 매점 및 카페</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 석유난로</p>
					<p>20,000원(10시간 사용 가능), 주무실땐 화재 예방을 위해 난로를 꺼주세요.</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 수건 1인 1매 제공</p>
					<p>추가시 1,000원, 수영장 이용하면서 필요한 수건은 챙겨오세요.</p>
				</div>
				<div class="rer_detail">
					<p class="rer_tit">- 애견동반 절대금지</p>
					<p>발견시 즉각 퇴실 조치 될 수 있습니다.</p>
				</div>
				
				
			</div>
		</div>

		</div>
		
		<div class="wrap_rer_info res_ins">
			<h1 class="map_title">Refund Info</h1>
			<h2 class="map_stitle">환불규정</h2>
			
			<p>
                    ※ 올바른 예약문화 정착을 위하여 예약 취소시 환불기준을 아래와 같이 운영하고 있으니, 꼭 확인을 하시고 예약해 주시기 바랍니다.
            </p>
            
            <ul class="rer_mt">
            	<li>이용자가 이용 당일 입실 예정시간까지 통보 없이 방문하지 않는 경우 이용 당일 취소로 봅니다.</li>
            	<li>예약일 객실 변경시 발생하는 수수료도 취소 수수료가 동일하게 적용되오니 예약시 객실과 날짜를 신중히 생각하시고 결정해 주시기 바랍니다.</li>
            	<li>취소수수료는 예약시점과는 무관한 이용일 기준입니다.</li>
            	<li>취소수수료는 결제금액이 아닌 예약금(객실요금 및 기타옵션요금) 기준으로 책정됩니다.</li>
                <li>보호자 동반 없는 미성년자 예약 발견 시 환불 없이 예약 취소됩니다.</li>
                <li>예약취소 수수료 내역은 아래와 같습니다.</li>
            </ul>
		</div>
	
		<table class="table_refund">
			<tr>
				<th>날짜<span>(이용일 기준)</span></th>
				<th>이용<span>0일전</span></th>
				<th>이용<span>1일전</span></th>
				<th>이용<span>2일전</span></th>
				<th>이용<span>3일전</span></th>
				<th>이용<span>4일전</span></th>
				<th>이용<span>5일전</span></th>
			</tr>
			
			<tr>
				<td>취소수수료(%)</td>
				<td>100%</td>
				<td>70%</td>
				<td>50%</td>
				<td>30%</td>
				<td>20%</td>
				<td>10%</td>
			</tr>
		</table>
	</div>
	
	</div>

	</section>
	
	<jsp:include page="../inc/oh_camping_bottom.jsp" />

</body>
</html>