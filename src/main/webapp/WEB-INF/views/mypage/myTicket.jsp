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
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<!-- qr cdn -->
<meta name="description"
	content="Demo for jQuery.qrcode (https://larsjung.de/jquery-qrcode/).">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="//fonts.googleapis.com/css2?family=Ubuntu+Mono:wght@400;700&amp;display=swap"
	rel="stylesheet">
<script src="/js/qrmaker.js"></script>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
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

		.container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl{
			overflow-x: hidden;
		}
		
/* 		.overflow-auto{ */
/* 			overflow: hidden; */
/* 		}  */
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
#row1>div{
	padding-left: 0px;
	padding-right: 0px;
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
.body3 {
		font-family: 'Spoqa Han Sans Neo';
		font-style: normal;
		font-weight: 400;
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

@media ( max-width : 992px) {
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
	line-height: 2rem;
}

.navi-ul li ul li a:hover {
	color: #212B36;
	font-weight: 700;
	line-height: 2rem;
}

.small-navi {
	margin: 1.25rem 0rem;
}
#row1>div{
	padding-left: 0px;
	padding-right: 0px;
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

.ticket {
	width: 44.5rem;
	height: 14.5rem;
	background: black;
	margin-bottom: 3.75rem;
	border-radius:0.375rem;
	cursor:pointer;
}
.pticket{
width: 44.5rem;
	height: 14.5rem;
	background: #637381;
	margin-bottom: 3.75rem;
	border-radius:0.375rem;
	cursor:pointer;
}
.pre-ticket, .a {
	width: 24.5rem;
	height: 10.5rem;
	background: #DFE3E8;
	margin-right:2.5rem;
	margin-bottom:1.5rem;
	border-radius:0.375rem;
	cursor:pointer;
}

.qr {
	width: 100px;
	height: 100px;
	background: white;
	position: absolute;
	bottom: 1.5rem;
	right:2rem;

}

.body6 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1rem;;
	line-height: 1.75rem;
}

.pre-title {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.2rem;
	line-height: 1.875rem;
	display: inline-block;
	padding: 1rem 0.5rem 0.5rem 0px;
}


@media ( max-width : 700px) {
	.pre-ticket{
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
	}
}
.imgimg{
border-radius:0.625rem;
}
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
									<li class="nav-item"> <a id="/about" class="nav-link" href="/about"
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
									<li class="nav-item"><a id="/about" class="nav-link"
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
			<div class="row mypage-wrap">
				
				<div class="row" id="row1">
				<div class="col-12 d-block d-lg-none H1 small-navi">
					<button id="select">MY PAGE</button>
				</div>

				<div class="navi">
					<a href="/mypage/main" style="font-size: 1.625rem;" class="main">
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

			<div class="content">
				<div class="row" id="row1" style="padding: 1rem;">
					<div class="col-12 H5">진행 중 전시/클래스 티켓</div>
			<c:choose>
				<c:when test="${cnt !=0}"> 
					<div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false" data-bs-interval="false" style="padding:0px">
  					<div class="carousel-inner">
  
			<!--  반복 -->
			<c:forEach var="i" items="${list }"  varStatus="status">
					<c:if test="${status.first }">
						<div class="carousel-item active">
					</c:if>
					<c:if test="${!status.first }">
						<div class="carousel-item ">
					</c:if>
					
					
					<c:if test="${i.category =='P' }">
			     	<div class="col-12 pticket">
			     	<input type="hidden" class="booknumber" value="${i.booknumber }">
							<div class="row" style="height: 100%">
								<div class="col-3" style="padding: 1rem; padding-left:1.5rem;">
									<img src="${i.sysname }" class="w-100 h-100 imgimg">
								</div>
								<div class="col-9" style="position: relative">
									<div class="H5" style="color: white; padding: 1.25rem 0px;">${i.title }</div>
										<div class="body3" style="color: white" >예매번호 : ${i.booknumber }</div>
									<div class="body3" style="color: white;">${i.datee }</div>
									
								</div>
							</div>
					</div>
					</c:if>
							<c:if test="${i.category =='E' }">
			     	<div class="col-12 ticket">
			     	<input type="hidden" class="booknumber" value="${i.booknumber }">
							<div class="row" style="height: 100%">
								<div class="col-3" style="padding: 1rem; padding-left:1.5rem;">
									<img src="/images/anywayloveS.png" class="w-100 h-100">
								</div>
								<div class="col-9" style="position: relative">
									<div class="H5" style="color: white; padding: 1.25rem 0px;">${i.title }</div>
										<div class="body3" style="color: white" >예매번호 : ${i.booknumber }</div>
									<div class="body3" style="color: white;">${i.datee }</div>
									<div class="qr" id="qr" style="	border: 5px solid white;"></div>
								</div>
							</div>
					</div>
					</c:if>
					
					  </div>
					</c:forEach>					
			  
				<!-- 여기까지 -->
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			  </div>
  			</c:when>
				<c:otherwise>
					<div class="H2" style="margin:10rem 25rem;">예매 내역이 없습니다.</div>
				</c:otherwise>
			</c:choose>	
		</div>
			<div class="col-12 H5">지난 전시/클래스 티켓</div>
			<c:choose>
				<c:when test="${precnt ==0 }">
					<div class="H2" style="margin:10rem 25rem; width:25rem;">예매 내역이 없습니다.</div>
				</c:when>
				<c:otherwise>
			
				<div class="col-12">
					<div class="row pre-ticket-row">
						<!-- 반복문 -->
<%-- 						<c:forEach var="i" items="${prelist }"> --%>
<!-- 							<div class="col-6 pre-ticket"> -->
<%-- 								<input type="hidden" value="${i.booknumber }"> --%>
<!-- 									<div class="row" style="height: 100%"> -->
<!-- 										<div class="col-3" style="padding: 1rem;"> -->
<!-- 											<img src="/images/anywayloveS.png" class="w-100 h-100"> -->
<!-- 										</div> -->
<!-- 										<div class="col-9" style="position: relative"> -->
<%-- 											<div class="pre-title" style="color: #637381;">${i.title }</div> --%>
<%-- 											<div class="body6" style="color: #637381;">${i.datee }</div> --%>
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<%-- 							</c:forEach> --%>
						</div>
					</div>
					
						</c:otherwise>
			</c:choose>
				</div>
			</div>
		</div>
		</div>
<!-- 푸터단 -->
		

         <div class="row" id="footer">
            <div class="container">
                <div class="row" id="row1">
                    <div class="col-12 H3" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
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
		url:"/mypage/mypreTicket",
		data:{limit : 1},
		async: false,
		dataType:"json", // == JSON.parse(resp);
		success: function (resp) {
			for(let i = 0 ; i < resp.length; i++) {
				
				if(resp[i].category =='E'){
		    	  $(".pre-ticket-row").append("<a class='a' href='/mypage/myTicketDetailview?et_booknumber="+resp[i].booknumber+"' ><div class='col-6 pre-ticket'><input type='hidden' value="+resp[i].booknumber+"><div class='row' style='height: 100%'>"
		    			  +"<div class='col-3' style='padding: 1rem;'><img src='/images/anywayloveS.png' class='w-100 h-100'>"
						+"</div><div class='col-9' style='position: relative'><div class='pre-title' style='color: #637381;'>"+resp[i].title+"</div>"
						+"	<div class='body6' style='color: #637381;'>"+resp[i].datee+"</div>"
					+"</div></div></div></a>"); 
			} if(resp[i].category == 'P'){
				$(".pre-ticket-row").append("<a class='a' href='/mypage/proTicketDetailview?pro_booknumber="+resp[i].booknumber+"' ><div class='col-6 pre-ticket'><input type='hidden' value="+resp[i].booknumber+"><div class='row' style='height: 100%'>"
		    			  +"<div class='col-3' style='padding: 1rem;'><img src="+resp[i].sysname+" class='w-100 h-100 imgimg'>"
						+"</div><div class='col-9' style='position: relative'><div class='pre-title' style='color: #637381;'>"+resp[i].title+"</div>"
						+"	<div class='body6' style='color: #637381;'>"+resp[i].datee+"</div>"
					+"</div></div></div></a>"); 
			}
		    	  console.log("resp.length : " + resp.length);
			}
		},
		});	
	
	let limit = 11;
	
	
  	$(document).scroll(function() {
    let maxHeight = $(document).height();
    let currentScroll = $(window).scrollTop() + $(window).height();
	    /* let maxHeight = $(document).height();
	    let currentScroll = $(window).scrollTop() + $(window).height(); */
	   
	    if (maxHeight <= currentScroll+100) {
	    	console.log("origin limit : " + limit);
	    	$.ajax({
				url:"/mypage/mypreTicket",
				data:{limit : limit},
				async: false,
				dataType:"json", // == JSON.parse(resp);
				success: function (resp) {
					for(let i = 0 ; i < resp.length; i++) {
						if(resp[i].category =='E'){
						  $(".pre-ticket-row").append("<a class='a' href='/mypage/myTicketDetailview?et_booknumber="+resp[i].booknumber+"' ><div class='col-6 pre-ticket'><input type='hidden' value="+resp[i].booknumber+"><div class='row' style='height: 100%'>"
				    			  +"<div class='col-3' style='padding: 1rem;'><img src='/images/anywayloveS.png' class='w-100 h-100'>"
								+"</div><div class='col-9' style='position: relative'><div class='pre-title' style='color: #637381;'>"+resp[i].title+"</div>"
								+"	<div class='body6' style='color: #637381;'>"+resp[i].datee+"</div>"
							+"</div></div></div></a>"); 
						} if(resp[i].category == 'P'){
							$(".pre-ticket-row").append("<a class='a' href='/mypage/proTicketDetailview?et_booknumber="+resp[i].booknumber+"' ><div class='col-6 pre-ticket'><input type='hidden' value="+resp[i].booknumber+"><div class='row' style='height: 100%'>"
					    			  +"<div class='col-3' style='padding: 1rem;'><img src='/images/anywayloveS.png' class='w-100 h-100 imgimg'>"
									+"</div><div class='col-9' style='position: relative'><div class='pre-title' style='color: #637381;'>"+resp[i].title+"</div>"
									+"	<div class='body6' style='color: #637381;'>"+resp[i].datee+"</div>"
								+"</div></div></div></a>"); 
						}
				    	  console.log("resp.length : " + resp.length);
					}
					limit = limit + resp.length;
			    	console.log("change limit : " + limit);	
				},
				});
	    	} 
	      }) 
}

		$(window).resize(function() { //창크기 변화 감지
			open_chatroom();
		});

		function open_chatroom() {
			var windowWidth = $(window).width();
			if (windowWidth < 992) { //창 가로 크기가 500 미만일 경우  
				$(".navi-menu").css({
					"display" : "none"
				});
			} else { //창 가로 크기가 500보다 클 경우  
				$(".navi-menu").css({
					"display" : "block"
				});
			}
		}
		//티켓 상세페이지
		$(".ticket").on("click",function(){
			cnt = $($(this).children()[0]).val();
			location.href="/mypage/myTicketDetailview?et_booknumber="+cnt;
		})	
			$(".pticket").on("click",function(){
			cnt = $($(this).children()[0]).val();
			location.href="/mypage/proTicketDetailview?pro_booknumber="+cnt;
		})	
		$(".pre-ticket").on("click",function(){
			cnt = $($(this).children()[0]).val();
			location.href="/mypage/myTicketDetailview?et_booknumber="+cnt;
		})
		//쿠폰
		   $("#registration").on("click",function(){
      window.open("/coupon/toregistration", "",
      "top=100,left=200,width=700,height=500");
      })
		
		//선택박스 화살표 방향 이미지
		let click = true;
		$("#select").on("click",function() {
				if (click == false) {
					$("#select").css({"background" : "url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size" : "1.596rem"});
					$(".navi-menu").toggle();		
					click = true;
				} else {$("#select").css({"background" : "url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ","background-size" : "01.596rem"});
					$(".navi-menu").toggle();
					click = false;
				}
		});
		

//         var qrcode = new QRCode(document.getElementById("qr"), {
//             text: "${url}",
//             width: 90,
//             height: 90,
//             colorDark : "#000000",
//             colorLight : "#ffffff",
//             correctLevel : QRCode.CorrectLevel.H
//         });
        
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

		for(let i=0;i<$(".qr").length;i++){
			console.log($(".booknumber")[i]);
			console.log($(".booknumber")[i].value);
			var qrcode = new QRCode($(".qr")[i], {
	            text: "http://${ip}/qr/useticket?et_booknumber="+$(".booknumber")[i].value,
	            width: 90,
	            height: 90,
	            colorDark : "#000000",
	            colorLight : "#ffffff",
	            correctLevel : QRCode.CorrectLevel.H
	        });
		}
//         var qrcode = new QRCode(document.getElementById("qr"), {
//             text: "${url}",
//             width: 90,
//             height: 90,
//             colorDark : "#000000",
//             colorLight : "#ffffff",
//             correctLevel : QRCode.CorrectLevel.H
//         });

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