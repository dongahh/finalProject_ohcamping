<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
    
            <p class="sub_title">공지사항<span class="sub_title2">Notice</span></p>
            
            <!-- 본문 시작 -->
            <div id="sub_contents">        
                <div id="board_wrap">
                	<c:set var="dto" value="${Cont }" />
                	<c:set var="file" value="${file }" />
                    <table cellspacing="0" width="100%">
					    <tr>
					        <th>글 제목</th>
					        <td> ${dto.notice_title } </td>
					    </tr>
					   	<tr>
					        <th>작성일자</th>
					        <td> ${dto.notice_date } </td>
					    </tr>
					    <tr>
					        <th>조회수</th>
					        <td> ${dto.notice_hit } </td>
					    </tr>
					    <tr>
					        <th>글 내용</th>
					        <td class="board_cont"> 
					         	<textarea readonly>${dto.notice_cont }</textarea>
					        </td>
					    </tr>
					    <tr>
					        <th>첨부파일</th>
					        <td>
					        <c:if test="${!empty file }">
					        <div style="align-items: flex-end;
    display: flex;">
					        <img src="<%=request.getContextPath() %>/resources/upload/${file }"  width="200px" height="200px">
					       <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
  🔍
</button>
					       </div>
					         </c:if>
					         <c:if test="${empty file }">
					         
					         첨부파일이 없습니다.
					         
					         </c:if>
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
                                <input type="button" value="목록" onclick="location.href='camp_notice.do?page=${Page }'">
                            </td>
                        </tr>
                   
                    </table>
      
                </div>
                    
            </div>
    
        </div>
        <div class="clear"></div>
    </div sub_wrap>
    
    <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="padding: 0;">
        <img src="<%=request.getContextPath() %>/resources/upload/${file }" width="100%" height="100%">
      </div>
    </div>
  </div>
</div>
    
    
    <jsp:include page="../inc/oh_camping_bottom.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>