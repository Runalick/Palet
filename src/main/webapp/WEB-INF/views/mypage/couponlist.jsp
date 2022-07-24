<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palet</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<!-- 지도api -->
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<style>
@charset "UTF-8";

@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);


@media ( min-width : 375px) {
	.container {
		max-width: 1280px;
	}html{
		font-size: 12px;
	}
}
@media ( min-width : 1280px) {
	.container {
		max-width: 1280px;
	}
	html {
		font-size: 16px;
	}
}

* {
	box-sizing: border-box;
}

.container-fluid {
	padding: 0px;
}

.navbar-brand {
	margin: 0px;
	padding: 0px;
	height: 1.875rem;
}

.navbar-nav>li {
	text-align: right;
	background: white;
	padding-top: 1rem;
	padding-bottom: 1rem;
}

.navbar {
	height: 5rem;
	padding: 0px;
}

#navparent {
	position: fixed;
	font-size: 0;
	padding-left: 2.5rem;
	padding-right: 2.5rem;
	height: 5rem;
	background-color: white;
}


.nav-item {
 margin: auto;

		padding-left: 33px;
}


/*         오른쪽 여백 없애기
		.container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl{
			overflow: hidden;
		}
		
		.overflow-auto{
			overflow: hidden;
		} */
.row>div {
	padding-left: 2.5rem;
	padding-right: 2.5rem;
}

.nav-link {
	padding: 0px;
	padding-right: 0px;
	padding-left: 0px;
	width: 3.625rem;
	height: 1.5rem;
	/* Button/Button1 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	/* Gray/500 */
	color: #919EAB;
	/* Inside auto layout */
	flex: none;
	order: 0;
	flex-grow: 0;
}
#row1>div {
	padding-left: 0px;
	padding-right: 0px;
}
#Exhibition {
	width: 5.938rem;
	height: 1.5rem;
}

#Mypage {
	width: 5rem;
	height: 1.5rem;
}

#Logout {
	width: 4.5rem;
	height: 1.5rem;
}

#Program {
	width: 5.5rem;
	height: 1.5rem;
}


#Shop, #Login {
	width: 3.313rem;
	height: 1.5rem;
}


#Cart {
	width: 3rem;
	height: 1.5rem;
}


#Signup {
	width: 4.438rem;
	height: 1.5rem;
}

.H2 {
	/* Headline/H2 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 2.25rem;
	line-height: 2.688rem;
}

.body1 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.25rem;
	line-height: 1.875rem;
}

.H3 {
	margin-bottom: 0.75rem;
	display: inline-block;
	/* Headline/H3 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	display: inline-block;
}

.H1 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 3.438rem;
	line-height: 3.75rem;
}
/* <옵션 내용 */
.h4 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1rem;
	line-height: 1.875rem;
	display: inline-block;
}

.H4{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1rem;
	line-height: 1.875rem;
}

.H5 {
	font-family: 'Spoqa Han Sans Neo';
	padding-bottom: 1.2rem;
	font-size: 1.625rem;
	font-weight: 700;
	line-height: 1.875rem;
}

.body2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;;
	line-height: 1.75rem;
}
/* footer */
#footer {
	background: #F4F6F8;
	height: 13.25rem;
}

<!--
-->
#mypage-area {
	position: absolute;
	left: 0rem;
	top: 5rem;
	margin: auto;
	border-radius: 0px;
	/* Rectangle 7 */
	box-sizing: border-box;
	background: #FFFFFF;
	/* Gray/300 */
}

@media ( min-width : 992px) {
	.content {
		width: calc(100% - 13.625rem);
	}
	.navi {
		width: 11.875rem;
		padding: 0rem;
		display: block;
	}
	.body3 {
		font-family: 'Spoqa Han Sans Neo';
		font-style: normal;
		font-weight: 400;
		font-size: 1rem;;
		line-height: 1.75rem;
	}
	.body4 {
		font-family: 'Spoqa Han Sans Neo';
		font-style: normal;
		font-weight: 400;
		font-size: 1.25rem;
		line-height: 1.875rem;
	}
}

@media ( max-width : 991px) {
	.main {
		display: none;
	}
	.navi-menu {
		display: none;
	}
	.content {
		width: calc(100% - 1.625rem);
	}
	.navi {
		padding: 0rem;
	}
	.body3 {
		font-size: 1.625rem;
	}
	.body4 {
		font-size: 1.875rem;
	}
}

/* 네비 */
.content {
	margin-left: 1.75rem;
}

.mypage-wrap {
	margin: 4.625rem auto 9.375rem;
}

body li {
	list-style-type: none;
}

body ul {
	padding: 0px;
}

body a {
	text-decoration: none;
}

.menu-title {
	display: block;
	color: black;
	border-bottom: 1px solid black;
	padding: 1rem;
}

li div {
	background: #212B36;
	color: white;
	padding: 0.125rem 1rem;
}

.navi-ul li ul li a {
	color: #919EAB;
}

.navi-ul li ul li a:hover {
	color: #212B36;
	font-weight: 700;
}

.small-navi {
	margin: 1.25rem 0rem;
}

#select {
	width: 100%;
	border: 0px;
	background: url('/images/downarrow.png') no-repeat 97% 50%/15px auto;
	background-size: 01.596rem;
	text-align: left;
}

.body3 a {
	display: block;
	padding: 0.3rem 1rem;
}

.active{
	background-color:black;
	color:white;
}

button {
	background-color:white;
	border:1px solid #DFE3E8;
}

.container, .container-fluid, .container-lg, .container-md,
	.container-sm, .container-xl, .container-xxl {
	overflow-x: hidden;
}

</style>
</head>
<body>
		<div class="container-fluid" >
			<div class="container-fluid"
			style="background-color: white;">
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
				                        style="padding-left:0px; padding-right:0px;">About</a> </li>
				                        
					                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
					                        style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
					                        
					                <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
					                    style="padding-left:0px; padding-right:0px;">Program</a> </li> 
					                    
					                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
					                        style="padding-left:0px; padding-right:0px;">Shop</a> </li>
					                        
					                <li class="nav-item"> <a id="Logout" class="nav-link logout"
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
			                        style="padding-left:0px; padding-right:0px;">About</a> </li>
			                        
					                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
					                        style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
					                        
					                <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
					                    style="padding-left:0px; padding-right:0px;">Program</a> </li> 
					                    
					                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
					                        style="padding-left:0px; padding-right:0px;">Shop</a> </li>
					                        
					                <li class="nav-item"> <a id="Cart" class="nav-link" href="/cart/cartlist"
						                        style="padding-left:0px; padding-right:0px;">Cart</a> </li>
						                        
					                <li class="nav-item"> <a id="Logout" class="nav-link logout"
                                       style="padding-left:0px; padding-right:0px;">Logout</a> </li>
					                        
					                <li class="nav-item"> <a id="Mypage" class="nav-link" href="/mypage/main"
					                        style="padding-left:0px; padding-right:0px;">Mypage</a> </li>
								
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
										href="/about" style="padding-left: 0px; padding-right: 0px;">About</a>
									</li>
								
					                <li class="nav-item"> <a id="Exhibition" class="nav-link" 
					                href="/Exhibition/toCurExhibition"
					                    style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
					                    
					                <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
					                    style="padding-left:0px; padding-right:0px;">Program</a> </li> 
					                           
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
			</div>

		</div>
		<div class="container"  >
			<div class="row mypage-wrap"  >
			<div class="row" id="row1">				
			<div class="col-12 d-block d-lg-none H1 small-navi" >
			<button id="select" style="padding:0px;" >MY PAGE</button>
			</div>
			
			
				<div class="navi" >
				<a href="/mypage/main" style=" font-size:1.625rem;" class="main" >
				<strong class="menu-title">My Page</strong>
				</a>
				<div class="navi-menu">
					<ul class="navi-ul">
					<li>
						<div class="body4">My Tickets</div>
						<ul>
							<li class="body3"><a href="/mypage/myTicket">티켓예매 목록</a></li>
						</ul>
					</li>
					<li>
						<div class="body4">My Shopping</div>
						<ul>
							<li class="body3"><a href="/mypage/myShopping">주문내역</a></li>
							<li class="body3"><a href="/mypage/refund">취소/반품 내역</a></li>
							<li class="body3"><a href="/delivery/selectAllAddress">배송지 관리</a></li>
						</ul>
					</li>
					<li>
						<div class="body4">My Info</div>
						<ul>
							<li class="body3"><a href="/member/rating">나의 회원등급</a></li>
							<li class="body3"><a href="/coupon/couponlist">나의 쿠폰</a></li>
							<li class="body3"><a href="/member/mypage">개인정보 변경/탈퇴</a></li>
						</ul>
					</li>
					</ul>
				</div>
				</div>
				
				<div class="content" style="margin-top:1rem;">
					<div class="row">
						<div class="col-12 H5" style="">
							나의 쿠폰
						</div>
						<div class="col-12" style="border-bottom:1px solid black; margin-top:1.5rem; padding-bottom:1.5rem;">
							<div class="col-12 body1" style="padding-bottom:1rem;">쿠폰코드를 입력해 주세요.</div>
							<div class="col-12" style="margin-bottom:0.5rem;">
								<input class="serialInput" type="text" maxlength="10" placeholder="쿠폰 번호는 최대 10자리입니다." style="width:30rem; height:3em; border:1px solid #DFE3E8;">
								<button id="regist" style="width:5rem; height:3rem;">등록</button>
							</div>
							<div class="col-12 body2" style="color:gray">* 티켓 또는 상품 구매에 사용 가능한 쿠폰이 있으신가요? 쿠폰 사용을 위해 쿠폰 코드를 입력해 주세요.</div>
						</div>
						<div class="col-12" style="border-bottom:2px solid black; margin-top:1.5rem; padding-bottom:1.5rem;">
							<div class="row">
								<div class="col-6" style="padding-left:0rem; padding-right:0rem;">
									<button class="notUsed button" id="N" style="width:100%; height:4rem;">사용 가능 쿠폰</button>
								</div>
								<div class="col-6" style="padding-left:0rem; padding-right:0rem;">
									<button class="used button" id="Y" style="width:100%; height:4rem;">사용완료 쿠폰</button>
								</div>
							</div>
						</div>
						<div class="col-12" style=" margin-top:0.5rem; padding-bottom:0.5rem; border-bottom:1px solid #DFE3E8">
							<div class="row">
								<div class="col-6">
									쿠폰정보
								</div>
								<div class="col-6">
									할인혜택
								</div>
							</div>
						</div>
						<div class="col-12" style="border-bottom:1px solid black;margin-bottom:1rem;">
							<div class="row list">

							</div>
						</div>
						<div class="col-12" style="padding-left:0rem;">
							<div class="row">
								<div class="col-12 H5" style="margin-top:3rem; padding-bottom:1.5rem;">쿠폰 사용 안내</div>
								<div class="col-12 H4" style="color:gray;">-사용기간이 만료된 쿠폰은 사전 공지 없이 자동 삭제됩니다.</div>
								<div class="col-12 H4" style="color:gray;">-쿠폰의 최소 주문금액은 배송비를 제외한 금액입니다. 결제 시 총 금액을 확인해 주세요.</div>
								<div class="col-12 H4" style="color:red; font-weight:bold;">-상품을 반품하거나 주문을 취소하셨다면, 구매에 사용하신 쿠폰은 반환되지 않습니다.</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

		<!-- 푸터단 -->

		<div class="row" id="footer" style="margin-top: 12.5rem;">
			  <div class="container" style="padding-left:2.5rem;">
                <div class="row" id="row1">
                    <div class="col-12 H3" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
                    <div class="col-12 body2" style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2" style = "color: #637381;">3호선 경복궁역 지하 1층 | contact@palet.com</div>
                </div>
            </div>
		</div>
	</div>
	
	<script>
		window.onload = function(){
			if(!($(".notUsed").hasClass("active"))){
				$(".notUsed").addClass("active");
			}
			
			$.ajax({
				url:"/mypage/selectMyCouponStatus",
				data:{"used":$(".active").attr("id")}
			}).done(function(resp){
				console.log(resp);
				for(let i = 0; i < resp.length; i++){
					$(".list").append("<div class='col-6 category' style='font-size:2rem; font-weight:bold; border-bottom:1px solid #DFE3E8; margin-top:0.5rem; padding-bottom:0.5rem;'>"+resp[i].category+"</div><div class='col-6 dc' style='font-size:2rem; font-weight:bold; border-bottom:1px solid #DFE3E8; margin-top:0.5rem; padding-bottom:0.5rem;'>"+resp[i].dc+"원</div>")
				}
			})
		}
	
		$(".button").on("click",function(){
			$(this).addClass("active");
			$(".button").not(this).removeClass("active")
			$(".list").empty();
			if($(".active").attr("id") == "N"){
				$.ajax({
					url:"/mypage/selectMyCouponStatus",
					data:{"used":$(".active").attr("id")}
				}).done(function(resp){
					console.log(resp);
					for(let i = 0; i < resp.length; i++){
						$(".list").append("<div class='col-6 category' style='font-size:2rem; font-weight:bold; border-bottom:1px solid #DFE3E8; margin-top:0.5rem; padding-bottom:0.5rem;'>"+resp[i].category+"</div><div class='col-6 dc' style='font-size:2rem; font-weight:bold; border-bottom:1px solid #DFE3E8; margin-top:0.5rem; padding-bottom:0.5rem;'>"+resp[i].dc+"원</div>")
					}
				})

		let click = true;
		$("#select")
				.on(
						"click",
						function() {
							if (click == false) {
								$("#select")
										.css(
												{
													"background" : "url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ",
													"background-size" : "1.596rem"
												});
								$(".navi-menu").css({
									"display" : "none"
								});

								click = true;
							} else {
								$("#select")
										.css(
												{
													"background" : "url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ",
													"background-size" : "01.596rem"
												});
								$(".navi-menu").css({
									"display" : "block"
								});
								click = false;
							}
						});
		
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

			}
			if($(".active").attr("id") == "Y"){
				$.ajax({
					url:"/mypage/selectMyCouponStatus",
					data:{"used":$(".active").attr("id")}
				}).done(function(resp){
					console.log(resp);
					for(let i = 0; i < resp.length; i++){
						$(".list").append("<div class='col-6 category' style='font-size:2rem; font-weight:bold; border-bottom:1px solid #DFE3E8; margin-top:0.5rem; padding-bottom:0.5rem;'>"+resp[i].category+"</div><div class='col-6 dc' style='font-size:2rem; font-weight:bold; border-bottom:1px solid #DFE3E8; margin-top:0.5rem; padding-bottom:0.5rem;'>"+resp[i].dc+"원</div>")
					}
				})
			}
		})
		
		$("#regist").on("mouseover",function(){
			$("#regist").css("background-color","black");
			$("#regist").css("color","white");
		})
		
		$("#regist").on("mouseout",function(){
			$("#regist").css("background-color","white");
			$("#regist").css("color","black");
		})
		
		$("#regist").on("click",function(){
			if($(".serialInput").val() == ""){
				alert("쿠폰 번호를 입력해 주세요.");	
			}else{
				$.ajax({
					url:"/coupon/Registration",
					data:{"serial":$(".serialInput").val()}
				}).done(function(resp){
					console.log(resp);
					if(resp=="false"){
						alert("쿠폰번호를 다시 확인해주세요")
						$(".serialInput").val("");
						return false;
					}
					if(resp=="use"){
						alert("사용이 완료된 쿠폰입니다.")
						$(".serialInput").val("");
						return false;
					}
					if(resp=="noregistration"){
						alert("이미 등록된 쿠폰입니다.")
						$(".serialInput").val("");
						return false;
					}
					if(resp=="registration"){
						alert("쿠폰이 등록되었습니다.");
						location.reload();
						$(".serialInput").val("");
					}
				})
			}
		})
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


