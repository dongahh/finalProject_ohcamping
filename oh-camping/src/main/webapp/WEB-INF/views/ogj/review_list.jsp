<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/ogjcss/room.css">
</head>
<body>

	<section>

		<div class="top">
			<jsp:include page="../inc/oh_camping_top2.jsp" />
			<div class="top2">
				<h1>Room Previes</h1>
				<h3>저희 펜션의 객실을 한눈에 확인해보세요.</h3>

			</div>
		</div>

		<div align="center">
			<table border="1" cellspacing="0" width="700">
				<tr>
					<th>글번호</th>
					<th>객실</th>
					<th>글제목</th>
					<th>작성자</th>
					<td>날짜</td>
					<th>조회수</th>
				</tr>
				<c:set var="list" value="${List }" />
				<c:set var="Paging" value="${Paging }" />

				<c:if test="${!empty list }">
					<c:forEach items="${list }" var="r">
						<tr>
							<td>${r.review_no }</td>
							<td>${r.review_roomno }</td>
							<td>${r.review_title }</td>
							<td>${r.review_id }</td>
							<td>${r.review_date.substring(0, 10) }</td>
							<td>${r.views }</td>
						</tr>

					</c:forEach>

				</c:if>
				<c:if test="${empty list }">
					<td colspan="6">
						<h3>조회된 리뷰가 없습니다.</h3>
					</td>
				</c:if>
				<tr>
					<td colspan="6" align="right"><input type="button"
						value="리뷰 작성" onclick="location.href='review_write.do'"></td>
				</tr>


			</table>

		</div>
		
		<jsp:include page="../inc/oh_camping_bottom.jsp" />

	</section>


</body>
</html>