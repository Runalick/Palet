<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
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
</head>
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

#Class {
	width: 2.813rem;
	height: 1.5rem;
}

#Shop {
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

.h1 {
	padding: 0px;
	color: #FFFFFF;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 4rem;
	line-height: 4.813rem;
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


</style>

<body>
<div class="container-fluid">
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

		<div class="container">
			<div class="row mypage-wrap" >
				
				<div class="row" id="row1">
				<div class="col-12 d-block d-lg-none H1 small-navi" >
				<button id="select" >MY PAGE</button>
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
							<div class="body4">My Shopping</a></div>
							<ul>
								<li class="body3"><a href="/mypage/myShopping">주문내역</a></li>
								<li class="body3"><a href="#">취소/반품 내역</a></li>
								<li class="body3"><a href="/delivery/selectAllAddress">배송지 관리</a></li>
							</ul>
						</li>
						<li>
							<div class="body4">My Info</div>
							<ul>
								<li class="body3"><a href="#">나의 회원등급</a></li>
								<li class="body3"><a href="#">나의 쿠폰</a></li>
								<li class="body3"><a href="#" id="registration">쿠폰등록</a></li>
								<li class="body3"><a href="#">개인정보 변경/탈퇴</a></li>
							</ul>
						</li>
						</ul>
					</div>
					</div>
				
				
				
				
				
				
				<div class="content" style="margin-top:1rem; padding-left: 20px;" >
					<div class="row" id="row1">
						<div class="col-12 main-info" >주문 상세</div>
						
						<div class="col-12" style="border-top:1px solid black;margin-top:2.5rem;">
							<div class="row main-area">
								<div class="col-12 caption">주문정보</div>
								<div class="col-3">주문번호</div>
								<div class="col-9">${detail.merchant_uid }</div>
								<div class="col-3">주문일자</div>
								<div class="col-9">${detail.pay_time }</div>
								<div class="col-3">주문자</div>
								<div class="col-9">${name }</div>
								<div class="col-3">주문자ID</div>
								<div class="col-9">${detail.email }</div>
								<div class="col-3">주문처리상태</div>
								<div class="col-9" id="state">${detail.state }</div>
								<div class="col-3">결제수단</div>
								<div class="col-9">${detail.card_name } - ${detail.card_number } </div>
								<div class="col-3">할부기간</div>
								<div class="col-9" id="quota">${detail.card_quota }개월</div>
							</div>	
							<div class="row main-area">	
								<div class="col-12 caption">배송지정보</div>
								<div class="col-3">수령인</div>
								<div class="col-9">${detail.name }</div>
								<div class="col-3">우편번호</div>
								<div class="col-9">${detail.zipcode }</div>
								<div class="col-3">주소</div>
								<div class="col-9">${detail.address1 }</div>
								<div class="col-3"></div>
								<div class="col-9">${detail.address2 }</div>
								<div class="col-3">휴대전화</div>
								<div class="col-9">${detail.phone }</div>
								<div class="col-3">배송메시지</div>
								<div class="col-9">${detail.delivery_text }</div>
							</div>
							<div class="row main-area">	
								<div class="col-12 caption">상품정보</div>
								<div class="row">
									<div class="col-5">
										<img src="/images/anywayloveS.png" class="w-100 h-100">
										<%-- <img class='con' src='/shop/shopHome/"+ ${gp_sysname }+"'> --%>
									</div>
									<div class="col-7">
										<div class="row">
											<div class="col-12">${product.e_name }</div>
											<div class="col-12">${product.g_name }</div>
											<div class="col-12">${product.G_OPTION }</div>
											<div class="col-12">${product.g_count }</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row main-area">
								<div class="col-12 caption">결제정보</div>
								<div class="col-3">적립 포인트</div>
								<div class="col-9">${detail.point }</div>
								<div class="col-3">상품 금액</div>
								<div class="col-9" id="price"></div>
								<div class="col-3">배송비</div>
								<div class="col-9">3000</div>
								<div class="col-3">쿠폰할인</div>
								<div class="col-9">${detail.cpdiscount }</div>
								<div class="col-3">포인트 사용</div>
								<div class="col-9">${detail.usedpoint }</div>
								<div class="col-3">총 주문 금액</div>
								<div class="col-9">${detail.totalprice }</div>
								
								
							</div>
							<button class='ok' id="cancel" data-bs-toggle='modal' data-bs-target='#exampleModa2'>주문취소</button>
						
						</div>
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
						
							<div class="col-3" style="height:12.5rem;margin-bottom:3rem;width:9.5rem  ">
								<img src="/images/anywayloveS.png" class="h-100" style="width:8.525rem; margin-bottom:5.5rem;">
								</div>
									<div class="col-8" style="margin-bottom:3rem; width:30rem;">
										<div class="row modal-ticket-row" >
											<div class="col-12 paymodal-title2" style="padding-top:1rem;">${product.e_name }</div>
											<div class="col-12 paymodal-title2">${detail.merchant_uid }</div>
											<div class="col-12 paymodal-title2" id="modal-price">${detail.totalprice/ detail.g_count  }원</div>
										<script>
										
								price = ${(detail.totalprice+detail.usedpoint+detail.cpdiscount)/detail.g_count  };
								$("#modal-price").text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
								</script>
										</div>
									
									</div>
									<div class="row" style="padding-right:0.25rem; width:41.7rem;">
										<div class="col-12 paymodal-title">취소 사유</div>
									<div id="select-wrap" style="position:relative;">
												<div id="selectcancel">취소사유를 선택하세요</div>
												<ul class="select-ul">
													<li class="li" >단순 변심</li>
													<li class="li" >주문 실수</li>
													<li class="li write" >직접 입력</li>
												</ul>
											</div>
				
										<div class="col-12 write-contents" style="display:none;">
											<textarea class="cancel-div input" id="contents" placeholder="취소 사유를 입력해 주세요." ></textarea>
										</div>
									</div>
										<div class="row payinfo" style="margin-bottom:1rem;">
											<div class="col-12 pay paymodal-title" style="margin-bottom:1rem;">결제/환불 금액</div>
											<div class="col-5 total" style="margin-bottom:1rem">상품금액</div>
											<div class="col-7 total real-price" style="margin-bottom:1rem"></div>
											<div class="col-5 total" style="margin-bottom:1rem">상품 개수</div>
											<div class="col-7 total" style="margin-bottom:1rem">${detail.g_count }개</div>
											<div class="col-5 total" style="margin-bottom:1rem">쿠폰할인</div>
											<div class="col-7 total coupon" style="margin-bottom:1rem"></div>
											<div class="col-5 total" style="margin-bottom:1rem">사용쿠폰</div>
											<div class="col-7 total" style="margin-bottom:1rem">${detail.cpserial }</div>
											<div class="col-5 total" style="margin-bottom:1rem">포인트 사용</div>
											<div class="col-7 total usedpoint" style="margin-bottom:1rem"></div>
											<div class="col-5 total" style="margin-bottom:1rem">포인트 적립</div>
											<div class="col-7 total getpoint" style="margin-bottom:1rem"></div>
											<div class="col-5 total" style="margin-bottom:1rem">배송료</div>
											<div class="col-7 total deltax" style="margin-bottom:1rem"></div>
											
											<div class="col-5 total" >최종 환불금액</div>
											<div class="col-7 total-price" style="color:red;"></div>
											<script>
											price=${detail.totalprice} + ${detail.usedpoint }+ ${detail.cpdiscount }-3000
											coupon=${detail.cpdiscount }
											usedpoint=${detail.usedpoint }
											getpoint=${detail.point }
											total_price=${detail.totalprice}
											deltax = 3000
											$(".real-price").text(price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
											$(".coupon").text("-"+coupon.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
											$(".usedpoint").text("-"+usedpoint.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
											$(".getpoint").text("+"+getpoint.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
											$(".deltax").text("+"+deltax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
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
				      <div class="modal-footer">
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
				      <div class="modal-footer">
				        <button class="btn btn-secondary total" data-bs-dismiss="modal">취소</button>
				        <button class="btn btn-dark total pay-cancel" value=${detail.merchant_uid } data-bs-target="#exampleModalToggle4" data-bs-toggle="modal">확인</button>
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
				      <div class="modal-footer">
				        <button class="btn btn-dark total ok" data-bs-dismiss="modal">확인</button>
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
</div>	
	
	
<script>
//구매 취소 확인 버튼
$(".pay-cancel").on("click",function(){
	console.log($(".input").val());
	$.ajax({
		url:"/mypage/payCancel",
		data:{content:$(".input").val(), booknumber:$(this).val(),category:'G'}
	}).done(function(resp){
		console.log("성공");
		location.reload();
	})
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
		$("#selectcancel").css({"background":"url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ","background-size": "0.796rem"});
		clickselect = true;
	}else{
		$("#selectcancel").css({"background":"url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "0.796rem"});
		clickselect = false;
	}
});
//선택박스누를 시 옵션 열기
$("#selectcancel").on("click", function () {
    $(".select-ul").toggle();
})

/* 셀렉트 박스 옵션 선택 */


///* 셀렉트 박스 이외 선택시 보이지 않게 하기 */
$("body").on("click", function(e){
if($(".select-ul").css("display") == "block"){
	if($("#select-wrap").has(e.target).length == 0){
    	$(".select-ul").hide()
    }
}

})

	window.onload = function(){
		let price = ( ${detail.totalprice } + ${detail.usedpoint } + ${detail.cpdiscount } - 3000 );
		$("#price").text(price);
		
		if(${detail.card_quota } == 0){
			$("#quota").text("일시불"); 
		}
	
		if(($("#state").text())=='BU'){
			$("#state").text("주문완료");
		} else if (($("#state").html())=='CU'){
			$("#state").text("배송 중");
			$("#cancel").attr('style',"display:none;");
		} else if (($("#state").html())=='AU'){
			$("#state").text("배송완료");
			$("#cancel").attr('style',"display:none;");
		} else if (($("#state").html())=='BC'){
			$("#state").text("취소 중");
			$("#cancel").attr('style',"display:none;");
		} else if (($("#state").html())=='AC'){
			$("#state").text("취소완료");
			$("#cancel").attr('style',"display:none;");
		} 
	
		
	}
		
		
</script>
</body>
</html>