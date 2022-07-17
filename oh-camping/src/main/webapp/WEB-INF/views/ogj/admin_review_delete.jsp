<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="h-100">
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<c:set var="paging" value="${Paging }" /> 
<script language=javascript>


	function all_select()
	{
		var obj = document.popup.elements['plist'];

		for(i=0; i<obj.length; i++)
		{
			if(document.popup.all_plist.checked == true)
				obj[i].checked = true;
			else
				obj[i].checked = false;
		}
	}

</script>

<script type="text/javascript">
	function move_reset(){
		var url = '<%=request.getContextPath() %>/admin_review_reset.do';    // Controller로 보내고자 하는 URL (.dh부분은 자신이 설정한 값으로 변경해야됨)
		var valueArr = new Array();
	    var list = $("input[name='plist']");
	    for(var i = 0; i < list.length; i++){
	        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
	            valueArr.push(list[i].value);
	        }
	    }
	    if (valueArr.length == 0){
	    	alert("삭제할 팝업리스트를 선택하세요.");
	    }
	    else{
			var chk = confirm("선택된 리뷰를 복구하시겠습니까?.");				 
			$.ajax({
			    url : url,                    // 전송 URL
			    type : 'POST',                // GET or POST 방식
			    traditional : true,
			    data : {
			    	valueArr : valueArr        // 보내고자 하는 data 변수 설정
			    },
                success: function(jdata){
                    if(jdata = 1) {
                        alert("리뷰가 복구되었습니다..");
                        location.replace("admin_delete_review.do")
                    }
                    else{
                        alert("리뷰를 복구하지 못했습니다. 관리자에게 문의하세요");
                    }
                }
			});
		}
	}
	
	function contDisplay(a){
		
 		var con = document.getElementsByClassName(a);
 		
 		//$("."+a).css({"display" : "table-cell"});
 		
		var display = $("."+a).css("display");
		
		//alert(display);
		
		
		if(display=='none'){
			$("."+a).css({"display" : "table-cell"});
		}else{
			$("."+a).css({"display" : "none"});
		} 
	}

	
	
</script>
<!-- 라이트박스 -->
<link href="<%=request.getContextPath() %>/resources/dist/css/lightbox.min.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/resources/dist/js/lightbox.min.js" type="text/javascript"></script>
</head>
<body class="d-flex flex-column h-100">
    
    <jsp:include page="../inc/admin_top.jsp" /> 
    <c:set var="list" value="${List }" />
	<c:set var="paging" value="${Paging }" /> 
    <div id="admin_wrap" class="container webfont">
        <!-- 왼쪽 메뉴 -->
        <div id="aside">
            <div class="leftmenu">
                <h3 id="left_menu_head">리뷰</h3>
                <ul class="left_menu_ul">
                    <li >
                        <a href="<%=request.getContextPath() %>/admin_review.do">
                            <i class="fa fa-caret-right"></i> 리뷰관리
                        </a>
                    </li>                  
                    <li class="nav_on">
                        <a href="<%=request.getContextPath() %>/admin_delete_review.do">
                            <i class="fa fa-caret-right"></i> 삭제된 리뷰
                        </a>
                    <li>
                </ul>
            </div>
        </div>
        <!-- // 왼쪽 메뉴 -->
                
        <!-- 본문 -->
        <div id="section">
            <!-- 본문 타이틀 -->
            <h3 class="admin_title">삭제된 리뷰 <span class="sub_title2">review</span></h3>

            <!-- 본문 내용 시작 -->
            <div id="sub_contents">        
                <div id="table_wrap">
                	<form name='popup' method='post' action="">
	                    <table cellspacing="0" width="100%">
	                        <tr>
	                        	<th><input type="checkbox" name="all_plist" onclick="all_select()"></th>
	                            <th>번호</th>
	                            <th>객실</th>
	                            <th>제목<span style="font-size: 8px;">(클릭시 내용확인)</span></th>
	                            <th>작성자</th>
	                            <th>리뷰등록일</th>
	                            <th>예약일</th>
	                        </tr>
	            
	                        
	                        
	                        <c:if test="${!empty list }">
	                            
	                            <c:forEach items="${list }" var="i">
	                                <tr>
	                                	<td> <input type='checkbox' name='plist' value='${i.review_no }'> </td>
	                                    <td> ${i.review_no } </td>
	                                    <td> ${i.review_roomname } </td>
	                                    <td> <a href="#" class="title_a" id="${i.review_no }"  onclick='contDisplay(this.id)' >
											${i.review_title } </a> </td>
	                                    <td> ${i.review_id } </td>
	                                    <td> ${i.review_date.substring(0, 10)}</td>
	                                    <td> ${i.review_orderdate.substring(0, 10)}</td>
	                                </tr>
	                                <tr >
	                                	<td class="${i.review_no }" colspan="6" style="text-align: left; padding: 40px; display: none;">${i.review_cont }</td>
	                                </tr>
	                            </c:forEach>
	                        </c:if>
	                        
	                        <c:if test="${empty list }">
	                            <tr>
	                                <td colspan="6"><h4>삭제된 리뷰가 없습니다.</h4></td>
	                            </tr>
	                        </c:if>
	                   
	                    </table>
        			</form>
                    <div class="ext_paging" style="margin-top: 20px;">
                        <%-- 페이징 처리 부분 --%>
                        <c:if test="${paging.getPage() > paging.getBlock() }">
                            <a href="admin_review.do?page=1">◀◀</a>
                            <a href="admin_review.do?page=${paging.getStartBlock() - 1 }"> &lt;<span class="page_s">이전</span> | </a>&nbsp;
                        </c:if>
                       
                        <c:forEach begin="${paging.getStartBlock() }"
                                            end="${paging.getEndBlock() }" var="i">
                            <c:if test="${i == paging.getPage() }">
                                <b> <a href="admin_review.do?page=${i }">[${i }]</a></b>
                            </c:if>
                       
                            <c:if test="${i != paging.getPage() }">
                                <a href="admin_review.do?page=${i }">[${i }]</a>
                            </c:if>
                        </c:forEach>
                
                        <c:if test="${paging.getEndBlock() < paging.getAllPage() }">&nbsp;
                            <a href="admin_review.do?page=${paging.getEndBlock() + 1 }"> | <span class="page_s">다음</span>&gt; </a>
                            <a href="admin_review.do?page=${paging.getAllPage() }">▶▶</a>
                        </c:if>
                    </div>
                    
                    <%-- 아래 버튼 부분 --%>
                    <div class="pop_bottom_btn">
						
						<input type="button" value="복구하기" class="bt_a32 tmb22" onclick="move_reset();">
                        
                    </div>
                </div>
                    
            </div>
            <!-- 본문 내용(sub_contents) 끝 -->
        </div>
        <!-- 본문(section) 끝 -->

        <div class="clear"></div>
    </div sub_wrap>
    <jsp:include page="../inc/admin_bottom.jsp" />
</body>
</html>