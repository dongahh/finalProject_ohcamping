<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
<style type="text/css">

	#sub_contents { 
	max-width: 1100px; 
	    max-width: 1100px;
    float: right;
    width: 80%;
	/* margin: auto; 
	overflow-y: hidden; 
	padding: 70px 15px 55px;  */
	}

</style>
</head>
<body>
  	<jsp:include page="../inc/admin_top.jsp" />  
   
		    <div id="admin_wrap" class="container webfont">
        <!-- 왼쪽 메뉴 -->
        <div id="aside">
            <div class="leftmenu">
                <h3 id="left_menu_head">공지사항</h3>
                <ul class="left_menu_ul">
                    <li class="nav_on">
                        <a href="<%=request.getContextPath() %>/admin_notice_list.do">
                            <i class="fa fa-caret-right"></i> 공지사항 관리
                        </a>
                    </li>                 

                </ul>
            </div>
        </div>
        <!-- // 왼쪽 메뉴 -->
	
	<div id="sub_contents">        
             <div id="board_wrap"> 
             
              <h3 class="admin_title">공지사항 관리 <span class="sub_title2">notice</span></h3> 
                	<c:set var="dto" value="${adminCont }" />
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
                            <td align="right" colspan="2" class="board_btn">
                                <input type="button" value="수정하기" onclick="location.href='admin_notice_update.do?no=${dto.notice_no}&page=${adminPage }'">
                                <input type="button" value="삭제하기" onclick="if(confirm('공지사항을 삭제하시겠습니까?')) {
																	location.href='admin_notice_delete.do?no=${dto.notice_no }&page=${adminPage }'
																	}else { return; }">
                            </td>
                        </tr>
					    
                        <tr>
                            <td align="center" colspan="2" class="board_btn">
                                <input type="button" value="목록" onclick="location.href='admin_notice_list.do?page=${adminPage }'">
                            </td>
                        </tr>
                   
                    </table>
      
                </div>
                    
    
        <div class="clear"></div>
    </div sub_wrap>
    </div>
    
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
    
    
    <jsp:include page="../inc/admin_bottom.jsp" />
</body>
</html>