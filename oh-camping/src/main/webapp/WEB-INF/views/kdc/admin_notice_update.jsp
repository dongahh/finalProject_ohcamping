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
                	<c:set var="dto" value="${Update }" />
                	<form method="post" action="<%=request.getContextPath() %>/admin_notice_update_ok.do" enctype="multipart/form-data">
                		<input type="hidden" name="notice_no" value="${dto.notice_no }">
	   	  				<input type="hidden" name="page" value="${Page }">
                    <table cellspacing="0" width="100%">
					    <tr>
					        <th>글 제목</th>
					        <td> <input type="text" value="${dto.notice_title }" name="notice_title" style="width: 80%" > </td>
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
					        	<textarea rows="7" cols="100" name="notice_cont" class="input_text">${dto.notice_cont }</textarea> </td>
					    </tr>
					<tr>
						<th>첨부파일</th>
						<td id="filetd">
						<input type="hidden" id="file_check" value="1" name="file_check">
						<input type="file" id="imgfile" name="imgfile" multiple="multiple" style="display: none;">
						<p style="display:none">첨부파일 없음</p>
						<c:if test="${!empty file }">
						<div id="filediv" style="align-items: flex-end; display: flex;">
									<img
										src="<%=request.getContextPath() %>/resources/upload/${file }"
										width="200px" height="200px">
									<button type="button" onclick="deletefile()">❌</button>
									<input type="hidden" value="1" name="file_check">
								</div>
						
								
							</c:if><c:if test="${empty file }">
						<script type="text/javascript">
						$("#imgfile").css({
			    			"display":"block"
			    		});
						document.getElementById('file_check').setAttribute('value', '2');
						</script>
								
							</c:if></td>
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
                                <input type="submit" value="수정하기">&nbsp;&nbsp;
                                <input type="button" value="목록" onclick="location.href='admin_notice_list.do?page=${Page }'">
                            </td>
                        </tr>

                   
                    </table>
    			  </form>
                </div>
                    
    
        <div class="clear"></div>
    </div sub_wrap>
    </div>
    <jsp:include page="../inc/admin_bottom.jsp" />
    
    <script type="text/javascript">
    	function deletefile(){
    		const filediv = document.getElementById('filediv');
    		  
    		  filediv.remove();

    		$("#imgfile").css({
    			"display":"block"
    		});
    		
    		document.getElementById('file_check').setAttribute('value', '2');
    		
    	}
    	

		document.getElementById('imgfile').onchange = function() {
    		

    		document.getElementById('file_check').setAttribute('value', '3');
    	};
    </script>
</body>
</html>