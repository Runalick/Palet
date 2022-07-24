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
<script src="/js/qrmaker.js"></script>
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<style>
@charset "UTF-8";

@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);


@media ( min-width : 375px) {
	.container {
		max-width: 1280px;

	}
	html {
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


.H2 {
	/* Headline/H2 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 2.25rem;
	line-height: 2.688rem;
}
.body1{
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
.H1{
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
#row1>div {
	padding-left: 0px;
	padding-right: 0px;
}
<!--
-->

.body4{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	}

.body3{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
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
	
	
}
@media ( max-width : 500px) {
	.select-ul{
	 width:390px;
	}
}
@media ( min-width : 500px) {
	.select-ul{
	 width:406px;
	}
}


@media ( max-width : 991px) {
	.main{
	display:none;
	}
	.navi-menu{
	display:none;
	}
	.content div{
	padding-right:0.5rem;
	padding-left:0.5rem;
	} 
	.content{
	  width: calc(100% - 1.625rem);
	  padding-left:0px;
	}
	.navi{
	padding:0rem;
	}
	.body3{
	font-size:1.625rem;
	}
	.body4{
	font-size:1.875rem;
	}
	
}

/* 네비 */
.content{
margin-top:1rem;

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
#select, #selectcancel{
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
.info{
font-family: 'Spoqa Han Sans Neo';
font-size:1.625rem;
padding-bottom:1rem;

}
.body5{
font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.6rem;
	line-height: 1.875rem;
}
.content-row .body4, .content-row .body5{
margin-bottom:0.8rem;
}
.ticket-row .body4{
font-weight:500;
font-size:1.675rem;
}
.modal-ticket-row .body4{
font-weight:500;
font-size:1.675rem;
margin-bottom:0.25rem;
}
.total{
font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.425rem;
	line-height: 1.875rem;
	
}
.cancel-div{
font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.225rem;
	line-height: 1.675rem;
}
.total-price{
font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 2rem;
	line-height: 1.875rem;
}
.btnbtn{
display:inline-block;
width: 180px;
height: 50px;
background: #161C24;
border-radius: 1.25rem;
color:white;
font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 600;
	font-size: 1.625rem;
	line-height: 1.875rem;
margin-right:1rem;
border:0px;
}
.btnbtn:hover{
background:#454F5B;
color:white;
}
 .container, .container-fluid,  .container-lg, .container-md,
   .container-sm, .container-xl, .container-xxl {
   overflow-x: hidden;
   overflow-y: hidden;
} 
/* 모달티켓 */
.ticket {
	width: 44.5rem;
	height: 14.5rem;
	background: black;
	border-radius:0.375rem;
}
.qr {
	width: 100px;
	height: 100px;
	background: white;
	position: absolute;
	bottom: 1.5rem;
	right:2rem;

}
.H5 {
	font-family: 'Spoqa Han Sans Neo';
	padding-bottom: 1.2rem;
	font-size: 1.625rem;
	font-weight: 700;
	line-height: 1.875rem;
}
.modal-content{
width:50rem;
}
/* 모달환불 */
.input{
margin-top:0.75rem;
width:100%;
display: flex;
flex-direction: row;
align-items: center;
padding: 10px 12px;
gap: 10px;
background: #FFFFFF;
border: 1px solid #CFD4D9;
box-shadow: 0px 0px 0px #CBDAFC;
border-radius: 5px;
height:8.25rem; 
resize:none;
 padding:0.25rem;
 margin-bottom:2rem;
}
.payinfo .col-7{
text-align:right;
}
.paymodal-title{
font-family: 'Spoqa Han Sans Neo';
	font-size: 1.625rem;
	font-weight: 500;
	line-height: 1.875rem;
}
.paymodal-title2{
font-family: 'Spoqa Han Sans Neo';
	font-size: 1.425rem;
	font-weight: 500;
	line-height: 1.875rem;
}


#selectcancel {
	width: 23.5rem;
	height: 3rem;
	line-height: 2.35rem;
	box-sizing: border-box;
	
	border: 0.063rem solid #CFD4D9;
	box-shadow: 0px 0px 0px #CBDAFC;
	border-radius: 0.313rem;
	margin-bottom: 3.75rem;
	color: #637381;
	background: #FFFFFF url('/images/uparrow.png') no-repeat 97% 50%/15px auto;
	background-size: 0.796rem;
	padding: 0.3rem 1.875rem 0.3rem 0.6rem;
	border: 0.06rem solid #b8b8b8;
	overflow: hidden;
	font-size: 1rem;
	color: #666666;
}
#selectcancel{
width:100%;
margin-top:1rem;
margin-bottom:1rem;
}

.select-ul {
	list-style-type: none;
	overflow-x: hidden;
	overflow-y: auto;
	font-size: 1rem;
	color: #666666;
	border: 1px solid #b8b8b8;
	display: none;
	position: absolute;
	top:3rem;
	background: #FFFFFF;
	border-top: none;
	padding: 0px;
}
#select-wrap .select-ul{
top:4rem;
}
.select-ul li {
	padding: 0.625rem 0 0.625rem 1.125rem;
	width: 100%;
	
}

.select-ul li:hover {
	background-color: #F4F6F8;
}
.total-info{
margin-bottom:0.5rem;
}
.modal-footer{
display:block;
}
.vector{
border: 1px solid #DFE3E8;
width:2.5rem;
height:2.5rem;
border-radius:2.5rem;
background: #FFFFFF;
transition: 0.3s
}
.vector:hover,.btn2:hover{
background:#F4F6F8;
}
button{
transition: 0.3s;
}

.btn2{
	display:inline-block;
	width: 180px;
	height: 50px;
	background:white;
	border-radius: 1.25rem;
	color:black;
	border:1px solid black;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 600;
	font-size: 1.625rem;
	line-height: 1.875rem;
	margin-right:1rem;
	border:1px solid black;
	
}

</style>
</head>
<body>


		<div class="container-fluid">
			<div class="container-fluid"
			style="background-color: white; ">
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
					                        
					                <li class="nav-item"> <a id="Logout" class="nav-link logout" href="#"
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
						                        
					                <li class="nav-item"> <a id="Logout" class="nav-link logout" href="#"
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
		<div class="container" >
			<div class="row mypage-wrap"  >
			<div class="row" id="row1">
			<div class="col-12 d-block d-lg-none H1 small-navi" >
			<button id="select" >MY PAGE</button>
			</div>
			
			
				<div class="navi" >
				<a href="#" style=" font-size:1.625rem;" class="main" >
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
				
				
				
				
				
				
				<div class="content" style="padding-left:20px;">
				<div class="row content-row" style="min-width:730px;">
				<div class="col-1" >
						<button class="vector" >
						<img src="/images/Vector.png">
						</button>
					</div>
					<div class="col-10 info"  >
					<strong>주문정보</strong>
					</div>
				
				
					<div class="col-3 col-md-3 body4" style="margin-top:1.25rem;">주문번호</div>
					<div class="col-9 col-md-9 body4" style="margin-top:1.25rem;">${dto.et_booknumber }</div>
					<div class="col-3 col-md-3 body4">주문일자</div>
					<div class="col-9 col-md-9 body4">${dto.et_buydate }</div>
					<div class="col-3 col-md-3 body4">주문자</div>
					<div class="col-9 col-md-9 body4">${dto.et_username }</div>
					<div class="col-3 col-md-3 body4">주문처리상태</div>
					<div class="col-9 col-md-9 body4" id="state"></div>
					<div class="col-3 col-md-3 body4" style="margin-bottom:2rem;">결제수단</div>
					<div class="col-9 col-md-9 body4" style="margin-bottom:2rem;">${dto.et_paymethod }</div>
				
				<div class="col-12 info"><strong>예매자 정보</strong></div>
				<div class="col-3 col-md-3 body5" style="margin-top:1.25rem;">이름</div>
					<div class="col-9 col-md-9 body5" style="margin-top:1.25rem;">${dto.et_username }</div>
					<div class="col-3 col-md-3 body5">전화번호</div>
					<div class="col-9 col-md-9 body5">${dto.et_phone }</div>
					<div class="col-3 col-md-3 body5" style="margin-bottom:3rem;">이메일 주소</div>
					<div class="col-9 col-md-9 body5" style="margin-bottom:3rem;">${dto.et_email }</div>
				
				<div class="col-2" style="height:12.5rem;margin-bottom:5.5rem;  ">
				<img src="/images/anywayloveS.png" class="h-100" style="width:8.525rem; margin-bottom:5.5rem;">
				</div>
					<div class="col-9" style="margin-bottom:5.5rem;">
						<div class="row ticket-row" >
							<div class="col-12 body4" style="padding-top:1rem;">${dto.et_title }</div>
							<div class="col-12 body4">${dto.et_booknumber }</div>
							<div class="col-12 body4" id="price">${dto.et_cost/ dto.et_count  }원</div>
						</div>
					</div>
				<script>
				price = ${(dto.et_cost+dto.et_usedpoint+dto.et_cpdiscount)/dto.et_count  };
				$("#price").text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
				</script>
				<div class="col-4 total total-info">총 수량</div>
				<div class="col-8 total total-info" >${dto.et_count }개</div>
				<div class="col-4 total total-info">적립 포인트</div>
				<div class="col-8 total getpoint total-info"></div>
				<div class="col-4 total total-info">쿠폰할인</div>
				<div class="col-8 total coupon total-info"></div>
				<div class="col-4 total total-info">배송비</div>
				<div class="col-8 total total-info">3000</div>
				<div class="col-4 total "  style="margin-bottom:1.25rem">포인트 사용</div>
				<div class="col-8 total usedpoint " style="margin-bottom:1.25rem"></div>
				<div class="col-4 total "  style="margin-bottom:10rem">총 주문금액</div>
				<div class="col-8 total-price" style="margin-bottom:10rem"></div>	
				<script>
				price = ${dto.et_cost  };
				$(".total-price").text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
				</script>
				<div class="col-12">
				<c:if test="${dto.et_state == 'BU' }">
				<button class="btnbtn" data-bs-toggle="modal" data-bs-target="#exampleModa2">구매 취소</button>
				</c:if>
				<button class="btn2" data-bs-toggle="modal" data-bs-target="#exampleModal">티켓 확인하기</button>
				</div>
				</div>
				</div>

<!-- 티켓 보여주는 모달 -->
<div class="modal fade" id="exampleModal" tabindex="-1" >
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title body4">티켓보기</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" >
								<div class="col-12 ticket">
									<input type="hidden" class="booknumber" value="${dto.et_booknumber }">
									<div class="row" style="height: 100%">
										<div class="col-3"
											style="padding: 1rem; padding-left: 1.5rem;">
											<img src="/images/anywayloveS.png" class="w-100 h-100">
										</div>
										<div class="col-9" style="position: relative">
											<div class="H5" style="color: white; padding: 1.25rem 0px;">${dto.et_title }</div>
											<div class="body3" style="color: white">예매번호 :
												${dto.et_booknumber }</div>
											<div class="body3" style="color: white;">${dto.et_date }</div>
											<c:if test="${dto.et_state =='BU' }">
											<div class="qr" id="qr" style="border: 5px solid white;"></div>
											</c:if>
										</div>

									</div>

								</div>
							</div>
      <div class="modal-footer"  style="text-align:center;">
        <button type="button" class="btn btn-dark" data-bs-dismiss="modal">닫기</button>
        
      </div>
    </div>
  </div>
</div>

<!-- 구매 취소 모달 -->
<div class="modal fade" id="exampleModa2" tabindex="-1" >
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title paymodal-title">구매 취소</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" style="padding-right:0px;">
			<div class="row">
		
			<div class="col-3" style="height:12.5rem;margin-bottom:3rem;width:9.5rem ; margin-left:1.563rem; ">
				<img src="/images/anywayloveS.png" class="h-100" style="width:8.525rem; margin-bottom:5.5rem;">
				</div>
					<div class="col-8" style="margin-bottom:3rem; width:28rem;">
						<div class="row modal-ticket-row" >
							<div class="col-12 paymodal-title2" style="padding-top:1rem;">${dto.et_title }</div>
							<div class="col-12 paymodal-title2">${dto.et_booknumber }</div>
							<div class="col-12 paymodal-title2" id="modal-price">${dto.et_cost/ dto.et_count  }원</div>
						<script>
				price = ${(dto.et_cost+dto.et_usedpoint+dto.et_cpdiscount)/dto.et_count  };
				$("#modal-price").text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
				</script>
						</div>
					
					</div>
					<div class="row" style="padding-right:0.25rem; width:41.7rem;">
						<div class="col-12 paymodal-title">취소 사유</div>
					<div id="select-wrap" style="position:relative;">
								<div id="selectcancel">상품옵션을 선택하세요</div>
								<ul class="select-ul">
									
										<li class="li" >단순 변심</li>
											<li class="li" >주문 실수</li>
											<li class="li write" >직접 입력</li>
								</ul>
							</div>

						<div class="col-12 write-contents" style="display:none;">
							<textarea class="cancel-div input" id="contents"maxlength="80" placeholder="취소 사유를 입력해 주세요." ></textarea>
						</div>
					</div>
						<div class="row payinfo" style="margin-bottom:1rem;">
							<div class="col-12 pay paymodal-title" style="margin-bottom:1rem;">결제/환불 금액</div>
							<div class="col-5 total" style="margin-bottom:1rem">상품금액</div>
							<div class="col-7 total real-price" style="margin-bottom:1rem"></div>
							<div class="col-5 total" style="margin-bottom:1rem">총 수량</div>
							<div class="col-7 total" style="margin-bottom:1rem">${dto.et_count }장</div>
							<div class="col-5 total" style="margin-bottom:1rem">쿠폰할인</div>
							<div class="col-7 total coupon" style="margin-bottom:1rem"></div>
							<div class="col-5 total" style="margin-bottom:1rem">사용쿠폰</div>
							
							<c:choose>
							<c:when test="${cdto.category !=null }">
							<div class="col-7 total" style="margin-bottom:1rem">${cdto.category }</div>
							</c:when>
							<c:otherwise>
							<div class="col-7 total" style="margin-bottom:1rem">사용한 쿠폰 없음</div>
							</c:otherwise>
							</c:choose>
							
							
							<div class="col-5 total" style="margin-bottom:1rem">포인트 사용</div>
							<div class="col-7 total usedpoint" style="margin-bottom:1rem"></div>
							<div class="col-5 total" style="margin-bottom:1rem">포인트 적립</div>
							<div class="col-7 total getpoint" style="margin-bottom:1rem"></div>
							
							<div class="col-5 total" >최종 환불금액</div>
							<div class="col-7 total-price" style="color:red;"></div>
							<script>
							price=${dto.et_cost} + ${dto.et_usedpoint}+ ${dto.et_cpdiscount}
							coupon=${dto.et_cpdiscount}
							usedpoint=${dto.et_usedpoint }
							getpoint=${dto.et_point }
							total_price=${dto.et_cost }
							$(".real-price").text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
							$(".coupon").text("-"+coupon.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
							$(".usedpoint").text("-"+usedpoint.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
							$(".getpoint").text("+"+getpoint.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
							$(".total-price").text(total_price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
							</script>
						</div>
						<div class="row">
							<div class="col-12 cancel-div" style="color:#919EAB;">
							-주문취소 승인 후 적립금과 사용 쿠폰은 즉시 반환되며 다시 사용하실 수 있습니다.
							</div>
							<div class="col-12 cancel-div" style="color:#919EAB;">
							-전체 환불만 가능합니다.
							</div>
						</div>
			</div>
	  </div>
      <div class="modal-footer" style="text-align:center;">
        <button type="button" class="btn btn-secondary total" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-dark total" data-bs-target="#exampleModalToggle3" data-bs-toggle="modal">확인</button>
      </div>
    </div>
  </div>
</div>


<!-- 결제취소 재확인 모달 -->
<div class="modal fade" id="exampleModalToggle3" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title paymodal-title">구매 취소</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body paymodal-title2 text-center" style="padding:3rem;">
        구매 취소 하시겠습니까?
      </div>
      <div class="modal-footer"  style="text-align:center;">
        <button class="btn btn-secondary total" data-bs-dismiss="modal">취소</button>
        <button class="btn btn-dark total pay-cancel" value=${dto.et_booknumber } data-bs-target="#exampleModalToggle4" data-bs-toggle="modal">확인</button>
      </div>
    </div>
  </div>
</div>


<!-- 결제취소 확인 모달 -->
<div class="modal fade" id="exampleModalToggle4" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title paymodal-title">구매 취소</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body paymodal-title2 text-center" style="padding:3rem;">
        구매가 취소되었습니다.
      </div>
      <div class="modal-footer"  style="text-align:center;">
        <button class="btn btn-dark total ok" data-bs-dismiss="modal">확인</button>
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
                    <div class="col-12 H3" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
                    <div class="col-12 body2" style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2" style = "color: #637381;">3호선 경복궁역 지하 1층 | contact@palet.com</div>

                </div>
            </div>
        </div>

	</div>
	<script>
	$(".vector").on("click",function(){
		location.href="/mypage/myTicket";
	})
	
	$(".ok").on("click",function(){
		location.reload();
	})
	//구매 취소 확인 버튼
	$(".pay-cancel").on("click",function(){
		console.log($(".input").val());
		$.ajax({
			url:"/mypage/payCancel",
			data:{content:$(".input").val(),booknumber:$(this).val(),category:'E'}
		}).done(function(resp){
			console.log("성공");
			location.reload();
		})
	})
	
	
	
	//환불 li
	
	
	$(".li").on("click",function(){
		$("#selectcancel").text($(this).text());
		if($(this).attr("class")=='li write'){
			$(".write-contents").css("display","block");
			$(".input").text("");
		}else{
			$(".write-contents").css("display","none");
			$(".input").text($(this).text());
		}
		$(".select-ul").toggle();
	})
	//환불 select
	let clickselect = false;
	$("#selectcancel").on("click",function(){
		if(click==false){
			$("#selectcancel").css({"background":"url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "0.796rem"});
			clickselect = true;
		}else{
			$("#selectcancel").css({"background":"url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ","background-size": "0.796rem"});
			clickselect = false;
		}
	});
	//선택박스누를 시 옵션 열기
	$("#selectcancel").on("click", function () {
	    $(".select-ul").toggle();
	})
	
	/* 셀렉트 박스 옵션 선택 */

	
// /* 셀렉트 박스 이외 선택시 보이지 않게 하기 */
$("body").on("click", function(e){
	if($(".select-ul").css("display") == "block"){
    	if($("#select-wrap").has(e.target).length == 0){
        	$(".select-ul").hide()
        }
    }

})
	
	
	$(document).ready(function(){
		state();
	});
	function state(){
		if(${dto.et_state =='BU'}){
			console.log("hi")
			$("#state").text("구매완료");
			$("#state").css("font-weight","700");
		}else if(${dto.et_state =='AU'}){
			console.log("bte")
			$("#state").text("사용완료");
			$("#state").css("font-weight","700");
			$("#state").css("color","red");
		}else if(${dto.et_state =='BC'}){
			$("#state").text("취소 처리중");
			$("#state").css("font-weight","700");
			$("#state").css("color","red");
		}else if(${dto.et_state =='AC'}){
			$("#state").text("취소완료");
			$("#state").css("font-weight","700");
			$("#state").css("color","red");
		}
	}	

	
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
	
	//쿠폰 등록
	   $("#registration").on("click",function(){
      window.open("/coupon/toregistration", "",
      "top=100,left=200,width=700,height=500");
      })
	
	//선택박스 화살표 방향 이미지
	let click = true;
	$("#select").on("click",function(){
		if(click==false){
			$("#select").css({"background":"url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ","background-size": "1.596rem"});
			$(".navi-menu").toggle();
			
			click = true;
		}else{
			$("#select").css({"background":"url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "01.596rem"});
			$(".navi-menu").toggle();
			click = false;
		}
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