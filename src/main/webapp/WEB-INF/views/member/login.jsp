<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 카카오 공유하기 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<link rel="stylesheet" href="/css/member/login.css">
<style>
.modal{
	posision: absolute;
	width: 100;
	height: 100%;
	background: rgba(0,0,0,0.6);
	top: 0;
	left: 0;
	display: none;
}

.modal_content{
  width:450px; height:250px;
  background:#fff; border-radius:10px;
  position:relative; top:50%; left:50%;
  margin-top:-100px; 
  margin-left:-200px;
  text-align:center;
  box-sizing:border-box; padding:20px 10px;
  line-height:23px; 
}

#modal_header{
	position:relative; 
	top:0; 
	left:0;
}

.link-icon { position: relative; display: inline-block; width: auto;    font-size: 14px; font-weight: 500; color: #333; margin-right: 10px; padding-top: 50px; }
.link-icon.twitter { background-image: url(/images/icon-twitter.png); background-repeat: no-repeat; background-position-x:center;}
.link-icon.facebook { background-image: url(/images/icon-facebook.png); background-repeat: no-repeat; background-position-x:center;} 
.link-icon.kakao { background-image: url(/images/icon-kakao.png); background-repeat: no-repeat; background-position-x:center;}

</style>
</head>
<body>
<div class="container-fluid" id=navparent>
		<div class="container">
			<div class="row" id="container1">
				<nav class="navbar navbar-expand-sm bg-light navbar-light">
					<div class="container" id="navparent">
						<a class="navbar-brand" href="#" id="container"
							style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse justify-content-end"
							id="collapsibleNavbar">
							<ul class="navbar-nav">
								<li class="nav-item"><a id="About" class="nav-link"
									href="#" style="padding-left: 0px; padding-right: 0px;">About</a>
								</li>
								<li class="nav-item"><a id="Exhibition" class="nav-link"
									href="#" style="padding-left: 0px; padding-right: 0px;">Exhibition</a>
								</li>
								<li class="nav-item"><a id="Shop" class="nav-link" href="#"
									style="padding-left: 0px; padding-right: 0px;">Shop</a></li>
								<li class="nav-item"><a id="Help" class="nav-link" href="#"
									style="padding-left: 0px; padding-right: 0px;">Help</a></li>
								<li class="nav-item"><a id="Login" class="nav-link"
									href="/member/loginPage"
									style="padding-left: 0px; padding-right: 0px;">Login</a></li>
								<li class="nav-item"><a id="Signup" class="nav-link"
									href="/member/join"
									style="padding-left: 0px; padding-right: 0px;">Sign up</a></li>
								<li class="nav-item"><a id="Signup" class="nav-link"
									href="/event/participation"
									style="padding-left: 0px; padding-right: 0px;">Event</a></li>
							</ul>
						</div>
					</div>
				</nav>

			</div>

		</div>
	</div>
<c:choose>
	<c:when test="${loginEmail != null }">
		<table border=1 align=center>
			<tr>
				<th>${loginEmail }님 안녕하세요.</th>
			</tr>
			<tr>
				<td><input type="button" id="logout" value="로그아웃">
			</tr>
		</table>
	</c:when>
	<c:otherwise>
	<div class="container-fluid">
		<div class="row" style="padding-top: 150px;">
			<div class="container" style="max-width: 600px;">
				<div class="row">
				<form action="/member/login" method="post">
				<input type="text" name=email placeholder="이메일을 입력하세요"><br>
				<input type="password" name=pw placeholder="비밀번호를 입력하세요"><br>
				<input type="submit" value="login">
				<input type="button" id="join" value="join">
				<input type="button" id="kakao-login-btn" value="카카오로 로그인">
				<input type="button" id="findpw" value="비밀번호찾기">
			</form>
		
			<button id=modalbtn>공유하기</button>
		
			<div class="modal">
				
				<div class="modal_content" title="공유하기">
					<div id="modal_header">
						공유하기<button id="modal_back">X</button>
					</div>
					<hr>
					<a id="btnTwitter" class="link-icon twitter" href="javascript:shareTwitter();">트위터</a>
					<a id="btnFacebook" class="link-icon facebook" href="javascript:shareFacebook();">페이스북</a>    
					<a id="btnKakao" class="link-icon kakao" href="javascript:shareKakao();">카카오</a> <br>
					<input type="text" id="text" value="http://localhost/member/loginPage" readonly/>
					<input type="button" onclick="fn_copy()" value="Copy"/> 
				</div>
			</div>
	</c:otherwise>
</c:choose>
</body>
<script>	
	$("#join").on("click", function(){
		location.href="/member/join";
	})
	$("#findpw").on("click",function(){
		location.href="/member/tofindpw/"
	})
	// SDK를 초기화. 사용할 앱의 JavaScript 키
      	Kakao.init('feb50c309d28b138aefe9ddc94d76870');
	    console.log(Kakao.isInitialized());
	    
	    //item을 localStorage에 저장하는 메소드
	    function saveToDos(token) { 
    		typeof(Storage) !== 'undefined' && sessionStorage.setItem('AccessKEY', JSON.stringify(token)); 
		};
		
	    $("#kakao-login-btn").on("click", function(){
	    	console.log("click");
	    //1. 로그인 시도
	    Kakao.Auth.login({
	        success: function(authObj) {
	         
	          //2. 로그인 성공시, API 호출
	          Kakao.API.request({
	            url: '/v2/user/me',
	            success: function(res) {
 	              console.log(res);
	              let id = res.id;
				  scope : 'profile_nickname, account_email';
	              $.ajax({
	            	    url:"/member/kakaojoin",
	            	    data:{email:res.kakao_account.email,
	            	    	name:res.properties.nickname,
	            	    	token:authObj.access_token},
	            	    type:"POST"
	            	}).done(function(resp){
	            		location.reload();
	            	})
	        	}
	          })
 	          console.log(authObj); //access 토큰 값
			  Kakao.Auth.setAccessToken(authObj.access_token); //access 토큰 값 저장
			  var token = authObj.access_token;
			  saveToDos(token);
	        },
	        fail: function(err) {
	          alert(JSON.stringify(err));
	        }
	      });
	    })
	    
	$("#logout").on("click", function(){
		if (Kakao.Auth.getAccessToken()) {
			Kakao.Auth.logout(function() {
      			alert("로그아웃 되었습니다.");
      			location.href="/member/logout";
   		 	})
		}
		
		location.href="/member/logout";
	})
	
	//공유하기 모달창
	$(function(){
		$("#modalbtn").click(function(){
			$(".modal").fadeIn();
		});
		
		$("#modal_back").click(function(){
			$(".modal").fadeOut();
		});
	})

	// 복사 버튼
	function fn_copy() {
		var url = document.getElementById('text');
		url.select(); // 복사할 text 블럭
		document.execCommand('copy'); // 드레그된 text 클립보드에 복사
	}
	    
	// 트위터 공유하기
	function shareTwitter() {
	    var sendText = "Palet"; // 전달할 텍스트
	    var sendUrl = "http://localhost/member/loginPage"; // 전달할 URL
	    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
	}
	
	// 페이스북 공유하기
	function shareFacebook() {
	    var sendUrl = "http://localhost/member/loginPage"; // 전달할 URL
	    window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
	}
	
	// 카카오톡 공유하기
	function shareKakao() {
 
  // 사용할 앱의 JavaScript 키 설정
  //Kakao.init('feb50c309d28b138aefe9ddc94d76870');
 
  // 카카오링크 버튼 생성
  Kakao.Link.createDefaultButton({
    container: '#btnKakao', // 카카오공유버튼ID
    objectType: 'feed',
    content: {
      title: "Palet", // 보여질 제목
      description: "Palet 전시회 예약하기", // 보여질 설명
      imageUrl: "http://localhost/member/loginPage", // 콘텐츠 URL
      link: {
         mobileWebUrl: "http://localhost/member/loginPage",
         webUrl: "http://localhost/member/loginPage"
      }
    }
  });
}


</script>
</html>