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
<c:choose>
	<c:when test="${loginEmail =='admin@palet.com'}">
	<div class="container-fluid">
		<nav class="navbar navbar-expand-md bg-light navbar-light" id="navparent">
	        
	        <div class="container" style="padding: 10px;">
	          <a class="navbar-brand" href="#"><img src="/images/Logo.svg" border=0></a>
	          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	            <span class="navbar-toggler-icon"></span>
	          </button>
	          <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
	            <ul class="navbar-nav">
	                <li class="nav-item"> <a id="About" class="nav-link" href="about"
	                        style="padding-left:0px; padding-right:0px;">About</a> </li>
	                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
	                        style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
	                <li class="nav-item"> <a id="Class" class="nav-link" href="/event/eventPage"
                        style="padding-left:0px; padding-right:0px;">Class</a> </li> 
	                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
	                        style="padding-left:0px; padding-right:0px;">Shop</a> </li>
	                <li class="nav-item"> <a id="Cart" class="nav-link" href="/cart/cartlist"
	                        style="padding-left:0px; padding-right:0px;">Cart</a> </li>
	                <li class="nav-item"> <a id="Logout" class="nav-link" href="/member/loginPage" onclick="return logout();"
	                        style="padding-left:0px; padding-right:0px;">Logout</a> </li>
	                <li class="nav-item"> <a id="Admin" class="nav-link" href="/admin/adminMain"
	                        style="padding-left:0px; padding-right:0px;">Admin</a> </li>
	            </ul>
	          </div>
	        </div>
	      </nav>
	</div>
	</c:when>
	
	<c:when test="${loginEmail != null}">
	<div class="container-fluid">
		<nav class="navbar navbar-expand-md bg-light navbar-light" id="navparent">
        <div class="container" style="padding: 10px;">
          <a class="navbar-brand" href="#"><img src="/images/Logo.svg" border=0></a>
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"> <a id="About" class="nav-link" href="about"
                        style="padding-left:0px; padding-right:0px;">About</a> </li>
                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
                        style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
                <li class="nav-item"> <a id="Class" class="nav-link" href="/event/eventPage"
                        style="padding-left:0px; padding-right:0px;">Class</a> </li> 
                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
                        style="padding-left:0px; padding-right:0px;">Shop</a> </li>
                <li class="nav-item"> <a id="Logout" class="nav-link" href="/member/loginPage" onclick="return logout();"
                        style="padding-left:0px; padding-right:0px;">Logout</a> </li>
                <li class="nav-item"> <a id="Mypage" class="nav-link" href="/member/mypage"
                        style="padding-left:0px; padding-right:0px;">mypage</a> </li>	
            </ul>
          </div>
        </div>
      </nav>
    </div>
	</c:when>
	
	<c:otherwise>
	<div class="container-fluid">
    	<nav class="navbar navbar-expand-md bg-light navbar-light" id="navparent">
        <div class="container" style="padding: 10px;">
        	<a class="navbar-brand" href="#"><img src="/images/Logo.svg" border=0></a>
          	<button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            	<span class="navbar-toggler-icon"></span>
          	</button>
          	<div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            	<ul class="navbar-nav">
                	<li class="nav-item"> <a id="About" class="nav-link" href="about"
                        style="padding-left:0px; padding-right:0px;">About</a> </li>
                	<li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
                        style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
                	<li class="nav-item"> <a id="Class" class="nav-link" href="/event/eventPage"
                        style="padding-left:0px; padding-right:0px;">Class</a> </li>        
                	<li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
                        style="padding-left:0px; padding-right:0px;">Shop</a> </li>
                	<li class="nav-item"> <a id="Login" class="nav-link" href="/member/loginPage"
                        style="padding-left:0px; padding-right:0px;">Login</a> </li>
                	<li class="nav-item"> <a id="Signup" class="nav-link" href="/member/join"
                        style="padding-left:0px; padding-right:0px;">Sign up</a> </li>
            	</ul>
          	</div>
        </div>
    	</nav>
     </div>
     </c:otherwise>
</c:choose>
    
<%-- <c:choose>
	<c:when test="${loginEmail != null }">
	<div class="container-fluid">
		<div class="row" style="padding-top: 150px;">
			<div class="container" style="max-width: 400px;">
				<div class="row" id="row1">
					<div class="col-12">${loginEmail }님 안녕하세요.</div>
					<div class="col-12"><input type="button" id="logout" value="로그아웃"></div>
				</div>
			</div>
		</div>
	</div>
	</c:when>
			
	
	<c:otherwise> --%>
	<div class="container-fluid">
		<div class="row" style="padding-top: 150px;">
			<div class="container" style="max-width: 400px;">
				<div class="row" id="row1">
					<div class="h2" style="padding-bottom: 30px;">Login</div>
				</div>
				<div class="row">
					<!-- <form action="/member/login" method="post">  -->
						<div class="col">
							<div class="row"> 
								<div class="col-12 p-0 body2">이메일 아이디</div>
								<div class="col-12 p-0"><input type="text" id=email placeholder="이메일 아이디를 입력하세요"></div>
								<div class="col-7 p-0 body2">비밀번호</div>
								<div class="col-5 p-0 body2" style="text-align:right;"><a id="findpw">비밀번호를 잊으셨나요?</a></div> 
								<div class="col-12 p-0"><input type="password" id=pw placeholder="비밀번호를 입력하세요"></div>
							</div>
							<div class="row">
								<div class="col-12 p-0"><input type="submit" class="btn2" id="login" value="로그인"></div>
								<div class="col-12 p-0"><input type="button" class="btn2" id="join" value="아직 회원이 아니신가요? 가입하기"></div>
							</div>
							<div class="row" style="padding-top: 20px;">
								<div class="col-12 p-0 body2" align=center>소셜 계정으로 로그인</div>
								<div class="col-12 p-0" align=center>
								<button id="kakao-login-btn" class="p-0"><img src="/images/kakao_login.png"></button>
							</div>
						</div>
					<!-- <form> -->
				</div>
			</div>
		</div>
	</div>
		
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
<%-- 	</c:otherwise>
</c:choose> --%>
</body>
<script>	
	$("#login").on("click", function(){
		$.ajax({
			url : "/member/login",
			data:{email:$("#email").val(), pw:$("#pw").val()},
    	    type:"POST"
		}).done(function(resp){
			console.log(resp);
			if(resp == true){
				location.href="/";
			} else {
				alert("올바르지 않은 아이디 혹은 비밀번호 입니다.");
				location.reload();
			}
		})
	})

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
	            		location.href="/";
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
	          location.reload();
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