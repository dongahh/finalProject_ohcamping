<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Oh Camping</title>
</head>
<body>
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
                    <li><a href="<%=request.getContextPath() %>/camp_notice.do"><i class="fa fa-caret-right"></i>공지사항</a></li>                  
                    <li><a href="<%=request.getContextPath() %>/camp_qa.do"><i class="fa fa-caret-right"></i>이용문의</a></li>
                    <li><a href="<%=request.getContextPath() %>/review.do"  class="nav_on">숙박후기</a></li> <!-- -->
                </ul>
            </div>
        </div>
      
      
        <div id="section">
            <div class="page_count_bg"> 
                <div id="page_count" class="clearfix">
                    <ul>
                        <li><i class="fa fa-home"></i> Home</li>
                        <li><i class="fa fa-home"></i> Community</li>
                        <li> <i class="fa fa-angle-right"></i> <strong>Notice</strong></li>
                    </ul>
                </div>
            </div>
    
            <p class="sub_title">공지사항<span class="sub_title2">Notice</span></p>
            
            <!-- 본문 시작 -->
            <div id="sub_contents">        
                <div id="board_wrap">
                	<c:set var="dto" value="${Cont }" />
                    <table cellspacing="0" width="100%">
					    <tr>
					        <th>글 제목</th>
					        <td> ${dto.review_title } </td>
					    </tr>
					    <tr>
					        <th>객실</th>
					        <td> ${dto.review_roomname } </td>
					    </tr>
					    <tr>
					    	<th>작성자</th>
					    	<td>${dto.review_id }</td>
					    </tr>
					   	<tr>
					        <th>작성일자</th>
					        <td> ${dto.review_date } </td>
					    </tr>
					    <tr>
					        <th>다녀간일자</th>
					        <td> ${dto.review_orderdate } </td>
					    </tr>
					    <tr>
					        <th>조회수</th>
					        <td> ${dto.views } </td>
					    </tr>
					    <tr>
					        <th>글 내용</th>
					        <td class="board_cont"> 
					         	<textarea readonly>${dto.review_cont }</textarea>
					        </td>
					    </tr>

					    <c:if test="${empty dto }">
					    	<tr>
					            <td colspan="2" align="center">
					               <h3>조회된 상세 내역이 없습니다.....</h3>
					            </td>
					        </tr>
					    </c:if>
                        <tr>
                        
                        
                            <td align="center" colspan="2" class="board_btn">
                                <input type="button" value="목록" onclick="location.href='review.do?page=${Page }'">
                                <c:if test="${dto.review_id == sessionID }">
                                
                                <input type="button" value="삭제"
					onclick="if(confirm('정말로 삭제하시겠습니까?')){
					location.href='review_delete.do?num=${dto.review_no }'}
					else{return;}">
								<input type="button" value="수정" onclick="location.href='review_update.do?num=${dto.review_no }&page=${Page }'">
                                </c:if>
                                

								
								
                            </td>
                            
                        </tr>
                   
                    </table>
      
                </div>
                    
            </div>
    
        </div>
        <div class="clear"></div>
    </div>
    <jsp:include page="../inc/oh_camping_bottom.jsp" />
</body>
</html>