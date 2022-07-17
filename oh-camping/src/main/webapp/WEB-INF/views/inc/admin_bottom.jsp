<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<!-- 바텀 시작 -->
    <footer class="footer mt-auto py-3 admin_footer">
		<div class="container">    
		    <div class="col-md-4 d-flex align-items-center">
		      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
		        Oh Camping 펜션&글램핑
		      </a>
		      <span class="mb-3 mb-md-0 text-muted">&copy; 2022 Company, Inc</span>
		    </div>
		
		    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
		      <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"/></svg></a></li>
		      <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"/></svg></a></li>
		      <li class="ms-3"><a class="text-muted" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"/></svg></a></li>
		    </ul>
	    </div>
	</footer>
	
	<%
 String strReferer = request.getHeader("referer"); //이전 URL 가져오기
 
 if(strReferer == null){
%>
 <script language="javascript">
  alert("URL을 직접 입력해서 접근하셨습니다.\n정상적인 경로를 통해 다시 접근해 주세요.");
  document.location.href="경로";
 </script>
<%
  return;
 }
%>

</html>