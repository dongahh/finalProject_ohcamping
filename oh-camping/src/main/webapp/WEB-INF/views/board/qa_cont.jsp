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
         <h1> 이용문의   </h1>
         <h3> 친절하게 답변 드리겠습니다. </h3>
        </div>
        <div class="b_h_bg b_h_bg2">
         <h1> 이용문의   </h1>
         <h3> 친절하게 답변 드리겠습니다. </h3>
        </div>
        <div class="b_h_bg b_h_bg3">
         <h1> 이용문의   </h1>
         <h3> 친절하게 답변 드리겠습니다. </h3>
        </div>
    </section>
    <!-- // 서브 슬라이드  -->
    <div id="sub_wrap" class="webfont">
        <div id="aside">
            <div class="left_title">
                <p class="big_title">Community</p>
                <p class="small_title">Q&A</p>
                <p class="bl_lt">▼</p>
            </div>
            <div class="mid_nav">
                <ul class="mid_menu">
                    <li><a href="<%=request.getContextPath() %>/camp_notice.do"><i class="fa fa-caret-right"></i>공지사항</a></li>                  
                    <li><a href="<%=request.getContextPath() %>/camp_qa.do" class="nav_on"><i class="fa fa-caret-right"></i>이용문의</a></li>
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
                        <li> <i class="fa fa-angle-right"></i> <strong>Q&A</strong></li>
                    </ul>
                </div>
            </div>
    
            <p class="sub_title">이용문의<span class="sub_title2">Q&A</span></p>
            
            <!-- 본문 시작 -->
            <div id="sub_contents">        
                <div id="board_wrap">  
                    <c:set var="dto" value="${Cont }" />
                    <table border="0" cellspacing="0" width="100%" class="table write_table">
                        <tr>
                           <th>작성자</th>
                           <td> ${dto.qa_writer } </td>
                        </tr>
                        
                        <tr>
                           	<th>글 제목</th>
                           	<c:if test="${i.qa_indent != 0}">
                           		<td> ${dto.qa_title } </td>
                           	</c:if>
                           	<c:if test="${i.qa_indent == 0}">
                           		<td> <span>RE</span> ${dto.qa_title } </td>
                           	</c:if>
                        </tr>
                        
                        <tr>
                           <th>글 내용</th>
                           <td> 
                              <textarea readonly>${dto.qa_cont }</textarea>
                           </td>
                        </tr>
                     
                        <tr>
                           <th>조회수</th>
                           <td> ${dto.qa_hit } </td>
                        </tr>
                        
                        <tr>
                              <th>작성일자</th>
                            <td> ${dto.qa_date } </td>
                        </tr>
                        
                        <c:if test="${empty dto }">
                           <tr>
                              <td colspan="2" align="center">
                                 <h3>조회된 상세 내역이 없습니다</h3>
                              </td>
                           </tr>
                        </c:if>

                        <tr>
                           <td align="right" colspan="2" class="board_btn">
                           	  <c:set var="qaWriter" value="${dto.qa_writer }"/>
                              <% String id = (String)session.getAttribute("sessionID");
                              	 if (id.equals("admin")){ // 관리자 라면 %>
                              		<input type="button" value="글쓰기"
                                    	onclick="location.href='camp_qa_write.do?id=<%=id %>&page=${Page }'">
                                    
                                  	<c:if test="${qaWriter eq '관리자'}"> <!-- // 작성자가 관리자면 (댓글이면) -->
                                  		<input type="button" value="수정"
                                        	onclick="location.href='camp_qa_update.do?no=${dto.qa_no }&page=${Page }'">     	
                                  	</c:if>
                                  	<c:if test="${qaWriter ne '관리자'}"> <!-- // 작성자가 관리자가 아니면(댓글이 아니면) -->
                                  		<input type="button" value="답변하기"
                                    	onclick="location.href='camp_qa_reply.do?no=${dto.qa_no }&page=${Page }'">     	
                                  	</c:if>
                                  	
                                  	<input type="button" value="삭제"
                                           	onclick="if(confirm('게시글을 삭제하시겠습니까?')) {
                                                    location.href='camp_qa_delete.do?id=<%=id %>&no=${dto.qa_no }&page=${Page }'
                                                 }else{ return; }">
                                                 
                              <% }else { // 사용자 %>
                                    <c:if test="${qaWriter ne '관리자'}"> <!-- // 작성자가 관리자가 아니면(댓글이 아니면) -->
                                       <input type="button" value="수정"
                                             onclick="location.href='camp_qa_modify.do?no=${dto.qa_no }&page=${Page }'">
                                       <input type="button" value="삭제"
                                             onclick="if(confirm('답변도 함께 삭제됩니다. 게시글을 삭제하시겠습니까?')) {
                                                      location.href='camp_qa_delete.do?id=<%=id %>&no=${dto.qa_no }&page=${Page }'
                                                   }else{ return; }">
                                    </c:if>
                                    <input type="button" value="문의하기"
                                              onclick="location.href='camp_qa_write.do?id=<%=id %>&page=${Page }'">
                              <% } %>
                           </td>
                        </tr>
                        <tr>
                           <td align="center" colspan="2" class="board_btn">
                              <input type="button" value="목록" onclick="location.href='camp_qa.do?page=${Page }'">
                           </td>
                        </tr>
                     </table>
                    
                </div> <!-- board_wrap -->
                    
            </div> <!-- sub_contents -->
    
        </div>
        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/oh_camping_bottom.jsp" />
</body>
</html>