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
		left: 0px; 
		margin-top : 50px;
		
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
		margin-top: 200px;
		align-items: center;
		font-size: 12pt;
		font-family: Dotum, 돋움;
	}
	
	.form  {
		width: 600px;
		display: flex;
		flex-direction: column;
		align-items: center;
		border: 1px solid #aaa;
	}
	
	.content {
        align-items: center;
        width: 100%;
    }
	
	.title_bar {
		width: 100%;
		height: 86px;
		background-color: black;
	}
	
	.title_content {
		height: 86px;
		text-align: center;
		font-size: 20px;
		line-height: 86px;
		color: #fff;
	}
	
	.search {
		margin-top: 15px;
		width: 84%;
        padding: 30px 50px;
	}
	
	.search_text {
		font-size: 12px;
		margin-top: 15px;
		margin-bottom: 20px;
		
	}
	
	.input_text {
		width: 100%;
		border: 0px;
		border-bottom: 1px solid #D9D9D9;
		padding: 12px 0px;
		font-size: 14px;
		border-radius: 0px;
	}
	
	.search_button {
		margin-top: 40px;
		margin-bottom: 40px;
	}
	
	input[type="submit"] { {
		width: 100%;
		height: 50px;
		background-color: #fff;
		border: 1px solid #aaa;
		border-radius: 3px;
		color: #aaa;
		cursor: pointer;
		font-size: 14px;
	
	}
	
	input[type="submit"]:hover {
		border:1px solid #333; 
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
			
			<div class="headerLink on" onclick="location.href='reserveinfo.do'">예약확인</div>
			<label class="linebar">|</label>
			
			<div class="headerLink" onclick="location.href='payinfo.do'">요금안내</div>
			<label class="linebar">|</label>
			
			
		</div>
		
		<div class="header_title" onclick="location.href='camp_main.do'">가평 oh-camping 펜션&글램핑</div>
		
		
	</div>
	
	</div>


	<div class="wrapper">

	    <form method="post" action="<%=request.getContextPath()%>/reserve_info.do" class="form">
	<div class="content">
	<div class="title_bar">
		<div class="title_content">예약조회</div>
	</div>

	<div class="search">
		<div class="search_content">
		<div class="search_text">예약번호</div>
		<div class="search_input">
		<input type="text" name="res_no" class="input_text" maxlength="10"
			placeholder="00000000">
		</div>
		
		<div class="search_text">예약자명</div>
		<div class="search_input">
		<input type="text" name="res_name" class="input_text" maxlength="10"
			placeholder="예약자명을 입력해주세요.">
		</div>
		
		<div class="search_text">휴대폰번호</div>
		<div class="search_input">
		<input type="text" name="res_phone" class="input_text" maxlength="11"
			placeholder="'-'없이 입력해 주세요.">
		</div>
		</div>
		
		<div class="search_button">
		<input type="submit" value="조회하기" class="button"> 
		</div>
	</div>
	</div>
	</form>

	<div style="padding-top: 2rem; color: #333; font-size: 12px;">
	※ 입실일 이후 최대 30일까지의 예약건만 조회 가능합니다.
	</div>
	
	</div>
	
	<jsp:include page="../inc/oh_camping_bottom.jsp" />
	
	</section>

</body>
</html>