<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Password</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
	<input type="text" name="email" id="email"><br>
	<button type="button" id="send">메일발송</button>
	<span id="isidmeailok" style="display: none">아이디 이메일 확인중</span><br>
	<span id="mailok" style="display: none">메일 발송 완료</span><br>
	<input type="text" id="isok" placeholder="인증번호를 입력해주세요" style="display: none"><br>
	<input type="text" id="cord" style="display: none" value="no">
	<input type="text" id="okok" style="display: none" readonly="readonly" value="확인되었습니다."><br>
       <span id="writepw" style="display: none">비밀번호를 입력해주세요</span><br>
       <input type="password" id="newpw" style="display: none"><br>
       <span id="pwck" style="display:none">비밀번호 확인중</span><br>
       <input type="password" id="newpwck" style="display: none"><br>
       <span id="pwck2" style="display:none">비밀번호 확인중</span><br>
       <button id="btn2" style="display: none" disabled>비밀번호 적용</button>
	<script type="text/javascript">
	
	$("#send").on("click",function(){
   		$("#send").text("메일 발송중");
   		$("#send").attr("disabled","true");
   		$("#isok").css("display","inline");
		$.ajax({
			url:"/mail/sendmail",
			data:{email:$("#email").val()}
		}).done(function(resp){
			$("#send").text("메일 재발송");
			$("#btn").removeAttr("disabled");
			$("#mailok").css("display","inline");
			console.log(resp);
			$("#cord").val(resp);
		})
	})
	let inok = false; // 메일 인증확인
	
		$("#isok").on("keyup",function(){
			let isokchange = "\""+$("#isok").val()+"\""
   			if($("#cord").val()==isokchange){
   				$("#okok").css("display","inline");
       			$("#newpw").css("display","inline");
       			$("#newpwck").css("display","inline");
       			$("#btn2").css("display","inline");
       			$("#writepw").css("display","inline");
       			$("#okok").val("인증되었습니다.");
       			inok = true;
   			}else if(!($("#cord").val()==isokchange)){
   				$("#okok").css("display","inline");
   				$("#okok").val("인증번호를 확인해주세요.");
   				inok = false;
   			}
   		})
   		
   	let isPwOk = false;
    let isPwOk2 = false;
    // 비밀번호 확인
           $("#newpw").on({keyup:function(){
    	   let pw = $("#newpw").val();
           let pwRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$/gm;
           let pwResult = pwRegex.test(pw);
           
    	   if (!pwResult) {
        	   $("#newpw").css("border", "1px solid red");
        	   $("#pwck").css("color", "red");
        	   $("#pwck").css("display","inline");
    			$("#pwck").text(
    					"영문 소문자, 대문자, 숫자를 조합하여 8~12자로 작성");
    			isPwOk = false;
           }
    	   if(pwResult){
    		   $("#newpw").css("border", "1px solid blue");
    		   $("#pwck").css("color", "blue");
        	   $("#pwck").css("display","inline");
    			$("#pwck").text(
    					"사용할수 있는 비밀번호 입니다.");
    		   isPwOk = true;
    	   }
       },
    	   focusout : function(){
    		   if($("#newpw").val()==$("#newpwck").val()){
        		   isPwOk2 = true;   
        	   }else{
        		   isPwOk2 = false;
        	   }
    		   if (!isPwOk2) {
            	   $("#newpwck").css("border", "1px solid red");
            	   $("#pwck2").css("color", "red");
            	   $("#pwck2").css("display","inline");
        			$("#pwck2").text(
        					"비밀번호가 다릅니다.");
               }
               if(isPwOk2){
        		   $("#newpwck").css("border", "1px solid blue");
        		   $("#pwck2").css("color", "blue");
            	   $("#pwck2").css("display","inline");
        			$("#pwck2").text(
        					"비밀번호가 같습니다.");
        	   }
               if(isPwOk2 && isPwOk && inok){
    			   $("#btn2").removeAttr("disabled");
    		   }else if((!isPwOk2)||(!isPwOk)||(!inok)){
    			   $("#btn2").attr("disabled","true");
    		   }
    	   }
       
       })
       $("#newpwck").on({keyup:function(){
    	   
    	   if($("#newpw").val()==$("#newpwck").val()){
    		   isPwOk2 = true;   
    	   }else{
    		   isPwOk2 = false;
    	   }
           if (!isPwOk2) {
        	   $("#newpwck").css("border", "1px solid red");
        	   $("#pwck2").css("color", "red");
        	   $("#pwck2").css("display","inline");
    			$("#pwck2").text(
    					"비밀번호가 다릅니다.");
           }
           if(isPwOk2){
    		   $("#newpwck").css("border", "1px solid blue");
    		   $("#pwck2").css("color", "blue");
        	   $("#pwck2").css("display","inline");
    			$("#pwck2").text(
    					"비밀번호가 같습니다.");
    	   }
       },
    	   focusout : function(){
    		   if(isPwOk2 && isPwOk && inok){
    			   $("#btn2").removeAttr("disabled");
    		   }else if((!isPwOk2)||(!isPwOk)||(!idok)){
    			   $("#btn2").attr("disabled","true");
    		   }
    		   if($("#newpw").val()==$("#newpwck").val()){
        		   isPwOk2 = true;   
        	   }else{
        		   isPwOk2 = false;
        	   }
    	   }
       
       })
    
	</script>
</body>
</html>