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
<!--  -->
<script type="text/javascript">
   $(function() {
      $("#mem_id").keyup(function(){
         let mem_id = $("#mem_id").val();
         
         // 입력 길이 체크
         if($.trim($("#mem_id").val()).length < 4) {
            let warningTxt = '<span style="color:pink"> ! 아이디는 4자 이상이어야 합니다</span>';
            $("#idcheck").text(''); // idcheck영역()
            $("#idcheck").show();
            $("#idcheck").append(warningTxt);
            return false;
         }else if ($.trim($("#mem_id").val()).length > 16) {
            let warningTxt = '<span style="color:pink;"> ! 아이디는 16자 이하이어야 합니다</span>';
            $("#idcheck").text(''); // idcheck영역()
            $("#idcheck").show();
            $("#idcheck").append(warningTxt);
            $("#mem_id").val('').focus();
            return false;
         }else {
            $("#idcheck").text('')
         }
         
      });
   });
</script>
<script type="text/javascript">
        // 회원가입 화면의 입력값들을 검사한다.
        function checkValue()
        {
            var form = document.userInfo;
        
            if(!form.mem_id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            
            if(form.mem_idDuplication.value != "idCheck"){
                alert("아이디 중복체크를 해주세요.");
                return false;
            }
            
            if(!form.mem_pwd.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
            
            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
            if(form.mem_pwd.value != form.mem_pwd_check.value ){
                alert("비밀번호를 동일하게 입력하세요.");
                return false;
            }    
            
            if(!form.mem_name.value){
                alert("이름을 입력하세요.");
                return false;
            }
            
            
            if(!form.mem_email.value){
                alert("메일 주소를 입력하세요.");
                return false;
            }
            
            if(!form.mem_phone1.value){
                alert("전화번호를 입력하세요.");
                return false;
            }
            if(isNaN(form.mem_phone1.value)){
                alert("숫자만 입력가능합니다.");
                return false;
            }
            
            if(!form.mem_phone2.value){
                alert("전화번호를 입력하세요.");
                return false;
            }
            if(isNaN(form.mem_phone2.value)){
                alert("숫자만 입력가능합니다.");
                return false;
            }
            
            if(!form.mem_phone3.value){
                alert("전화번호를 입력하세요.");
                return false;
            }
            if(isNaN(form.mem_phone3.value)){
                alert("숫자만 입력가능합니다.");
                return false;
            }

        }
 
        // 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
        // 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
        // 다시 중복체크를 하도록 한다.
        function inputIdChk(){
            document.userInfo.idDuplication.value ="idUncheck";
        }
        
   </script>
   <script type="text/javascript">
        var httpRequest = null;
        
        // httpRequest 객체 생성
        function getXMLHttpRequest(){
            var httpRequest = null;
        
            if(window.ActiveXObject){
                try{
                    httpRequest = new ActiveXObject("Msxml2.XMLHTTP");    
                } catch(e) {
                    try{
                        httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
                    } catch (e2) { httpRequest = null; }
                }
            }
            else if(window.XMLHttpRequest){
                httpRequest = new window.XMLHttpRequest();
            }
            return httpRequest;    
        }
        
        // 아이디 중복체크
        function idCheck(){
            var id = document.getElementById("mem_id").value;
 
            if (!id) {
                alert("아이디를 입력하지 않았습니다.");
                return false;
            } 

            else
            {
                var param="id="+id
                httpRequest = getXMLHttpRequest();
                httpRequest.onreadystatechange = callback;
                httpRequest.open("POST", "member_id_check.do", true);    
                httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
                httpRequest.send(param);
            }
        }
        
        function callback(){
            if(httpRequest.readyState == 4){
                // 결과값을 가져온다.
                var resultText = httpRequest.responseText;
                if(resultText != 0){
                    alert("중복된 아이디입니다.");
                    document.getElementById("idcheck").innerHTML ="다른 아이디를 입력해주세요";
                    document.getElementById("idcheck").style.visibility='visible';
                } 
                else if(resultText == 0){ 
                    document.getElementById("idcheck").innerHTML = "사용 가능한 아이디입니다.";
                  document.getElementById("idcheck").style.visibility='visible';
                }
            }
        }  
   </script>

</head>
<body>
   <section class="wrap_login ">
         <div class="wrapper"> 
            <jsp:include page="../inc/oh_camping_top.jsp" />   
         </div>
         <div id="sub_wrap" class="webfont">
            <div id="sub_contents">
               <div id="login_wrap">
                  <h1>회원가입</h1>
                  <form method="post" name="userInfo" onsubmit="return checkValue()" 
                        action="<%=request.getContextPath() %>/camp_join_ok.do">
                     <table class="login_t">
                        <tr>
                           <td> 
                               <div class="fl_w">
                                  <input class="input_box2" name="mem_id" id="mem_id" onkeydown="inputIdChk()" placeholder="아이디">
                                  <input type="button" class="input_btn" value="중복확인" onclick="idCheck()"> 
                               </div>
                               <input type="hidden" name="idDuplication" value="idUncheck" >
                               <p id="idcheck"></p>
                                
                           </td>
                        </tr>
                        
                        <tr>
                           <td> <input type="password" class="input_box" name="mem_pwd" placeholder="비밀번호"> </td>
                        </tr>
                        <tr>
                           <td> <input type="password" class="input_box" name="mem_pwd_check" placeholder="비밀번호 확인"> </td>
                        </tr>
                        <tr>
                           <td> <input class="input_box" name="mem_name" placeholder="이름"> </td>
                        </tr>
                        <tr>
                           <td class="">
                               <input class="input_border" name="mem_phone1" placeholder="연락처(010)" size="6">
                               -
                               <input class="input_border" name="mem_phone2" placeholder="" size="7">
                               -
                               <input class="input_border" name="mem_phone3" placeholder="" size="7">
                           </td>
                        </tr>
                        <tr>
                           <td> <input class="input_box" name="mem_email" placeholder="이메일"> </td>
                        </tr>
                        
                     </table>
                     <div id="login_menu">
                        <input type="submit" value="동의하고 가입하기" class="login_b submit_b">
                        <hr class="lm_line">
                        <input type="button" value="로그인" class="join_b" 
			               	onclick="location.href='<%=request.getContextPath() %>/camp_login.do'" >
                     </div>
                  </form>

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