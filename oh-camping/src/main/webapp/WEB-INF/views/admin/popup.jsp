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
	function move_modify()
	{
		var obj = document.popup.elements['plist'];
		var idx;
		var len = obj.length;
		var j = 0;

		if(len > 0)
		{
			for(i=0; i<len; i++)
			{
				if(obj[i].checked == true)
				{
					j++;
					idx = obj[i].value;
				}
			}
		}
		else
		{
			if(obj.checked == true)
			{
				j = 1;
				idx = obj.value;
			}
		}

		if(j == 0 ) alert('수정할 팝업리스트를 선택하세요.');
		else if(j > 1) alert('수정할 팝업리스트는 하나만 선택하세요.');
		else location.href = 'admin_popup_modify.do?page=${paging.page }&no=' + idx;
	
	}

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
	function move_delete(){
		var url = '<%=request.getContextPath() %>/admin_popup_delete.do';    // Controller로 보내고자 하는 URL (.dh부분은 자신이 설정한 값으로 변경해야됨)
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
			var chk = confirm("삭제하면 기존 데이터도 함께 삭제됩니다. \n추후 데이터의 복구가 불가능합니다. \n그래도 삭제하시겠습니까?");				 
			$.ajax({
			    url : url,                    // 전송 URL
			    type : 'POST',                // GET or POST 방식
			    traditional : true,
			    data : {
			    	valueArr : valueArr        // 보내고자 하는 data 변수 설정
			    },
                success: function(jdata){
                    if(jdata = 1) {
                        alert("팝업이 삭제되었습니다.");
                        location.replace("admin_popup.do")
                    }
                    else{
                        alert("팝업을 삭제하지 못했습니다. 관리자에게 문의하세요");
                    }
                }
			});
		}
	}
</script>
<!-- 라이트박스 -->
<link href="<%=request.getContextPath() %>/resources/dist/css/lightbox.min.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/resources/dist/js/lightbox.min.js" type="text/javascript"></script>
</head>
<body class="d-flex flex-column h-100">
    
    <jsp:include page="../inc/admin_top.jsp" /> 
    <c:set var="list" value="${PopupList }" />
	<c:set var="paging" value="${Paging }" /> 
    <div id="admin_wrap" class="container webfont">
        <!-- 왼쪽 메뉴 -->
        <div id="aside">
            <div class="leftmenu">
                <h3 id="left_menu_head">팝업관리</h3>
                <ul class="left_menu_ul">
                    <li class="nav_on">
                        <a href="<%=request.getContextPath() %>/admin_popup.do">
                            <i class="fa fa-caret-right"></i> 팝업리스트
                        </a>
                    </li>                  
                    <li>
                        <a href="<%=request.getContextPath() %>/admin_popup_insert.do?page=${paging.page }">
                            <i class="fa fa-caret-right"></i> 팝업등록
                        </a>
                    <li>
                </ul>
            </div>
        </div>
        <!-- // 왼쪽 메뉴 -->
                
        <!-- 본문 -->
        <div id="section">
            <!-- 본문 타이틀 -->
            <h3 class="admin_title">팝업 리스트 <span class="sub_title2">Pop-up</span></h3>

            <!-- 본문 내용 시작 -->
            <div id="sub_contents">        
                <div id="table_wrap">
                	<form name='popup' method='post' action="">
	                    <table cellspacing="0" width="100%">
	                        <tr>
	                        	<th><input type="checkbox" name="all_plist" onclick="all_select()"></th>
	                            <th>번호</th>
	                            <th>등록일</th>
	                            <th>제목</th>
	                            <th>사용여부</th>
	                            <th>사용정보</th>
	                        </tr>
	            
	                        
	                        
	                        <c:if test="${!empty list }">
	                            
	                            <c:forEach items="${list }" var="i">
	                                <tr>
	                                	<td> <input type='checkbox' name='plist' value='${i.popup_no }'> </td>
	                                    <td> ${i.popup_no } </td>
	                                    <td> ${i.popup_date.substring(0,10) } </td>
	                                    <td> ${i.popup_title } </td>
	                                    <td> 
	                                        <c:if test="${i.popup_use eq 1 }">
	                                            	사용
	                                        </c:if>
	                                        <c:if test="${i.popup_use eq 0 }">
	                                            	사용안함
	                                        </c:if>
	                                    </td>
	                                    <td> 
	                                    	<a class="example-image-link" 
	                                    		href="<%=request.getContextPath() %>/resources/img/pop/${i.popup_file }" data-lightbox="example-1" 
	                                    			data-title="${i.popup_title }">
							                    	보기
							                </a>
	                                    </td>
	                                </tr>
	                            </c:forEach>
	                        </c:if>
	                        
	                        <c:if test="${empty list }">
	                            <tr>
	                                <td colspan="6"><h4>게시글이 없습니다.</h4></td>
	                            </tr>
	                        </c:if>
	                   
	                    </table>
        			</form>
                    <div class="ext_paging" style="margin-top: 20px;">
                        <%-- 페이징 처리 부분 --%>
                        <c:if test="${paging.getPage() > paging.getBlock() }">
                            <a href="camp_notice.do?page=1">◀◀</a>
                            <a href="camp_notice.do?page=${paging.getStartBlock() - 1 }"> &lt;<span class="page_s">이전</span> | </a>&nbsp;
                        </c:if>
                       
                        <c:forEach begin="${paging.getStartBlock() }"
                                            end="${paging.getEndBlock() }" var="i">
                            <c:if test="${i == paging.getPage() }">
                                <b> <a href="camp_notice.do?page=${i }">[${i }]</a></b>
                            </c:if>
                       
                            <c:if test="${i != paging.getPage() }">
                                <a href="camp_notice.do?page=${i }">[${i }]</a>
                            </c:if>
                        </c:forEach>
                
                        <c:if test="${paging.getEndBlock() < paging.getAllPage() }">&nbsp;
                            <a href="camp_notice.do?page=${paging.getEndBlock() + 1 }"> | <span class="page_s">다음</span>&gt; </a>
                            <a href="camp_notice.do?page=${paging.getAllPage() }">▶▶</a>
                        </c:if>
                    </div>
                    
                    <%-- 아래 버튼 부분 --%>
                    <div class="pop_bottom_btn">
						<input type="button" value="등록하기" class="bt_a32 tmb22" 
							onclick="location.href='admin_popup_insert.do?page=${paging.page }'">
						<input type="button" value="수정하기" class="bt_a32 tmb22" onclick="move_modify();">
						<input type="button" value="삭제하기" class="bt_a32 tmb22" onclick="move_delete();">
                        
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