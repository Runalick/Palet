<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>Event</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/css/event/event.css">
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

</head>
<style>
	.exlink{
		transition:0.3s;
	}
	.exlink:hover{
		color:black;
	}
	
	#enjoy:hover{
		background:#161C24;
		color:white;
	}
	#enjoy{
		transition:0.3s;
		border:0px solid black;
	}
	#background-area{
	min-height:37.5rem !important; 
	padding-bottom:43rem;
	}
</style>
<body>
	
	<div class="container-fluid" >
		<div class="container-fluid"
			style="background-color: white; position: fixed;">
			<div class="container">
				<c:choose>
				<c:when test="${loginEmail =='admin@palet.com'}">
				<div class="row" id="container1">
					<nav class="navbar navbar-expand-md bg-light navbar-light">
						<div class="container" id="navparent" style = "overflow:visible;">
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
									<li class="nav-item"> <a id="About" class="nav-link" href="/about"
				                        style="padding-left:0px; padding-right:0px; transition:0.3s;">About</a> </li>
				                        
					                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
					                        style="padding-left:0px; padding-right:0px; transition:0.3s;">Exhibition</a> </li>
					                        
					                <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
					                    style="padding-left:0px; padding-right:0px; transition:0.3s;">Program</a> </li> 
					                    
					                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
					                        style="padding-left:0px; padding-right:0px; transition:0.3s;">Shop</a> </li>
					                        
					                <li class="nav-item"> <a id="Logout" class="nav-link logout" href="#"
                                       style="padding-left:0px; padding-right:0px; transition:0.3s;">Logout</a> </li>
					                        
					                <li class="nav-item"> <a id="Admin" class="nav-link" href="/admin/adminMain"
					                        style="padding-left:0px; padding-right:0px; transition:0.3s;">Admin</a> </li>
								
								</ul>
							</div>
						</div>
					</nav>
				</div>
				</c:when>
				
				<c:when test="${loginEmail != null}">
				<div class="row" id="container1">
					<nav class="navbar navbar-expand-md bg-light navbar-light">
						<div class="container" id="navparent" style = "overflow:visible;">
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
									<li class="nav-item"> <a id="About" class="nav-link" href="/about"
			                        style="padding-left:0px; padding-right:0px; transition:0.3s;">About</a> </li>
			                        
					                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
					                        style="padding-left:0px; padding-right:0px; transition:0.3s;">Exhibition</a> </li>
					                        
					                <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
					                    style="padding-left:0px; padding-right:0px; transition:0.3s;">Program</a> </li> 
					                    
					                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
					                        style="padding-left:0px; padding-right:0px; transition:0.3s;">Shop</a> </li>
					                        
					                <li class="nav-item"> <a id="Cart" class="nav-link" href="/cart/cartlist"
						                        style="padding-left:0px; padding-right:0px; transition:0.3s;">Cart</a> </li>
						                        
					                <li class="nav-item"> <a id="Logout" class="nav-link logout" href="#"
                                       style="padding-left:0px; padding-right:0px; transition:0.3s;">Logout</a> </li>
					                        
					                <li class="nav-item"> <a id="Mypage" class="nav-link" href="/mypage/main"
					                        style="padding-left:0px; padding-right:0px; transition:0.3s;">Mypage</a> </li>
								
								</ul>
							</div>
						</div>
					</nav>
				</div>
				</c:when>
				
				<c:otherwise>
				<div class="row" id="container1">
					<nav class="navbar navbar-expand-md bg-light navbar-light">
						<div class="container" id="navparent" style = "overflow:visible;">
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
										href="/about" style="padding-left: 0px; padding-right: 0px; transition:0.3s;">About</a>
									</li>
								
					                <li class="nav-item"> <a id="Exhibition" class="nav-link" 
					                href="/Exhibition/toCurExhibition"
					                    style="padding-left:0px; padding-right:0px; transition:0.3s;">Exhibition</a> </li>
					                    
					                <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
					                    style="padding-left:0px; padding-right:0px; transition:0.3s;">Program</a> </li> 
					                           
					                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
					                    style="padding-left:0px; padding-right:0px; transition:0.3s;">Shop</a> </li>
					                    
					                <li class="nav-item"> <a id="Login" class="nav-link" href="/member/loginPage"
					                    style="padding-left:0px; padding-right:0px; transition:0.3s;">Login</a> </li>
					                    
					                <li class="nav-item"> <a id="Signup" class="nav-link" href="/member/join"
					                    style="padding-left:0px; padding-right:0px; transition:0.3s;">Sign up</a> </li>
								
								</ul>
							</div>
						</div>
					</nav>
				</div>
				</c:otherwise>
				
				
				
				
				</c:choose>
			</div>

		</div>
		<div class="container">
			<div class="row" style="padding-top: 70px; margin-bottom:3rem; ">
				<div class="col-4 h2 d-none d-sm-block"
					style="margin-top: 4rem; text-align: left;">Program</div>
				<ul class="col-8 ul2 h3 d-none d-sm-block"
					style="text-align: right; margin-top: 60px; line-height: 2.688rem; padding-right: 2.4rem; padding-left: 0px;">
					
					<li style="width: 4.938rem; margin-left: 5.2rem;">이벤트</li>
					<li style="width: 4.938rem; color: #919EAB; margin-left: 5.2rem;">
					<a class="exlink" href="/program/toProgram">어린이</a></li>

				</ul>
			</div>
		
			<div class="row ">
				<div class="col-12 h2 d-block d-sm-none"
					style="margin-top: 2.5rem; text-align: center;">Program</div>
				<ul class="col-12 ul2_1 h3 d-block d-sm-none "
					style="text-align: center; margin-top: 2.5rem; line-height: 2.688rem; margin:auto;'">
					
					<li style="width: 4.938rem; color: #919EAB;">
					<a class="exlink" href="/program/toProgram">어린이</a></li>
<li style="width: 4.938rem;">이벤트</li>
				</ul>
			</div>
	
		</div>
		<div class="row" id="background-area">
			 <div class="container">
                <div class="row" id="row1">
                	<div class="col-12 h1" style="margin-top : 8rem;">오늘의 상상일기</div>
                	<div class="col-12 h2_1">: 평범한 오늘이 특별하게 변하는 시간.</div>
                	<div class="col-12 body1" style="margin-top : 3.5rem;">본 이벤트는 1계정 당 1번만 참여 가능합니다.<br>
                	그림은 관리자 승인 후 업데이트 됩니다.<br>
                	이벤트 참여 시 추첨을 통해 Palet의 할인 쿠폰을 지급해드립니다.</div> 
                	<div class="col-12" style="margin-top : 3.5rem;"><button class="btn2" id="enjoy">참여하기</button></div>
                </div>
             </div>
             		<div class="row" style="padding-top: 50px; padding-bottom: 50px;" id="container">
			
					</div>	
		</div>

		<div class="row" id="footer" style="margin-top: 12.5rem;">
			<div class="container">
				<div class="row">
					<div class="col-12 h3" style="color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
					<div class="col-12 body2" style="color: #637381;">사업자 등록번호 :
						123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div>
					<br>
					<div class="col-12 body2"
						style="color: #637381;">3호선 경복궁역 지하
						1층 | contact@palet.com</div>

				</div>
			</div>
		</div>
	</div>



</body>
<script>
	$("#enjoy").on("click", function(){
		location.href="/event/participation";
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


</html>
