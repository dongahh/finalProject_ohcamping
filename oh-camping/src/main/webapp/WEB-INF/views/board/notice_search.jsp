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
        	<h1> 공지사항   </h1>
        	<h3> Oh Camping의 소식을 알려드립니다. </h3>
        </div>
        <div class="b_h_bg b_h_bg2">
        	<h1> 공지사항   </h1>
        	<h3> Oh Camping의 소식을 알려드립니다. </h3>
        </div>
        <div class="b_h_bg b_h_bg3">
        	<h1> 공지사항   </h1>
        	<h3> Oh Camping의 소식을 알려드립니다. </h3>
        </div>
    </section>
    <!-- // 서브 슬라이드  -->
    <div id="sub_wrap" class="webfont">
        <div id="aside">
            <div class="left_title">
                <p class="big_title">Community</p>
                <p class="small_title">Notice</p>
                <p class="bl_lt">▼</p>
            </div>
            <div class="mid_nav">
                <ul class="mid_menu">
                    <li><a href="<%=request.getContextPath() %>/camp_notice.do" class="nav_on"><i class="fa fa-caret-right"></i>공지사항</a></li>                  
                    <li><a href="<%=request.getContextPath() %>/camp_qa.do"><i class="fa fa-caret-right"></i>이용문의</a></li>
                    <li><a href="<%=request.getContextPath() %>/review.do">숙박후기</a></li> <!-- -->
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
    
            <p class="sub_title">공지사항 검색 결과<span class="sub_title2">Notice</span></p>
            
            <!-- 본문 시작 -->
            <div id="sub_contents">        
                <div id="table_wrap">
                    <table cellspacing="0" width="100%">
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일자</th>
                            <th>조회수</th>
                        </tr>
            
                        <c:set var="list" value="${searchPageList }" />
	      				<c:set var="paging" value="${Paging }" />
                        
                        <c:if test="${!empty list }">
                        	
				         	<c:forEach items="${list }" var="i">
				            	<tr>
				               		<td> ${i.notice_no } </td>
				               		<td class="board_title">  
				                  		<a href="<%=request.getContextPath() %>/camp_notice_content.do?no=${i.notice_no }&page=${paging.page }">
				               							${i.notice_title } </a></td>
				               		<td> ${i.notice_date } </td>
				               		<td> ${i.notice_hit } </td>
				            	</tr>
				         	</c:forEach>
				      	</c:if>
                        
                        <c:if test="${empty list }">
                            <tr>
                                <td colspan="4"><h4>게시글이 없습니다.</h4></td>
                            </tr>
                        </c:if>
                   
                    </table>
        
                    <div class="ext_paging" style="margin-top: 20px;">
                    	<%-- 페이징 처리 부분 --%>
					   <c:if test="${paging.getPage() > paging.getBlock() }">
					      <a href="camp_notice_search.do?page=1&field=${paging.field }&keyword=${paging.keyword }&page">◀◀</a>
					      <a href="camp_notice_search.do?page=${paging.startBlock - 1}&field=${paging.field }&keyword=${paging.keyword }"> &lt;<span class="page_s">이전</span> | </a>&nbsp;
					   </c:if>
					   
					   <c:forEach begin="${paging.startBlock }" end="${paging.endBlock }" var="i">
					      <c:if test="${i == paging.page }">
					         <b> <a href="camp_notice_search.do?page=${i }&field=${paging.field }&keyword=${paging.keyword }">[${i }]</a></b>
					      </c:if>
					      
					      <c:if test="${i != paging.page }">
					         <a href="camp_notice_search.do?page=${i }&field=${paging.field }&keyword=${paging.keyword }">[${i }]</a>
					      </c:if>
					   </c:forEach>
					   
				
					   <c:if test="${paging.getEndBlock() < paging.getAllPage() }">&nbsp;
					   		<a href="camp_notice_search.do?page=${paging.endBlock + 1 }&field=${paging.field }&keyword=${paging.keyword }"> | <span class="page_s">다음</span>&gt; </a>
	      					<a href="camp_notice_search.do?page=${paging.allPage}&field=${paging.field }&keyword=${paging.keyword }">▶▶</a>
					   </c:if>
					   <%-- // 페이징 처리 부분 --%>
                    </div>
                    
                    <%-- 검색 부분! --%>
                    <div class="ext_search">
                    	<form method="post"
					      	action="<%=request.getContextPath() %>/camp_notice_search.do">
					   
					   	  	<input type="hidden" name="page" value="${paging.getPage() }">
					   	  
					      	<select name="field">
					         	<option value="title">제목</option>
					         	<option value="cont">내용</option>
					         	<option value="title_cont">제목+내용</option>
					      	</select>
					      
					      	<input name="keyword" class="search_input_text">
					      	<input type="submit" value="검색" class="search_input_btn">
					   	</form>
                    </div>
                    <div class="list_btn_wrap">
                    	<input type="button" value="목록으로 돌아가기" class="list_btn board_btn"
					      	 	onclick="location.href='camp_notice.do?page=${paging.page }'">
                    </div>
                </div>
                    
            </div>
    
        </div>
        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/oh_camping_bottom.jsp" />
</body>
</html>