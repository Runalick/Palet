<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Palet</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<!-- <link rel="stylesheet" href="/css/member/join.css">  -->
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
@media ( min-width : 1650px) {
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
	margin: auoto;
	padding-right: 20px;
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

.h1 {
	padding: 0px;
	color: #FFFFFF;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 4rem;
	line-height: 4.813rem;
}

.H1{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 3.438rem;
line-height: 3.75rem;
}

.body1 {
	/* Body/Body1 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.25rem;
	line-height: 1.875rem;
	/* identical to box height, or 150% */
	color: #FFFFFF;
}

.body2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;
	line-height: 1.75rem;
	/* identical to box height, or 175% */
	margin-bottom: 0px;
	color: #000000;
}

.btn1 {
	box-sizing: border-box;
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	margin-bottom: 1rem;
	margin-right: 1.25rem;
	width: 12.5rem;
	height: 3.75rem;
	border: 1px solid #FFFFFF;
	border-radius: 1.25rem;
	background-color: rgba(0, 0, 0, 0);
	/* Button/Button1 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	color: #FFFFFF;

	/* Inside auto layout */
}

.btn1_1 {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	width: 23.5rem;
	height: 3.75rem;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	color: #FFFFFF;
	/* Gray/900 */
	background: #161C24;
	border-radius: 20px;
}

.btn2 {
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	width: 12.5rem;
	height: 3.75rem;
	background: #FFFFFF;
	border-radius: 1.25rem;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	/* Gray/900 */
	color: #161C24;

	/* Inside auto layout */
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
	font-size: 1.22rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	color: #FFFFFF;
}

.h4 {
	margin-bottom: 0px;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1rem;
	line-height: 1.875rem;
	/* identical to box height, or 188% */
	color: #000000;
}

.h2 {
	/* width: 10.375rem;
            height: 2.688rem; */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 2.25rem;
	line-height: 2.688rem;
	text-align: center;
	/* Gray/900 */
	color: #161C24;
}

.h2_1 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 2.25rem;
	line-height: 2.688rem;
	/* Gray/900 */
	color: white;
}

.h3 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	/* Gray/900 */
	color: #161C24;
}

.caption {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 0.875rem;
	line-height: 1.063rem;
	/* identical to box height */
	/* Gray/500 */
	color: #919EAB;
}

#row1>div {
	padding-left: 0px;
	padding-right: 0px;
}


.hcon {
	margin-top: 0.938rem;
	height: 3.75rem;
}

#main3 {
	height: 42.375rem;
	background: linear-gradient(180deg, #F4F6F8 0%, rgba(244, 246, 248, 0)
		100%);
}

#footer {
	background: #F4F6F8;
	height: 13.25rem;
}

.ul2 {
	list-style: none;
}

.ul2>li {
	padding: 0px;
	float: left;
}

.curimage {
	width: 23.5rem;
	height: 32.5rem;
}

.exlink {
	text-decoration: none;
	color: #919EAB;
}

a {
	text-decoration: none;
	padding: 0px;
}

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
	.content{
	  width: calc(100% - 13.625rem);
	}
	.navi{
	width:11.875rem;
	padding:0rem;
	display:block;
	}
	.body3{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;;
	line-height: 1.75rem;
	}
	.body4{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.25rem;
	line-height: 1.875rem;
	}
	.main-info{
		font-size: 1.625rem;
	}
	.main-area .body4{
	font-weight:550;
	font-size:1.1rem;
	}
	.sm-btn{
	width: 6.375rem;
	height: 0.675rem;
	margin-right:0.25rem;
	}
	#insert{
		width:13.375rem;
		height:2.7rem;
	}
	
}

@media ( max-width : 991px) {
.content div{
	padding-right: 0.5rem;
	padding-left: 0.5rem;
}
	.main{
	display:none;
	}
	.navi-menu{
	display:none;
	}
	
	.content{
	  width: calc(100% - 1.625rem);
	}
	.navi{
	padding:0rem;
	}
	.body3{
	font-size:1.425rem;
	}
	.body4, .main-info{
	font-size:1.875rem;
	}
	.main-area .body4{
	font-family: 'Spoqa Han Sans Neo';
	font-weight:550;
	font-size:1.625rem;
	}
	.sm-btn{
	margin-top:0.3rem;
	width:10.375rem;
	height:2.875rem;
	}
	#insert{
	width:16.375rem;
	height:3.3rem;
	
	.smwidth{
		width: 300px;
	}
}
	
}

.main-info{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 600;

	line-height: 1.875rem;
	margin-bottom:1rem;
}


  .container, .container-fluid,  .container-lg, .container-md,
	.container-sm, .container-xl, .container-xxl {
	overflow-x: hidden;
} 

/* 네비 */

.content{
    /* margin-left:1.75rem; */
}
.mypage-wrap{
margin:4.625rem auto 9.375rem;
}
body li{
    list-style-type: none;
    
}
body ul{
padding:0px;
}
body a{
text-decoration:none;
}
.menu-title{
display:block;
color:black;
border-bottom:1px solid black;
padding:1rem;
}

li div{
background:#212B36;
color:white;
padding: 0.125rem 1rem;
}

.navi-ul li ul li a{
color:#919EAB;
font-weight:700;
line-height:2rem;
}
.navi-ul li ul li a:hover{
color:#212B36;
font-weight:700;
line-height:2rem;
}
.small-navi{
margin:1.25rem 0rem ;
}
#select{
width:100%;
border:0px;
background:url('/images/downarrow.png') no-repeat 97% 50%/15px auto ;
background-size: 01.596rem;
text-align:left;
}
.body3 a{
display:block;
padding: 0.3rem 1rem;
}

.main-area{
margin-top:1rem; 
padding-bottom:1rem; 
border-bottom:1px solid #C4CDD5;
}
.list{
padding:1.2rem 0px; 
border-bottom:1px solid #C4CDD5;
}
.list .body3{
line-height:2rem;
}
.btnbtn{
font-family: 'Spoqa Han Sans Neo';
line-height:0px;
align-items: center;
padding: 1.125rem 1.5rem;
gap: 0.625rem;
border:0px;

color:white;
/* Gray/900 */
background: #161C24;
border-radius: 1rem;
}
.btnbtn:hover{
background: #454F5B;
color:white;
} 

.ellipsis {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;  /* 말줄임 적용 */
}


/* .pre-ticket{
	width:44.5rem;
	height:14.5rem;
	}
	.pre-title{
	font-size:1.625rem;
	line-height:1.875rem;
	padding-bottom:1.25rem;
	}
	.body6{
	font-size:1.625rem;
	} */


</style>
</head>
<body>
	<div class="container-fluid">
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

		<div class="container">
			<div class="row mypage-wrap" >
				
				<div class="row" id="row1">
				<div class="col-12 d-block d-lg-none H1 small-navi" >
				<button id="select" style="padding: 0px;">MY PAGE</button>
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
				
				
				
				
				
				
				<div class="content" style="margin-top:1rem;" >
					<div class="row" >
						<div class="col-12 main-info" >주문 내역</div>
						
						<div class="col-12" style="margin-top:2.5rem;">
							<div class="row main-area">
								<div class="col-2 d-none d-md-block px-3 body4" >주문일</div>
								<div class="col-6 d-none d-md-block px-3 body4">주문정보</div>
								<div class="col-2 d-none d-md-block px-3 body4">가격</div>
								<div class="col-2 d-none d-md-block px-3 body4">배송상태</div>
							</div>
							<div id="contents_area">
							</div>
							<%-- <c:forEach var="i" items="${list}">
								<a href='/mypage/myShoppingDetailview?merchant_uid=${i.merchant_uid}'>
								<div class="row main-area">
								<div class="col-2 px-3 ellipsis body4" >${i.pay_time}</div>
								<div class="col-5 px-3 ellipsis body4">
									<div class="row">
										<div class="col-5 px-3">
											<img src="/images/anywayloveS.png" class="w-100 h-100">
											<img class='con' src='/shop/shopHome/"+ ${gp_sysname }+"'>
										</div>
										<div class="col-7 px-3">
											<div class="col-12 px-3">${i.merchant_uid}</div>
											<div class="col-12 px-3">${i.e_name }</div>
											<div class="col-12 px-3">${i.G_NAME }</div>
											<div class="col-12 px-3">${i.G_OPTION }</div>
										</div>
										
										
									</div>
								</div>
								<div class="col-1 px-3 ellipsis body4">${i.g_count }</div>
								<div class="col-2 px-3 ellipsis body4">${i.totalprice }</div>
								<div class="col-2 ellipsis px-3 body4">
									<c:if test="${i.state =='BU' }">
										<div>주문완료</div>
										<button>주문취소</button>
									</c:if>
									<c:if test="${i.state =='CU' }">
										<div>배송 중</div>
									</c:if>
									<c:if test="${i.state =='AU' }">
										<div>배송완료</div>
										<button>반품신청</button>
									</c:if>
									<c:if test="${i.state =='BC' }">
										<div>취소 중</div>
									</c:if>
									<c:if test="${i.state =='AC' }">
										<div>취소완료</div>
									</c:if>
								</div>
							</div>
							</a>
							</c:forEach> --%>
					
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
                    <div class="col-12 h3" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
                    <div class="col-12 body2" style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2" style = "color: #637381;">3호선 경복궁역 지하 1층 | contact@palet.com</div>

                </div>
            </div>
        </div>
	</div>
<script>
	AOS.init();
	window.onload = function(){
		$.ajax({
			url:"/mypage/ShoppingList",
			data:{"limit" : 1, "email": "${email}"},
			async: false,
			dataType:"json", // == JSON.parse(resp);
			success: function (resp) {
				for(let i = 0 ; i < resp.length; i++) {
					let text_html=
							//"<a href='/mypage/myShoppingDetail?merchant_uid=" + resp[i].merchant_uid + "'>"
							/* "<div class='row main-area' id='detailView" + i +"'>"
							+"<div class='col-12 col-md-2 px-3 ellipsis body4' id='paytime" + i + "'>" + resp[i].pay_time +"</div>"
							+"<div class='col-12 col-md-5 px-3 ellipsis body4'>"
							+	"<div class='row'>"
							+		"<div class='col-5 d-none d-md-block px-3'>"
							+			"<img class='con' src='"+ resp[i].gp_sysname + "' style='width: 120px;'>"
							+		"</div>"
							+		"<div class='col-12 col-md-7 p-0'>"
							+			"<div class='col-12 ellipsis px-3' id='merchant_uid"+ i +"'>" + resp[i].merchant_uid + "</div>"
							+			"<div class='col-12 d-md-none ellipsis py-3'>"
							+			"<img class='con' src='"+ resp[i].gp_sysname + "' style='width: 250px;'>"
							+			"</div>"
							+			"<div class='col-12 ellipsis px-3'>" + resp[i].G_NAME + "</div>"
							+			"<div class='col-12 ellipsis px-3'>" + resp[i].pe_name + "</div>"
							+			"<div class='col-12 ellipsis px-3'>" + resp[i].G_OPTION + "</div>"
							+		"</div>"	
							+	"</div>"
							+"</div>"
							+ "<div class='col-1 d-none d-md-block px-3 ellipsis body4'>" + resp[i].g_count + "</div>"
							+"<div class='col-2 px-3 ellipsis body4'>" + resp[i].totalprice + "</div>"
							+"<div class='col-2 ellipsis px-3 body4' id='del" + i + "'>"
							+"<div id='state_text"+i+"'></div>"
							+ "<input type='hidden' id='state" + i + "' value=" + resp[i].state + ">"
							+ "<input type='hidden' id='uid" + i + "' value=" + resp[i].merchant_uid + ">"
							+"</div></div>"; */
							
							
							"<div class='row main-area' id='detailView" + i +"'>"
							+"<div class='col-12 col-md-2 px-3 ellipsis body4' id='paytime" + i + "'>" + resp[i].pay_time +"</div>"
							+"<div class='col-12 col-md-6 px-3 ellipsis body4'>"
							+ "<div class='row'>"
							+ "<div class='col-12 p-0'>" + resp[i].MERCHANT_UID + "</div>"
							+ "<div class='col-12 p-0'>" + resp[i].G_NAME + "</div>"
							+ "</div></div>"
							+"<div class='col-12 col-md-2 px-3 ellipsis body4'>" + resp[i].TOTALPRICE + "</div>"
							+"<div class='col-12 col-md-2 px-3 ellipsis body4' id='del" + i + "'>"
							+"<div id='state_text"+i+"'>" + resp[i].STATE +"</div>"
							+ "<input type='hidden' id='state" + i + "' value=" + resp[i].STATE + ">"
							+"</div></div>";
						
						$("#contents_area").append(text_html);
			    		console.log("resp.length : " + resp.length);
					}	
					for(let i=0; i<resp.length;i++){
						$("#detailView"+i).on("click", function(){
							location.href="/mypage/myShoppingDetail?merchant_uid=" + resp[i].MERCHANT_UID 
						})
						
						
				    	if($("#state"+i).val()=='BU'){
				    		$("#state_text" + i).text("주문완료");
				    	} else if($("#state"+i).val()=='CU'){
				    		$("#state_text" + i).text("배송 중");
				    		$("#cancel" + i).attr('style',"display:none;");
				    	} else if($("#state"+i).val()=='AU'){
				    		$("#state_text" + i).text("배송완료");
				    		$("#cancel" + i).attr('style',"display:none;");
				    	} else if($("#state"+i).val()=='BC'){
				    		$("#state_text" + i).text("취소 처리 중");
				    		$("#cancel" + i).attr('style',"display:none;");
				    	} else if($("#state"+i).val()=='AC'){
				    		$("#state_text" + i).text("취소완료");
				    		$("#cancel" + i).attr('style',"display:none;");
				    	} 
				    	
		    		}  
					
					
					for(let i=0; i<resp.length;i++){
						let date = new Date($("#paytime"+i).text());
						let enddate = new Date(date.setDate(date.getDate()+1));
						
						let today = new Date(); 
						
						let del = new Date($("#paytime"+i).text());
						let delend = new Date(del.setDate(del.getDate()+3));
						
						console.log("주문완료시각 : " + $("#paytime"+i).text());
						console.log("배송중변경일 : " +enddate);
						console.log("현재날짜 : " +today);
						console.log("배송완료날짜 : " +delend);
						console.log($("#merchant_uid"+i).text());
						console.log($("#state"+i).val()=='CU');
						
						// 주문완료 -> 배송 중 (1일뒤)
						if($("#state"+i).val()=='BU'){
							if(enddate <= today){
								$.ajax({
									url:"/mypage/changeStateCU",
									data: {"merchant_uid":$("#merchant_uid"+i).text()}
								}).done(function(resp){
									locaiton.reload();
								})
							}
						}
						
						// 배송 중 -> 배송완료 (주문완료 3일 뒤)
						if($("#state"+i).val()=='CU' ){
							if(delend <= today){
								$.ajax({
									url:"/mypage/changeStateAU",
									data: {"merchant_uid":$("#merchant_uid"+i).text()}
								}).done(function(resp){
									locaiton.reload();
								})
							}
						}	
						
						
					}  
					
					/* // 주문 취소 버튼 클릭시
					$(".ok").on("click", function(event){
						event.stopPropagation();
						//alert($($($($(this).parent().siblings()[1]).children().children()[1]).children()[0]).text());
						$.ajax({
							url:"/mypage/delCancel",
							data: {"merchant_uid":$($($($(this).parent().siblings()[1]).children().children()[1]).children()[0]).text()}
						}).done(function(resp){
							console.log(resp);
						})
						
					}) */
				
				},
			});	
		
		let limit = 11;
		
		
	  	$(document).scroll(function() {
	    let maxHeight = $(document).height();
	    let currentScroll = $(window).scrollTop() + $(window).height();
		    
		   
		    if (maxHeight <= currentScroll+100) {
		    	console.log("origin limit : " + limit);
		    	$.ajax({
					url:"/mypage/ShoppingList",
					data:{"limit" : limit, "email": "${email}"},
					async: false,
					dataType:"json", // == JSON.parse(resp);
					success: function (resp) {
						for(let i = 0 ; i < resp.length; i++) {
							let text_html=
								"<div class='row main-area' id='detailView" + i +"'>"
								+"<div class='col-12 col-md-2 px-3 ellipsis body4' id='paytime" + i + "'>" + resp[i].pay_time +"</div>"
								+"<div class='col-12 col-md-6 px-3 ellipsis body4'>"
								+ "<div class='row'>"
								+ "<div class='col-12 p-0'>" + resp[i].MERCHANT_UID + "</div>"
								+ "<div class='col-12 p-0'>" + resp[i].G_NAME + "</div>"
								+ "</div></div>"
								+"<div class='col-12 col-md-2 px-3 ellipsis body4'>" + resp[i].TOTALPRICE + "</div>"
								+"<div class='col-12 col-md-2 px-3 ellipsis body4' id='del" + i + "'>"
								+"<div id='state_text"+i+"'>" + resp[i].STATE +"</div>"
								+ "<input type='hidden' id='state" + i + "' value=" + resp[i].STATE + ">"
								+"</div></div>";
								
								$("#contents_area").append(text_html);
					    		console.log("resp.length : " + resp.length);
							}
							limit = limit + resp.length;
					    	console.log("change limit : " + limit);	
						
						
							for(let i=0; i<resp.length;i++){
								
								$("#detailView"+i).on("click", function(){
									location.href="/mypage/myShoppingDetail?merchant_uid=" + resp[i].MERCHANT_UID 
								})
								
						    	if($("#state"+i).val()=='BU'){
						    		$("#state_text" + i).text("주문완료");
						    	} else if($("#state"+i).val()=='CU'){
						    		$("#state_text" + i).text("배송 중");
						    		$("#cancel" + i).attr('style',"display:none;");
						    	} else if($("#state"+i).val()=='AU'){
						    		$("#state_text" + i).text("배송완료");
						    		$("#cancel" + i).attr('style',"display:none;");
						    	} else if($("#state"+i).val()=='BC'){
						    		$("#state_text" + i).text("취소 중");
						    		$("#cancel" + i).attr('style',"display:none;");
						    	} else if($("#state"+i).val()=='AC'){
						    		$("#state_text" + i).text("취소완료");
						    		$("#cancel" + i).attr('style',"display:none;");
						    	} 
						    	
				    		}  
							
							for(let i=0; i<resp.length;i++){
								let date = new Date($("#paytime"+i).text());
								let enddate = new Date(date.setDate(date.getDate()+1));
								
								let today = new Date(); 
								
								let del = new Date($("#paytime"+i).text());
								let delend = new Date(del.setDate(del.getDate()+3));
								
								console.log("주문완료시각 : " + $("#paytime"+i).text());
								console.log("배송중변경일 : " +enddate);
								console.log("현재날짜 : " +today);
								console.log("배송완료날짜 : " +delend);
								console.log($("#merchant_uid"+i).text());
								console.log($("#state"+i).val()=='CU');
								
								// 주문완료 -> 배송 중 (1일뒤)
								if($("#state"+i).val()=='BU'){
									if(enddate <= today){
										$.ajax({
											url:"/mypage/changeStateCU",
											data: {"merchant_uid":$("#merchant_uid"+i).text()}
										}).done(function(resp){
											locaiton.reload();
										})
									}
								}
								
								// 배송 중 -> 배송완료 (주문완료 3일 뒤)
								if($("#state"+i).val()=='CU' ){
									if(delend <= today){
										$.ajax({
											url:"/mypage/changeStateAU",
											data: {"merchant_uid":$("#merchant_uid"+i).text()}
										}).done(function(resp){
											locaiton.reload();
										})
									}
								}	
							}	
					},
				}); // ajax
		    } // if
		 })  // scroll
	}	// onload
	
	


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
			$("#select").css({"background":"url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "1.596rem"});
			$(".navi-menu").css({"display":"none"});
			
			click = true;
		}else{
			$("#select").css({"background":"url('/images/downarrowuparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "01.596rem"});
			$(".navi-menu").css({"display":"block"});
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
	
// 		$("#make").on("click",function(){
// 			$.ajax({
// 				url:"/coupon/make",
// 				data:{number:$("#number").val(),
// 					dc:$("#dc").val(),
// 					category:$("#category").val()}
// 			}).done(function(resp){
// 				console.log(resp);
// 			})
// 		})
	
	</script>
</body>
</html>