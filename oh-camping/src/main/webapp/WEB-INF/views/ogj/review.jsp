<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oh Camping</title> 
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	function loginAlert() {
		alert("게시판 사용 권한이 없습니다. 로그인 해주세요");
	}
	function reviewAlert() {
		alert("캠핑장을 이용하신 내역이 없습니다. 캠핑장을 이용해 주세요.");
	}
</script>
</head>
<body>

	<%
		String id = (String) session.getAttribute("sessionID");
	%>
	<c:set var="paging" value="${Paging }" />
	<c:set var="sublist" value="${subList }" />

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">이용하신 날짜와 객실을
						선택해 주세요</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<form
					action="<%=request.getContextPath()%>/review_write.do">
					<div class="modal-body">
						<input type="hidden" name="page" value=${paging.page }>
						
						<c:forEach items="${sublist }" var="s">
							<input type="radio" name="radio"
								value="${s.room_name }/${s.room_resdate.substring(0, 10) }">&nbsp;&nbsp;${s.room_name }&nbsp;&nbsp;&nbsp;${s.room_resdate.substring(0, 10) }</input>
							<br>
						</c:forEach>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">취소</button>
						<button type="submit" class="btn btn-primary">리뷰 작성하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>





	<jsp:include page="../inc/oh_camping_top.jsp" />
	<!-- 서브 슬라이드  -->
	<section class="m_slick s_slick slider board_head">
		<div class="b_h_bg b_h_bg1">
			<h1>숙박후기</h1>
			<h3>저희 펜션은 어떠셨나요? 후기를 남겨주세요</h3>
		</div>
		<div class="b_h_bg b_h_bg2">
			<h1>숙박후기</h1>
			<h3>저희 펜션은 어떠셨나요? 후기를 남겨주세요</h3>
		</div>
		<div class="b_h_bg b_h_bg3">
			<h1>숙박후기</h1>
			<h3>저희 펜션은 어떠셨나요? 후기를 남겨주세요</h3>
		</div>
	</section>
	<!-- // 서브 슬라이드  -->
	<div id="sub_wrap" class="webfont">
		<div id="aside">
			<div class="left_title">
				<p class="big_title">Community</p>
				<p class="small_title">Review</p>
				<p class="bl_lt">▼</p>
			</div>
			<div class="mid_nav">
				<ul class="mid_menu">
					<li><a href="<%=request.getContextPath()%>/camp_notice.do"><i
							class="fa fa-caret-right"></i>공지사항</a></li>
					<li><a href="<%=request.getContextPath()%>/camp_qa.do"><i
							class="fa fa-caret-right"></i>이용문의</a></li>
					<li><a href="<%=request.getContextPath()%>/review.do"
						class="nav_on">숙박후기</a></li>
					<!-- -->
				</ul>
			</div>
		</div>


		<div id="section">
			<div class="page_count_bg">
				<div id="page_count" class="clearfix">
					<ul>
						<li><i class="fa fa-home"></i> Home</li>
						<li><i class="fa fa-home"></i> Community</li>
						<li><i class="fa fa-angle-right"></i> <strong>Notice</strong></li>
					</ul>
				</div>
			</div>

			<p class="sub_title">
				공지사항<span class="sub_title2">Notice</span>
			</p>

			<!-- 본문 시작 -->
			<div id="sub_contents">
				<div id="table_wrap">
					<table cellspacing="0" width="100%">
						<tr>
							<th>번호</th>
							<th>객실</th>
							<th width="30%">제목</th>
							<th>작성자</th>
							<th>작성일자</th>
							<th>조회수</th>
						</tr>

						<c:set var="list" value="${List }" />


						<c:if test="${!empty list }">

							<c:forEach items="${list }" var="r">
								<tr>
									<td>${r.review_no }</td>
									<td>${r.review_roomname }</td>
									<td class="board_title"><a
										href="<%=request.getContextPath() %>/review_content.do?no=${r.review_no }&page=${paging.page }">
											${r.review_title } </a></td>
									<td>${r.review_id }</td>
									<td>${r.review_date.substring(0, 10) }</td>
									<td>${r.views }</td>
								</tr>
							</c:forEach>
						</c:if>

						<c:if test="${empty list }">
							<tr>
								<td colspan="4"><h4>게시글이 없습니다.</h4></td>

							</tr>
						</c:if>

						<tr>
							<td colspan="6" align="right" class="table_btn">
								<%
									// 로그인 안되었을 경우 
								if (session.getAttribute("sessionID") == null) {
								%> <input type="button" value="글쓰기" onclick="loginAlert()">
								<%
									}else { // 로그인 됐을 때
								%> 
								<input type="button" value="나의 리뷰 보기" onclick="location.href ='<%=request.getContextPath()%>/camp_review_search.do?field=reviewId&keyword=${sessionID }&page=${paging.page }'" >
								<c:if test="${empty sublist }">
									<input type="button" value="글쓰기" onclick="reviewAlert()">
								</c:if>
								<c:if test="${!empty sublist }">
								<input type="button" value="글쓰기" data-bs-toggle="modal"
								data-bs-target="#exampleModal">
								</c:if> <%
 	}
 %>

							</td>
						</tr>

					</table>

					<div class="ext_paging" style="margin-top: 20px;">
						<%-- 페이징 처리 부분 --%>
						<c:if test="${paging.getPage() > paging.getBlock() }">
							<a href="review.do?page=1">◀◀</a>
							<a href="review.do?page=${paging.getStartBlock() - 1 }">
								&lt;<span class="page_s">이전</span> |
							</a>&nbsp;
					   </c:if>

						<c:forEach begin="${paging.getStartBlock() }"
							end="${paging.getEndBlock() }" var="i">
							<c:if test="${i == paging.getPage() }">
								<b> <a href="review.do?page=${i }">[${i }]</a></b>
							</c:if>

							<c:if test="${i != paging.getPage() }">
								<a href="review.do?page=${i }">[${i }]</a>
							</c:if>
						</c:forEach>

						<c:if test="${paging.getEndBlock() < paging.getAllPage() }">&nbsp;
					      <a href="review.do?page=${paging.getEndBlock() + 1 }">
								| <span class="page_s">다음</span>&gt;
							</a>
							<a href="review.do?page=${paging.getAllPage() }">▶▶</a>
						</c:if>
					</div>

					<%-- 검색 부분! --%>
					<div class="ext_search">
						<form method="post"
							action="<%=request.getContextPath()%>/camp_review_search.do">

							<input type="hidden" name="page" value="${paging.getPage() }">

							<select name="field">
								<option value="reviewTitle">제목</option>
								<option value="reviewCont">내용</option>
								<option value="reviewId">작성자</option>
								<option value="reviewTitle_cont">제목+내용</option>
							</select> <input name="keyword" class="search_input_text"> <input
								type="submit" value="검색" class="search_input_btn">
						</form>

					</div>
				</div>

			</div>

		</div>
		<div class="clear"></div>
	</div sub_wrap>
	<jsp:include page="../inc/oh_camping_bottom.jsp" />




</body>
</html>