<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<style>
@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);

@media ( min-width : 375px) {
	.container {
		max-width: 1280px;
		min-width: 390px;
	}
	html {
		font-size: 12px;
	}
}

@media ( min-width : 1650px) {
	.container {
		max-width: 1280px;
		min-width: 390px;
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

#navparent {
	position: fixed;
	font-size: 0;
	padding-left: 2.5rem;
	padding-right: 2.5rem;
	height: 5rem;
	background-color: white;
	z-index: 5;
}

.navbar {
	height: 5rem;
	padding: 0px;
}

.nav-item {
	padding-left: 20px;
	padding-right: 20px;
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

#Exhibition {
	width: 5.938rem;
	height: 1.5rem;
}

#Help {
	width: 2.813rem;
	height: 1.5rem;
}

#Login {
	width: 3.313rem;
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

<!--
버튼 -->.btn1 {
	/* padding:  1.12rem 1.5rem; */
	gap: 0.625rem;
	/* width: 12.5rem; */
	width: 100%;
	height: 3.125rem;
	/* Gray/900 */
	color: #FFFFFF;
	background: #161C24;
	border-radius: 0.313rem;
	/* Button/Button */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.0rem;
	line-height: 1.2rem;
	cursor: pointer;
}

.btn1:disabled {
	color: #FFFFFF;
	background: #C4CDD5;
	cursor: default;
}

/* join 버튼 */
.btn2 {
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	/* width: 18.813rem; */
	width: 10rem;
	height: 1rem;
	color: #FFFFFF;
	border-radius: 1.25rem;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 0.5rem;
	/* identical to box height */
	text-align: center;
	/* Gray/900 */
	background: #161C24;
	cursor: pointer;
}

.btn2:disabled {
	color: #FFFFFF;
	background: #C4CDD5;
	cursor: default;
}

.btn3 {
	/* display: block; */
	/* flex-direction: row;
justify-content: center;
align-items: center; */
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	width: 11.625rem;
	height: 3.75rem;
	background: #161C24;
	border-radius: 1.25rem;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.2rem;
	line-height: 1.5rem;
	text-align: center;
	color: #FFFFFF;
}

.btn5 {
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	width: 18.813rem;
	height: 3.75rem;
	/* Gray/900 */
	background: #161C24;
	border-radius: 1.25rem;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.23rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	color: #FFFFFF;
}

.ratingbox {
	border: 1px solid black;
}

div {
	text-align: center;
}
.mini{
	width: 5rem;
	height: 5rem;
}
.ratingbox{
	padding-top: 1rem;
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
									<li class="nav-item"> <a id="About" class="nav-link" href="about"
				                        style="padding-left:0px; padding-right:0px;">About</a> </li>
				                        
					                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
					                        style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
					                        
					                <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
					                    style="padding-left:0px; padding-right:0px;">Program</a> </li> 
					                    
					                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
					                        style="padding-left:0px; padding-right:0px;">Shop</a> </li>
					                        
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
									<li class="nav-item"> <a id="About" class="nav-link" href="about"
			                        style="padding-left:0px; padding-right:0px;">About</a> </li>
			                        
					                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
					                        style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
					                        
					                <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
					                    style="padding-left:0px; padding-right:0px;">Program</a> </li> 
					                    
					                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
					                        style="padding-left:0px; padding-right:0px;">Shop</a> </li>
					                        
					                <li class="nav-item"> <a id="Cart" class="nav-link" href="/cart/cartlist"
						                        style="padding-left:0px; padding-right:0px;">Cart</a> </li>
						                        
					                <li class="nav-item"> <a id="Logout" class="nav-link" href="/member/loginPage" onclick="return logout();"
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
										href="about" style="padding-left: 0px; padding-right: 0px;">About</a>
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
	</header>
	<div class="container-fluid" id="mypage-area">
		<div class="container">
			<div class="row mypage-wrap">

				<div class="col-12 d-block d-lg-none H1 small-navi">
					<button id="select">MY PAGE</button>
				</div>


				<div class="navi">
					<a href="/mypage/main" style="font-size: 1.625rem;" class="main"> <strong
						class="menu-title">My Page</strong>
					</a>
					<div class="navi-menu">
						<ul class="navi-ul">
							<li>
								<div class="body4">My Tickets</div>
								<ul>
									<li class="body3"><a href="#">티켓예매 목록</a></li>
								</ul>
							</li>
							<li>
								<div class="body4">My Shopping</div>
								<ul>
									<li class="body3"><a href="/mypage/myShopping">주문내역</a></li>
									<li class="body3"><a href="#">취소/반품 내역</a></li>
									<li class="body3"><a href="/delivery/selectAllAddress">배송지 관리</a></li>
								</ul>
							</li>
							<li>
								<div class="body4">My Info</div>
								<ul>
									<li class="body3"><a href="/member/rating">나의 회원등급</a></li>
									<li class="body3"><a href="#" id="registration">쿠폰등록</a></li>
									<li class="body3"><a href="/coupon/couponlist">나의 쿠폰</a></li>
									<li class="body3"><a href="/member/mypage">개인정보 변경/탈퇴</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>

				<div class="content">
					<div class="row" id="row1">
						<div class="col-12 h3"> 
								<c:if test="${dto.name==null }">
									${dto.email}
								</c:if> 
								<c:if test="${dto.name!=null }">
									${dto.name }
								</c:if>
						님의 등급은 
							<c:if test="${dto.grade == 'White'}">
								<img src="/images/white.png" class="mini">
							</c:if>
							<c:if test="${dto.grade == 'Gray'}">
								<img src="/images/gray.png" class="mini">
							</c:if><c:if test="${dto.grade == 'Black'}">
								<img src="/images/black.png" class="mini">
							</c:if>
							입니다.
						</div>
						<div class="col-12 body3">
							
						</div>
						<div class="col-12">
							<div class="row">
								<div class="col-md-4 col-sm-12 ratingbox body3">
									<img src="/images/white.png"><br>
									<br>
									- White 등급<br>
									- 결제금액의 1% 마일리지 적립<br>
									- 회원가입시 white등급
								</div>
								<div class="col-md-4 col-sm-12 ratingbox body3">
									<img src="/images/gray.png"><br>
									<br>
									 - Gray 등급<br>
									 - 결제금액의 5% 마일리지 적립<br>
									 - 누적 결제금액이 10만원 이상이면 Gray 등급으로 상승
								</div>
								<div class="col-md-4 col-sm-12 ratingbox body3">
									<img src="/images/black.png"><br>
									<br>
									- Black 등급<br>
									- 결제금액의 10% 마일리지 적립<br>
									- 누적 결제 금액이 30만원 이상이면 Black 등급으로 상승
								</div>
								<div class="col-12 H2" style="text-decoration: underline;">
									등급 산정 정책
								</div>
								<div class="col-12 body4" >
									* 등급 변동일은 매주 월요일 관리자에 의해 변동됩니다.<br>
									* 휴면계정 전환시 회원 등급이 초기화 됩니다.<br>
								</div>
								<div class="col-12 H2" style="text-decoration: underline;">
									혜택별 상세 정보
								</div>
								<div class="col-12 body4">
									* 전시 또는 프로그램 관람 횟수 카운팅은 유료 전시 및 프로그램에 한하여 적용됩니다.<br>
									* 동일 전시 재관람 혜택 이용 시 금액이 추가적용되지 않습니다.<br>
									* 누적 구매액은 실제 결제금액 기준으로 집계됩니다.<br>
									* 쿠폰은 결제에 사용후 구매취소 시 재 지급 되지 않습니다.<br>
									* 쿠폰과 마일리지의 중복 적용은 가능합니다.<br>
									* 혜택, 등급선정기준, 등급조정 등 회원 정책은 업체의 사정에 따라 변경될 수 있습니다.<br>
								</div>
							</div>
						</div>
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

	</div>
	<script>
	$( window ).resize(function() {   //창크기 변화 감지
		open_chatroom();
	});
	
	function open_chatroom(){ 
		var windowWidth = $( window ).width();
		if(windowWidth < 992) {      //창 가로 크기가 500 미만일 경우  
			$(".navi-menu").css({"display":"none"});
		} else {      //창 가로 크기가 500보다 클 경우  
			$(".navi-menu").css({"display":"block"});
		}
		}
	
	//선택박스 화살표 방향 이미지
		$("#registration").on("click",function(){
		window.open("/coupon/toregistration", "",
		"top=100,left=200,width=700,height=500");
		})
	let click = true;
	$("#select").on("click",function(){
		if(click==false){
			$("#select").css({"background":"url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ","background-size": "1.596rem"});
			$(".navi-menu").css({"display":"none"});
			
			click = true;
		}else{
			$("#select").css({"background":"url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "01.596rem"});
			$(".navi-menu").css({"display":"block"});
			click = false;
		}
	});
	
	</script>
</body>
</html>


