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
    
            <p class="sub_title">이용문의 글 답변<span class="sub_title2">Q&A</span></p>
            
            <!-- 본문 시작 -->
            <div id="sub_contents">        
                <div id="board_wrap">  
                    <c:set var="dto" value="${reply }" />
                    <form method="post" action="<%=request.getContextPath() %>/camp_qa_reply_ok.do" >
                    	<input type="hidden" name="qa_no" value="${dto.qa_no }">
                    	<input type="hidden" name="qa_userid" value="${dto.qa_userid }">
                    	<input type="hidden" name="qa_writer" value="관리자">
                    	<input type="hidden" name="qa_type" value="${dto.qa_type }">
                    	<input type="hidden" name="qa_title" value="${dto.qa_title }">
                    	<input type="hidden" name="qa_indent" value="${dto.qa_indent }">
                    	<input type="hidden" name="qa_group" value="${dto.qa_group }">
	   	  				<input type="hidden" name="page" value="${Page }"> 
                        <table border="0" cellspacing="0" width="100%" class="table write_table">
                           	<tr>
                              	<th>문의 작성자</th>
                              	<td>
                                    ${dto.qa_writer } 님
                              	</td>
                           	</tr>
                           	<tr>
                                <th>문의 유형</th>
                                <td class="qa_select">
                                	${dto.qa_type }
	                       		</td>
                            </tr>
                            <tr>
                                <th>문의 제목</th>
                                <td>
                                	${dto.qa_title }
                               	</td>
                            </tr>
                            <tr>
                                <th>문의 내용</th>
                                <td>
                                    ${dto.qa_cont }
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="emp"></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="center qa_reply">
                                	<span>RE</span> ${dto.qa_title }
                                </td>
                            </tr>
                            <tr>
                                <th>답변하기 </th>
                                <td>
                                    <textarea name="qa_cont"></textarea>
                                </td>
                            </tr>

                            <tr>
                                <td align="center" colspan="2" class="board_btn">
                                    <input type="submit" value="답변하기">&nbsp;&nbsp;
                                    <input type="button" value="목록" onclick="location.href='camp_qa.do?page=${Page }'">
                                </td>
                            </tr>
                        </table>
                        <div></div>
                    </form>
                    
                </div> <!-- board_wrap -->
                    
            </div> <!-- sub_contents -->
    
        </div>
        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/oh_camping_bottom.jsp" />
</body>
</html>