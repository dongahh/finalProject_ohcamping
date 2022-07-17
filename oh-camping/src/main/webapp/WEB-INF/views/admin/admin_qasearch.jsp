<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
<body class="d-flex flex-column h-100">
	<jsp:include page="../inc/admin_top.jsp" />  
	
	    <div id="admin_wrap" class="container webfont">
        <!-- 왼쪽 메뉴 -->
        <div id="aside">
            <div class="leftmenu">
                <h3 id="left_menu_head">문의사항</h3>
                <ul class="left_menu_ul">
                    <li class="nav_on">
                        <a href="<%=request.getContextPath() %>/main.do">
                            <i class="fa fa-caret-right"></i> 문의사항 관리
                        </a>
                    </li>                  

                </ul>
            </div>
        </div>
        <!-- // 왼쪽 메뉴 -->
	
	
	<div id="sub_contents">     
	

	   
        <div id="table_wrap">
        
        <h3 class="admin_title">문의 사항 <span class="sub_title2">Q&A</span></h3>
        
		
			<table cellspacing="0" width="100%">
				<tr>
					<th>번호</th>
                    <th>문의유형</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일자</th>
                    <th>조회수</th>
                 </tr>
                 
                 <c:set var="qadto"  value="${adminqasearch }" />
                 <c:set var="paging" value="${pagedto }"/>
                 
                 <c:if test="${!empty qadto }">
                 	<c:forEach items="${qadto}" var="i">
                 		<tr>
	                 		<td> ${i.qa_no } </td>
					        <td> ${i.qa_type } </td>
					        
					        <!-- 답글의 경우 -->
					        <c:if test="${i.qa_indent !=0 }">
					        	<td>
					        		<span>RE</span>
					        		<a href="<%=request.getContextPath() %>/admin_qa_contnet.do?no=${i.qa_no}&page=${paging.page }">${i.qa_title}</a>
					        	</td>	        					        
					        </c:if>
					        
					        <!--  문의글의 경우 -->
					        <c:if test="${i.qa_indent ==0 }">
					        	<td>
					        		<a href="<%=request.getContextPath() %>/admin_qa_contnet.do?no=${i.qa_no}&page=${paging.page }">${i.qa_title}</a>
					        	</td>				        
					        </c:if>
					        <td> ${i.qa_writer } </td>
		               		<td> ${i.qa_date } </td>
		               		<td> ${i.qa_hit } </td>
		               	</tr>            		
                 	</c:forEach>             
                 </c:if>
                 
                 <c:if test="${empty qadto}">
                     <tr>
                         <td colspan="6"><h4>게시글이 없습니다.</h4></td>
                     </tr>
                 </c:if>
 			
			</table>
			
			
			 <%-- 페이징 처리 부분 --%>
			<div class="ext_paging" style="margin-top: 20px;">	      
			   <c:if test="${paging.getPage() > paging.getBlock() }">
			      <a href="admin_qasearch.do?page=1&field=${paging.field }&keyword=${paging.keyword}">◀◀</a>
			      <a href="admin_qasearch.do?page=${paging.getStartBlock() - 1 }&field=${paging.field }&keyword=${paging.keyword}"> &lt;<span class="page_s">이전</span> | </a>&nbsp;
			   </c:if>
			   
			   <c:forEach begin="${paging.getStartBlock() }"
			          				end="${paging.getEndBlock() }" var="i">
			      <c:if test="${i == paging.getPage() }">
			         <b> <a href="admin_qasearch.do?page=${i }&field=${paging.field }&keyword=${paging.keyword}">[${i }]</a></b>
			      </c:if>
			   
			   	  <c:if test="${i != paging.getPage() }">
			         <a href="admin_qasearch.do?page=${i }&field=${paging.field }&keyword=${paging.keyword}">[${i }]</a>
			      </c:if>
			   </c:forEach>
		
			   <c:if test="${paging.getEndBlock() < paging.getAllPage() }">&nbsp;
			      <a href="admin_qasearch.do?page=${paging.getEndBlock() + 1 }&field=${paging.field }&keyword=${paging.keyword}"> | <span class="page_s">다음</span>&gt; </a>
			      <a href="admin_qasearch.do?page=${paging.getAllPage() }&field=${paging.field }&keyword=${paging.keyword}">▶▶</a>
			   </c:if>
		   </div>
			 <div class="list_btn_wrap">
                	<input type="button" value="목록으로 돌아가기" class="list_btn board_btn"
	      	 		onclick="location.href='admin_qa.do?page=${paging.page }'">
            </div>
			
			
		</div>
	
		<div class="clear"></div>
    </div sub_wrap>
    </div>
	 <jsp:include page="../inc/admin_bottom.jsp" />
</body>
</html>