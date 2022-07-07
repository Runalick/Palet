<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Password</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/member/mypage.css">
<style type="text/css">
	input{
		min-width: 400px;
		max-width: 800px;
	}
	.divbox{
		text-align: center;
	}
</style>
</head>
<body>
   <div class="container-fluid" style="min-width: 600px;">
    <div class="row" style="padding-top: 100px;">
	<div class="container">
		<div class="row" id="row1">
			<div class="h2">Find Password</div>
		</div>
	<div class="col-12 body2 divbox">
		<input type="text" name="email" id="email" ><br>
		<span style="display: none" id="isemialok">올바른 메일주소를 입력해주세요</span>
	</div>
	<div class="col-12 body2 divbox">
	<button type="button" class="btn1" id="send" disabled="disabled">메일발송</button>
	</div>
	<div class="col-12 divbox">
	<span id="isidmeailok" style="display: none">아이디 이메일 확인중</span><br>
	<span id="mailok" style="display: none">메일 발송 완료</span><br>
	</div>
	<div class="col-12 body2 divbox">
	<input type="text" id="isok" placeholder="인증번호를 입력해주세요" style="display: none"><br>
	<input type="text" id="cord" style="display: none" value="no">
	<input type="text" id="okok" style="display: none" readonly="readonly" value="확인되었습니다."><br>
    </div>
    <div class="col-12 body2 divbox">
    <span id="writepw" style="display: none">비밀번호를 입력해주세요</span><br>
    <input type="password" id="newpw" style="display: none"><br>
    <span id="pwck" style="display:none">비밀번호 확인중</span><br>
    <input type="password" id="newpwck" style="display: none"><br>
    <span id="pwck2" style="display:none">비밀번호 확인중</span><br>
    </div>
    <div class="col-12 body2 divbox">
    <button id="btn2" class="btn1" style="display: none" disabled>비밀번호 적용</button>
	</div>
	</div>
	</div>
	</div>
	<script>
	$("#email").on("keyup",function(){
		let email = $("#email").val();
		let emailRegex = /^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/;
		let emailResult = emailRegex.test(email);
		if(!emailResult){
			$("#isemialok").css("display","inline");
			$("#isemialok").css("color", "red");
			$("send").attr("disabled","true");
		}
		if(emailResult){
			$("#isemialok").css("display","inline");
			$("#isemialok").text("사용할수 있는 이메일형식 입니다.");
			$("#isemialok").css("color", "blue");
			$("#send").removeAttr("disabled");
		}
		
	})
	
	
	
	
	$("#send").on("click",function(){
   		$("#send").text("메일 발송중");
   		$("#send").attr("disabled","true");
   		$("#isok").css("display","inline");
		$.ajax({
			url:"/mail/sendmail",
			data:{email:$("#email").val()}
		}).done(function(resp){
			$("#send").text("메일 재발송");
			$("#send").removeAttr("disabled");
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
           	$("#btn2").on("click",function(){
       		if($("#newpw").val()==$("#newpwck").val()){
       		$.ajax({
       			url:"/member/findpw",
       			dataType:"json",
       			data:{email:$("#email").val(),
       				pw:$("#newpw").val()
       				}
       		}).done(function(resp){
       			if(resp==1){
       			alert("비밀번호가 변경되었습니다.");
       			location.href="/member/loginPage";
       			}else {
       				alert("입력한 정보를 확인해주세요");
       			}
       		})
       		}
       	})
	</script>
</body>
</html>