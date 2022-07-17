<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Oh Camping</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
   <section class="wrap_login ">
         <div class="wrapper"> 
            <jsp:include page="../inc/oh_camping_top.jsp" />   
         </div>
         <div id="sub_wrap" class="webfont"> 
            <div id="sub_contents">
               	<div id="login_wrap" class="find_pwd">
                  	<h1>비밀번호 찾기</h1>
           			<c:set var="findPwd" value="${findPwd }" />
                    <table class="login_t">
		                <c:if test="${!empty findPwd }">
                            <c:forEach items="${findPwd }" var="dto">
                                <tr>
                                    <td align="center"> 해당하는 아이디의 비밀번호는 ${findPwd } 입니다.</td>
                                </tr>
                            </c:forEach>
                        </c:if>
                        
                        <c:if test="${empty findPwd }">
                            <tr>
                                <td colspan=""><h4>해당하는 비밀번호가 없습니다.</h4></td>
                            </tr>
                        </c:if>
		            </table>
		            <div id="login_menu">
		               <input type="button" value="로그인하기" class="login_b"
		               	onclick="location.href='<%=request.getContextPath() %>/camp_login.do'">
		            </div>
               </div>
            </div sub_contents>
            
            <div class="clear"></div>
         </div sub_wrap>
      </div>
    </section>  
    
    <div class="footer_no_margin">
    	<jsp:include page="../inc/oh_camping_bottom.jsp" />
    </div>
    
</body>
</html>