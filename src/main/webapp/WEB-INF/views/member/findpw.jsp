<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palet</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/member/mypage.css">
<style type="text/css">
input {
	min-width: 200px;
	max-width: 400px;
}

.divbox {
	text-align: center;
}
.container, .container-fluid, .container-lg, .container-md,
	.container-sm, .container-xl, .container-xxl {
	overflow-x: hidden;
}
</style>
</head>
<body>
	<header>
		<div class="container-fluid"
			style="background-color: white; position: fixed;">
			<div class="container">
				<c:choose>
					<c:when test="${loginEmail =='admin@palet.com'}">
						<div class="row" id="container1">
							<nav class="navbar navbar-expand-md bg-light navbar-light">
								<div class="container" id="navparent" style="overflow: visible;">
									<a class="navbar-brand" href="/" id="container"
										style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>

									<div style="height: 5rem;">
										<button class="navbar-toggler" type="button"
											data-bs-toggle="collapse" style="margin-top: 15px;"
											data-bs-target="#collapsibleNavbar">
											<span class="navbar-toggler-icon"></span>
										</button>
									</div>

									<div class="collapse navbar-collapse justify-content-end"
										id="collapsibleNavbar">
										<ul class="navbar-nav" style="background: white;">
											<li class="nav-item"><a id="About" class="nav-link"
												href="/about" style="padding-left: 0px; padding-right: 0px;">About</a>
											</li>

											<li class="nav-item"><a id="Exhibition" class="nav-link"
												href="/Exhibition/toCurExhibition"
												style="padding-left: 0px; padding-right: 0px;">Exhibition</a>
											</li>

											<li class="nav-item"><a id="Program" class="nav-link"
												href="/program/toProgram"
												style="padding-left: 0px; padding-right: 0px;">Program</a></li>

											<li class="nav-item"><a id="Shop" class="nav-link"
												href="/shop/toShop"
												style="padding-left: 0px; padding-right: 0px;">Shop</a></li>

											<li class="nav-item"> <a id="Logout" class="nav-link logout"
                                       style="padding-left:0px; padding-right:0px;">Logout</a> </li>

											<li class="nav-item"><a id="Admin" class="nav-link"
												href="/admin/adminMain"
												style="padding-left: 0px; padding-right: 0px;">Admin</a></li>

										</ul>
									</div>
								</div>
							</nav>
						</div>
					</c:when>

					<c:when test="${loginEmail != null}">
						<div class="row" id="container1">
							<nav class="navbar navbar-expand-md bg-light navbar-light">
								<div class="container" id="navparent" style="overflow: visible;">
									<a class="navbar-brand" href="/" id="container"
										style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>

									<div style="height: 5rem;">
										<button class="navbar-toggler" type="button"
											data-bs-toggle="collapse" style="margin-top: 15px;"
											data-bs-target="#collapsibleNavbar">
											<span class="navbar-toggler-icon"></span>
										</button>
									</div>

									<div class="collapse navbar-collapse justify-content-end"
										id="collapsibleNavbar">
										<ul class="navbar-nav" style="background: white;">
											<li class="nav-item"><a id="About" class="nav-link"
												href="/about" style="padding-left: 0px; padding-right: 0px;">About</a>
											</li>

											<li class="nav-item"><a id="Exhibition" class="nav-link"
												href="/Exhibition/toCurExhibition"
												style="padding-left: 0px; padding-right: 0px;">Exhibition</a>
											</li>

											<li class="nav-item"><a id="Program" class="nav-link"
												href="/program/toProgram"
												style="padding-left: 0px; padding-right: 0px;">Program</a></li>

											<li class="nav-item"><a id="Shop" class="nav-link"
												href="/shop/toShop"
												style="padding-left: 0px; padding-right: 0px;">Shop</a></li>

											<li class="nav-item"><a id="Cart" class="nav-link"
												href="/cart/cartlist"
												style="padding-left: 0px; padding-right: 0px;">Cart</a></li>

											<li class="nav-item"> <a id="Logout" class="nav-link logout"
                                       style="padding-left:0px; padding-right:0px;">Logout</a> </li>

											<li class="nav-item"><a id="Mypage" class="nav-link"
												href="/mypage/main"
												style="padding-left: 0px; padding-right: 0px;">Mypage</a></li>

										</ul>
									</div>
								</div>
							</nav>
						</div>
					</c:when>

					<c:otherwise>
						<div class="row" id="container1">
							<nav class="navbar navbar-expand-md bg-light navbar-light">
								<div class="container" id="navparent" style="overflow: visible;">
									<a class="navbar-brand" href="/" id="container"
										style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>

									<div style="height: 5rem;">
										<button class="navbar-toggler" type="button"
											data-bs-toggle="collapse" style="margin-top: 15px;"
											data-bs-target="#collapsibleNavbar">
											<span class="navbar-toggler-icon"></span>
										</button>
									</div>

									<div class="collapse navbar-collapse justify-content-end"
										id="collapsibleNavbar">
										<ul class="navbar-nav" style="background: white;">
											<li class="nav-item"><a id="About" class="nav-link"
												href="/about" style="padding-left: 0px; padding-right: 0px;">About</a>
											</li>

											<li class="nav-item"><a id="Exhibition" class="nav-link"
												href="/Exhibition/toCurExhibition"
												style="padding-left: 0px; padding-right: 0px;">Exhibition</a>
											</li>

											<li class="nav-item"><a id="Program" class="nav-link"
												href="/program/toProgram"
												style="padding-left: 0px; padding-right: 0px;">Program</a></li>

											<li class="nav-item"><a id="Shop" class="nav-link"
												href="/shop/toShop"
												style="padding-left: 0px; padding-right: 0px;">Shop</a></li>

											<li class="nav-item"><a id="Login" class="nav-link"
												href="/member/loginPage"
												style="padding-left: 0px; padding-right: 0px;">Login</a></li>

											<li class="nav-item"><a id="Signup" class="nav-link"
												href="/member/join"
												style="padding-left: 0px; padding-right: 0px;">Sign up</a></li>

										</ul>
									</div>
								</div>
							</nav>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</header>
	<div class="container-fluid" style="min-width: 600px;">
		<div class="row" style="padding-top: 100px;">
			<div class="container">
				<div class="row" id="row1">
					<div class="h2">Find Password</div>
				</div>
				<div class="col-12 body2 divbox">
					<input type="text" name="email" id="email"><br> <span
						style="display: none" id="isemialok">올바른 메일주소를 입력해주세요</span>
				</div>
				<div class="col-12 body2 divbox">
					<button type="button" class="btn1" id="send" disabled="disabled"
					style="height: 2.75rem; width: 7.5rem; text-align: center;"
					>메일발송</button>
				</div>
				<div class="col-12 divbox">
					<span id="isidmeailok" style="display: none">아이디 이메일 확인중</span><br>
					<span id="mailok" style="display: none">메일 발송 완료</span><br>
				</div>
				<div class="col-12 body2 divbox">
					<input type="text" id="isok" placeholder="인증번호를 입력해주세요"
						style="display: none"><br> <input type="text"
						id="cord" style="display: none" value="no"> <input
						type="text" id="okok" style="display: none" readonly="readonly"
						value="확인되었습니다."><br>
				</div>
				<div class="col-12 body2 divbox">
					<span id="writepw" style="display: none">비밀번호를 입력해주세요</span><br>
					<input type="password" id="newpw" style="display: none"><br>
					<span id="pwck" style="display: none">비밀번호 확인중</span><br> <input
						type="password" id="newpwck" style="display: none"><br>
					<span id="pwck2" style="display: none">비밀번호 확인중</span><br>
				</div>
				<div class="col-12 body2 divbox">
					<button id="btn2" class="btn1" style="display: none; height: 2.75rem; width: 7.5rem; text-align: center;" disabled
					>비밀번호	적용</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 푸터단 -->

	<div class="row" id="footer">
		<div class="container">
			<div class="row" id="row1">
				<div class="col-12 h3" style="color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
				<div class="col-12 body2" style="color: #637381;">사업자 등록번호 :
					123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div>
				<br>
				<div class="col-12 body2" style="color: #637381;">3호선 경복궁역 지하
					1층 | contact@palet.com</div>

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
		// 테스트
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
         //테스트
    	   
    	   
       },
    	   focusout : function(){
//     		   if($("#newpw").val()==$("#newpwck").val()){
//         		   isPwOk2 = true;   
//         	   }else{
//         		   isPwOk2 = false;
//         	   }
//     		   if (!isPwOk2) {
//             	   $("#newpwck").css("border", "1px solid red");
//             	   $("#pwck2").css("color", "red");
//             	   $("#pwck2").css("display","inline");
//         			$("#pwck2").text(
//         					"비밀번호가 다릅니다.");
//                }
//                if(isPwOk2){
//         		   $("#newpwck").css("border", "1px solid blue");
//         		   $("#pwck2").css("color", "blue");
//             	   $("#pwck2").css("display","inline");
//         			$("#pwck2").text(
//         					"비밀번호가 같습니다.");
//         	   }
//                if(isPwOk2 && isPwOk && inok){
//     			   $("#btn2").removeAttr("disabled");
//     		   }else if((!isPwOk2)||(!isPwOk)||(!inok)){
//     			   $("#btn2").attr("disabled","true");
//     		   }
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
           
           //테스트
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
           //테스트
       },
    	   focusout : function(){
//     		   if(isPwOk2 && isPwOk && inok){
//     			   $("#btn2").removeAttr("disabled");
//     		   }else if((!isPwOk2)||(!isPwOk)||(!idok)){
//     			   $("#btn2").attr("disabled","true");
//     		   }
//     		   if($("#newpw").val()==$("#newpwck").val()){
//         		   isPwOk2 = true;   
//         	   }else{
//         		   isPwOk2 = false;
//         	   }
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
       $(".logout").on("click", function(){
         Kakao.init('feb50c309d28b138aefe9ddc94d76870');
         Kakao.isInitialized();
         if (!Kakao.Auth.getAccessToken()) {
            console.log('Not logged in.');
            location.href="/member/logout";
             return ;
         }
         
          Kakao.Auth.logout(function() {
               console.log(Kakao.Auth.getAccessToken());
               location.href="/member/logout";
             });
         return true;
      });	
	</script>
	<!-- Channel Plugin Scripts -->
<script>
    (function() {
      var w = window;
      if (w.ChannelIO) {
        return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
      }
      var ch = function() {
        ch.c(arguments);
      };
      ch.q = [];
      ch.c = function(args) {
        ch.q.push(args);
      };
      w.ChannelIO = ch;
      function l() {
        if (w.ChannelIOInitialized) {
          return;
        }
        w.ChannelIOInitialized = true;
        var s = document.createElement('script');
        s.type = 'text/javascript';
        s.async = true;
        s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
        s.charset = 'UTF-8';
        var x = document.getElementsByTagName('script')[0];
        x.parentNode.insertBefore(s, x);
      }
      if (document.readyState === 'complete') {
        l();
      } else if (window.attachEvent) {
        window.attachEvent('onload', l);
      } else {
        window.addEventListener('DOMContentLoaded', l, false);
        window.addEventListener('load', l, false);
      }
    })();
    ChannelIO('boot', {
      "pluginKey": "7303e411-f120-4c6c-812a-28e0867beb8a"
    });
  </script>
<!-- End Channel Plugin -->
</body>
</html>