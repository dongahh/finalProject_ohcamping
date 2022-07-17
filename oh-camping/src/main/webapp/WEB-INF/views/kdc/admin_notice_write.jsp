<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
        
        <form method="post" enctype="multipart/form-data"
	 		action="<%=request.getContextPath()%>/admin_notice_write_ok.do">
	 		
			<table class="table_content">
				<tr>
					<th>공지사항 제목</th>
					<td><input name="notice_title" class="input_text" style="width:80%;"> </td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input name="notice_writer" value="관리자"
							class="input_text" style="width:150px;" readonly> </td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="7" cols="100" name="notice_cont" class="input_text"></textarea> </td>
				</tr>
				<tr>
					<th>이미지 첨부파일</th>
					<td><input type="file" name="imgfile" multiple="multiple"> </td>
				</tr>
				
				<tr>
					<td colspan="2" align="center"  class="board_btn">
						<input type="submit" value="등록하기">
						<input type="reset" value="다시작성">
					</td>
				</tr>
			</table>
			
		</form>	
		</div>
		
    
    
	<div class="clear"></div>
    </div sub_wrap>
    </div>
	<jsp:include page="../inc/admin_bottom.jsp" />
</body>
</html>