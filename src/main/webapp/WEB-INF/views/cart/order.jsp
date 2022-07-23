<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Palet</title>
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
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!--폰트어썸 최신 CDN-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- 우편번호 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
/* footer */
#footer {
	background: #F4F6F8;
	height: 13.25rem;
}

<!--
-->
.h2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 2.25rem;
	line-height: 2.688rem;
}

.h3 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
}

.body2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;
	line-height: 1.75rem;
}

.body1 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.25rem;
	line-height: 1.875rem;
}
.H3{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 1.25rem;
line-height: 1.5rem;
}
.H4{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 1rem;
line-height: 1.875rem;
/* identical to box height, or 188% */
text-align: right;
}
.Caption{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 0.875rem;
line-height: 1.125rem;
}
/* 본문시작 */
.btn1 {
	flex-direction: row;
	justify-content: center;
	align-items: center;
	padding: 1.125rem 1.5rem;
	gap: 10px;
	color: white;
	width: 10.188rem;
	height: 3.75rem;
	/* Gray/900 */
	background: #161C24;
	border-radius: 20px;
	margin-top: 2.5rem;
	/* Button/Button */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.25rem;
	/* identical to box height */
	text-align: center;
	color: #FFFFFF;
	/* Inside auto layout */
	flex: none;
	order: 0;
	flex-grow: 0;
}

#cart {
	
	margin-left: 2.5rem;
	margin-bottom:2.5rem;
}
#ordertitle{
text-align: left;
padding-bottom:2.5rem;
width:20rem;
padding-top:0.425rem;
}
#backbtn{
	box-sizing: border-box;
	background: #FFFFFF;
	/* Gray/300 */
	border: 1px solid #DFE3E8;
	border-radius: 50%;
	width:3.75rem;
	height:3.75rem;
}
.margin1{
width:3.75rem;
height:3.75rem;
padding:0px;
}
#mainparent {
	padding-left: 2.5rem;
	padding-right: 2.5rem;
}

.bar{
width:1.063rem;
padding:0px;
}

.list{
box-sizing: border-box;
width: 49.25rem;
/* height: 10rem; */
background: #FFFFFF;
/* Gray/300 */
border: 1px solid #DFE3E8;
border-radius: 1.25rem;
margin-left:1.6rem;
/* position:relative; */
overflow:hidde;
}
.productimg{
width:10rem;
position:relative;
border-radius: 20px 0px 0px 20px;
}

.con{
	width:100%;
	height:100%;
}
.productInfo>div{
text-align:left;
margin-left:1.25rem;
}
.productInfo{
padding:0px;
}
.title{
margin-top:1.875rem;
margin-bottom:0.5rem;
}
.price{
margin-top:0.5rem;
margin-bottom:0.5rem;

}
.cnt{
width:3.75rem;
height:1.75rem;

}
.info{
text-align:left;
}
/* 결제부분 */

#payment-area{
width:23.5rem;

float:right;
}
#total-area{
box-sizing: border-box;
width: 23.5rem;
height: 15rem;
background: #F9FAFB;
border: 1px solid #DFE3E8;
border-radius: 1.25rem;
margin:0px;
}
#total-area span{
display:inline-block;
}
#paybtn{
display: flex;
flex-direction: row;
justify-content: center;
align-items: center;
padding: 1.125rem 1.5rem;
gap: 0.625rem;
/* position: absolute; */
width: 23.5rem;
height: 3.75;
background: #161C24;
border-radius: 1.25rem;

font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 500;
font-size: 1.25rem;
line-height: 1.5rem;
/* identical to box height */

text-align: center;

color: #FFFFFF;
margin-top:1.25rem;
}
#span1{
width:5.063rem; 
height:1.875rem;
margin-right:2.438rem;
margin-bottom:0.5rem;
}
#span2{
margin-bottom:1.25rem;
margin-right:4.688rem;
width:2.813rem;
height:1.875rem;
}
#span3{
margin-right:1.125rem;
width:6.375rem;
height:1.5rem;
}
#span4{
width:9.375rem;
height:1.875rem;
margin-bottom:0.5rem;
}
#span5{
width:9.375rem;
height:1.875rem;
margin-bottom:1.25rem;
}
#span6{
width:9.375rem;
height:1.5rem;
text-align:right;

}
#span7{
width:5.875rem;
margin-right:1.625rem;
margin-top:1rem;
}
#span8{
width:9.375rem;
height:1.5rem;
text-align:right;
margin-top:1rem;
}
#span9{
width:1.875rem;
height:1.875rem;
margin-right:5.625rem;
margin-bottom:0.5rem;
}
#span10{
width:9.375rem;
height:1.5rem;
text-align:right;
margin-bottom:0.5rem;
}
.span{
display:line-block;
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 0.875rem;
line-height: 1.125rem;
color: #919EAB;
margin-bottom:0.375rem;
position:absolute;
left:0.063rem;
}

.span1{
display:line-block;
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 0.875rem;
line-height: 1.125rem;
color: #919EAB;
margin-bottom:0.438rem;
text-decoration-line: underline;
position:absolute;
}
#payspan1{
width:5.063rem; 
margin-right:0.375rem;

}
.payinfo{
position:absolute;
top:-2.75rem;
}
.body2input{
width:17.5rem;
height:3rem;
margin-right:1.25rem;
padding-left:0.75rem;
background: #FFFFFF;
border: 0.063rem solid #CFD4D9;
box-shadow: 0px 0px 0px #CBDAFC;
border-radius: 0.313rem;

}
.delivery-area{
padding:1.75rem;
margin-left:2rem;
background: #FFFFFF;
/* Gray/300 */
border: 1px solid #DFE3E8;
border-radius: 1.25rem;
}

#deliveryinfo{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 0.875rem;
line-height: 1.125rem;
color: #919EAB;
}
.inputaddress{
width: 37.5rem;
height: 3rem;
background: #F4F6F8;
border: 0.063rem solid #DFE3E8;
box-shadow: 0px 0px 0px #CBDAFC;
border-radius: 0.5rem;
color: #637381;
margin-bottom:0.5rem;
/* margin-left:0.75rem; */
}
.inputcode{
/* margin-left:0.75rem; */
margin-bottom:0.5rem;
width: 17.5rem;
height: 3rem;
background: #FFFFFF;
border: 0.063rem solid #CFD4D9;
box-shadow: 0px 0px 0px #CBDAFC;
border-radius: 0.313rem;
padding-bottom:0.5rem;
color: #637381;
}
/* 배송부분 */
/* 쿠폰부분 */
.warp-pay{
text-align:left;
margin-left:2.3rem;
margin-bottom:12.5rem;
}
/* select */

#select1, #select2 {
	width: 23.5rem;
	height: 3rem;
	line-height: 2.35rem;
	box-sizing: border-box;

	border: 0.063rem solid #CFD4D9;
	box-shadow: 0px 0px 0px #CBDAFC;
	border-radius: 0.313rem;
	margin-bottom: 1.5rem;
	color: #637381;
	background: #FFFFFF url('/images/uparrow.png') no-repeat 97% 50%/15px auto;
	background-size: 0.796rem;
	padding: 0.3rem 1.875rem 0.3rem 0.6rem;
	border: 0.06rem solid #b8b8b8;
	overflow: hidden;
	font-size: 1rem;
	color: #666666;
}

.select-ul1 {
	width: 23.5rem;
	list-style-type: none;
	overflow-x: hidden;
	overflow-y: auto;
	font-size: 1rem;
	color: #666666;
	border: 1px solid #b8b8b8;
	display: none;
	position: absolute;
	top: 2.938rem;
	background: #FFFFFF;
	border-top: none;
	padding: 0px;
	left: 0rem;
}

.select-ul2{
	width: 100%;
	list-style-type: none;
	overflow-x: hidden;
	overflow-y: auto;
	font-size: 1rem;
	color: #666666;
	border: 1px solid #b8b8b8;
	display: none;
	position: absolute;
	top: 2.938rem;
	background: #FFFFFF;
	border-top: none;
	padding: 0px;
	left: 0rem;
}

.select-ul1 li {
	padding: 0.625rem 0 0.625rem 1.125rem;
	width: 23.2rem;
}

.select-ul1 li:hover {
	background-color: #F4F6F8;
}

.select-ul2 li {
	padding: 0.625rem 0 0.625rem 1.125rem;
	width: 100%;
}

.select-ul2 li:hover {
	background-color: #F4F6F8;
}

.pointinput{
width: 15rem;
height: 3rem;
background: #FFFFFF;
border: 0.063rem solid #CFD4D9;
box-shadow: 0px 0px 0px #CBDAFC;
border-radius: 0.313rem;
margin-right:0.5rem;
margin-bottom:0.5rem;
}
.pointbtn{
width: 8rem;
height: 3rem;
background: #161C24;
border-radius: 0.375rem;
color:white;
text-align:center;
}
.pointinput2{
	width:15.5rem;
}
.choosedeliverybtn{
width: 7.5rem;
height: 2.5rem;
background: #161C24;
border-radius: 0.375rem;
color:white;
text-align:center;

}
.choose-area{
margin-bottom:1rem;
text-align:left;

}
 input[type=radio]{
            background-color: #FFFF;
            -webkit-appearance: none;
            -moz-appearance: none;
          
            border: 0.25rem solid  #161C24;
            width: 0.875rem;
            height: 0.875rem;
            border-radius: 100%;
        }
        input[type=radio]:checked{
            background-color: #161C24;
            -webkit-appearance: none;
            -moz-appearance: none;
            
            border: none;
            width: 0.875rem;
            height: 0.875rem;
            border-radius: 100%;
        }
        
.default, .new{
	cursor:pointer;
}

#row1>div {
	padding-left: 0px;
	padding-right: 0px;
}
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>
<body>
	<!-- 네비단 -->
	<div class="container-fluid">
		<div class="container-fluid"
			style="background-color: white; position: fixed; z-index:9;">
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
	
	<!-- 본문단 -->
	<div class="container-fluid d-none d-lg-block" id="mainparent" style="padding-top: 50px;">
		<div class="container">
			<div class="row" id="row1" style="padding-top: 2.5rem; text-align: center;">
				<div class="col-1 margin1" id="cart">
					
				</div>
				<div class="col-11 h2" id="ordertitle">Order / Payment</div> 

				<div class="col-12" style="margin-bottom:1.25rem;">
					<div class="row" style="padding-left:2.5rem; margin-bottom:1.25rem;">
						<div class="col-md-3 col-12 H3 info">배송정보</div>
					</div>
					<div class="row choose-area body2" style="padding-left:2.5rem;">
						<div class="col-10" style="text-align:left;">
						<button class="choosedeliverybtn">배송지 선택</button>
					</div>
				</div>
				</div>
				
			<!-- 결제 부분 -->
			
			<div class="container" style="min-width:80rem; min-height:40rem;">	
				<div  id="payment-area" style="position:relative; margin-right: 10px;}">
					<div class="H3 payinfo">결제 상세</div>
					<div class="row" id="total-area">
						<div class="col-12" style="padding:1.75rem;">
							<span class="H4" id="span1" style="color:#919EAB">총 상품 금액</span>
							<span class="H4 totalprice" id="span4"> </span>
							<span class="H4 " id="span9" style="color:#919EAB">할인</span>
							<span class="H4 discount" id="span10">0원</span>
							
							
							<span class="H4" id="span2" style="color:#919EAB">배송비</span>
							<span class="H4 deliveryprice" id="span5">3,000원</span>
							<span class="H3" id="span3" >총 결제 금액</span>
							<span class="H3 finalTotalPrice" id="span6">18,800</span>
							<span class="Caption" id="span7" style="color: #919EAB;">적립예정 포인트</span>
							<span class="Caption totalPoint" id="span8" style="color: #919EAB;"> </span>
						</div>
					</div>
					
					<button id="paybtn" onclick="iamport()">결제하기</button>
					
					<div class="warpper" style="margin-top:6.75rem; position:relative">
					<div class="H4" style="color:#637381; text-align:left;margin-bottom:0.5rem;">약관을 확인하였으며 결제에 동의합니다.</div>
					<span class="span" id="payspan1" >이용약관 동의</span>
					<span class="span1" id="payspan2" style="left:5.438rem; cursor:pointer">보기</span><br>
					<span class="span" id="payspan3">개인정보 수집 및 이용 동의 </span>
					<span class="span1" id="payspan4" style="left:10.063rem; cursor:pointer">보기</span><br>
					<span class="span" id="payspan5">결제 대행 서비스 이용약관</span>
					<span class="span1" id="payspan6" style="left:9.875rem; cursor:pointer">(주)KG이니시스</span>
					</div>
				</div>
			
			
				
				
				
				
				<div id="product-area" style=" width:49.25rem; text-align:left;">
<!-- 				배송지 부분 -->
			
				</div>
				<!-- 배송 주소 입력 부분 -->
				<div class="row delivery-area" style="height:34.875rem; width:49.25rem;">
					<div class="col-md-4 col-12" style="text-align:left; width:18.75rem; height:7.5rem">
						<div class="body2" style="margin-bottom:0.5rem;">수령인</div>
						<input type="text" class="body2input buyer_name1" id="buyer_name"  placeholder="수령인 이름을 입력해 주세요." value="${dto.receiver }" >
					</div>
					<div class="col-md-8 col-12 phone" style="text-align:left; width:26rem; height:7.5rem">
						<div class="body2" style="margin-bottom:0.5rem;">전화 번호</div>
						<input type="text" class="body2input buyer_tel1"  id="buyer_tel1" placeholder="전화번호를 입력해 주세요." value="${dto.phone }" >
					</div>
					<div class="col-12" style="text-align:left;">
						<div class="body2" style="text-align:left;  padding-bottom:0.5rem;">배송지</div>
						<input type="text" class="body2 inputcode buyer_postcode1 " id="sample4_postcode" onclick="sample4_execDaumPostcode()" placeholder="우편번호 검색" value="${dto.postcode }" > 
						<input type="text" class="body2 inputaddress buyer_addr1 address1" id="sample4_roadAddress"  placeholder="주소: 우편번호를 먼저 검색해 주세요." disabled value="${dto.address1 }">
						<input type="text" class="body2 inputaddress buyer_address21"  placeholder="상세 주소 : 우편번호를 먼저 검색해 주세요." id="sample4_detailAddress"  value="${dto.address2 }">
					</div>
					<div class="col-12" style="text-align:left;">	
						<div class="body2 delivery_text" style="text-align:left;margin-top:1.5rem; margin-bottom:0.5rem;">배송 메시지</div>
						<input type="text" class="body2 inputaddress delivery_text" style="background: #FFFFFF;" placeholder="배송메세지를 입력해주세요.">
						<div id="deliveryinfo" style="text-align:left; margin-top:1rem ">*주문 시 변경하신 내용으로 개인 정보가 수정됩니다.</div>
					</div>
				</div>
				
				
					<div class="row H3" style="margin-bottom:1.25rem; padding-left:2.5rem; margin-top:3.75rem;">상품 정보</div>
				
<!-- 				여기서부터 상품 반복 -->
					<div class="row select_list" style="max-width:49.25rem">
						
					</div>
<!-- 			여기까지 하나 -->

<!-- 					<div class="row list" style="padding:0px; margin-bottom:1.25rem"> -->
						
<!-- 						<div class="col-3 p-0 productimg" style="background-color:pink;"></div> -->
<!-- 						<div class="col-9 productInfo" style="width:38rem"> -->
<!-- 							<div class="body1 title">[어쨌든, 사랑] 컨페티 폭죽카드 - 로맨틱데이즈</div> -->
<%-- 							<div class="H3 price" id="${i.g_num }">7,900 원 </div> --%>
<!-- <!-- 							<script> --> 
<%-- <%-- 							price = ${i.g_price * i.cartstock} ; --%> 
<!-- 							price = price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ","); --> 
<!--  							$("#${i.g_num}").text(price+"원"); --> 
<!-- <!-- 							</script> --> 
<!-- 							<div class="body1 cnt" style="color: #919EAB;">1개</div> -->
							
								
<%-- 							<input class="hidden-cnt" type="hidden" value="${i.cartstock }"> --%>
<%-- 							<input class="hidden-g_num" type="hidden" value="${i.g_num }"> --%>
						
<!-- 						</div> -->
<!-- 					</div> -->
			
					
					
				<div class="row H3" style="margin-bottom:2.188rem; padding-left:2.5rem; margin-top:3.75rem;">쿠폰 / 마일리지</div>
				<div class="warp-pay">
				<div class="body2" style="margin-bottom:0.5rem;">쿠폰</div>
						<div id="select-wrap1" style="position:relative">
								<div id="select1" class="body2">쿠폰을 선택하세요</div>
								<ul class="select-ul1">
<!-- 									<li class="li body2" >오프라인 감사 쿠폰</li> -->
<!-- 									<li class="li body2" >이벤트 참여 쿠폰</li> -->
								</ul>
							</div>
				<div class="body2" style="margin-bottom:0.5rem;">포인트</div>
				<input class="body2 pointinput2" type="number" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" placeholder="0" style="border: 1px solid #DFE3E8; border-radius: 0.313rem; height:3rem;">
				<button class="H4 pointbtn allPointUse2">모두 사용</button><br>
				<span class="Caption" style="font-weight: 400;color: #637381;">보유 포인트</span>
				<span class="Caption myPoint2" style="color: #637381;"> </span>
				<div class="H3" style="margin-top:3.75rem;margin-bottom:1.25rem;">결제 수단</div>
				<input type="radio" style="margin-right:0.5rem;"><span class="body2">카드 결제</span>
				</div>
					
					
					
					
					
				</div>

		</div>
				
				
				
				
				
				
				
				
				
				
				
				
			</div>
		</div>
	
	
		<!-- 반응형 본문단 -->
	<div class="container-fluid d-block d-lg-none" id="mainparent" style="margin-bottom:4.5rem">
		<div class="container">
			<div class="row" style="padding-top: 50px; width:100%">
<!-- 				<div class="col-1 margin1" id="cart" style="width:100%"> -->
<!-- 					<button id="backbtn"> -->
<!-- 						<img src="/images/Vector.png"> -->
<!-- 					</button> -->
<!-- 				</div> -->
				<div class="col-12 h2" id="ordertitle" style="text-align:center; width:100%">Order / Payment</div> 

				<div class="col-12" style="margin-bottom:1.25rem;">
					<div class="row">
						<div class="col-12 H3 info">배송정보</div>
					</div>
				</div>
				
			<!-- 결제 부분 -->
			
			<div class="container">	
				<div id="product-area" style="width:100%">
<!-- 				배송 주소 부분 -->
				<div class="row choose-area body2">
					<div class="col-10">
						<button class="choosedeliverybtn">배송지 선택</button>
					</div>
				</div>
				
				<!-- 배송 주소 입력 부분 -->
				<div class="row delivery-area" style="margin-left:0rem; width:100%">
					<div class="col-12" >
						<div class="col-12 body2" style="margin-bottom:0.5rem;">수령인</div>
						<div class="col-12"><input type="text" class="body2input buyer_name" id="buyer_name2" placeholder="수령인 이름을 입력해 주세요." style="width:100%;" value="${dto.receiver }" ></div>
					</div>
					<div class="col-12 phone" >
						<div class="body2 col-12" style="margin-bottom:0.5rem;">전화 번호</div>
						<div class="col-12" style="margin-bottom:0.5rem;"><input type="text" id="buyer_tel2" class="body2input buyer_tel"  placeholder="전화번호를 입력해 주세요." style="width:100%" value="${dto.phone }" ></div>
					</div>
					<div class="body2 col-12" style="margin-bottom:0.5rem;">배송지</div>
					<div class="col-12" style="margin-bottom:0.5rem;"><input type="text" class="body2 inputcode buyer_postcode zipcode" id="sample5_postcode" onclick="sample5_execDaumPostcode()" placeholder="우편번호 검색" style="margin-left:0rem; width:100%" value="${dto.postcode }" contenteditable=false></div> 
					
					<div class="col-12" style="margin-bottom:0.5rem;"><input type="text" class="body2 inputaddress buyer_addr address" id="sample5_roadAddress" placeholder="주소: 우편번호를 먼저 검색해 주세요."  style="width:17.5rem; margin-left:0rem; width:100%" value="${dto.address1 }" disabled></div>
					<div class="col-12" style="margin-bottom:0.5rem;"><input type="text" class="body2 inputaddress buyer_address2" placeholder="상세 주소 : 우편번호를 먼저 검색해 주세요."  id="sample5_detailAddress" style="width:100%; margin-left:0rem;" value="${dto.address2 }"></div>
					<div class="body2 delivery_text" style="margin-bottom:0.5rem;">배송 메시지</div>
					<div class="col-12" style="margin-bottom:0.5rem;"><input type="text" class="body2 inputaddress delivery_text" style="background: #FFFFFF; width:100%; margin-left:0rem;" placeholder="배송메세지를 입력해주세요."></div>
					<div id="deliveryinfo" class="col-12" style="margin-bottom:0.5rem;">*주문 시 변경하신 내용으로 개인 정보가 수정됩니다.</div>
				</div>
				
				
					<div class="row H3" style="margin-bottom:1.25rem; margin-top:3.75rem; margin-left:0rem;">상품 정보</div>
				
<!-- 				여기서부터 상품 반복 -->
					<div class="row select_list" style="margin-left:-2.5rem; width:100%">
						
					</div>
						<div>
							<div class="row H3" style="margin-bottom:2.188rem; margin-top:3.75rem; margin-left:0rem;">쿠폰 / 마일리지</div>
							<div class="warp-pay" style="margin-bottom:4.5rem; margin-left:0rem;">
								<div class="body2" style="margin-bottom:0.5rem; ">쿠폰</div>
								<div id="select-wrap2" style="position:relative">
									<div id="select2" class="body2" style="width:100%">쿠폰을 선택하세요</div>
									<ul class="select-ul2">
<!-- 										<li class="li body2" >오프라인 감사 쿠폰</li> -->
<!-- 										<li class="li body2" >이벤트 참여 쿠폰</li> -->
									</ul>
								</div>
								<div class="body2" style="margin-bottom:0.5rem;">포인트</div>
								<input class="body2 pointinput1" type="number" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" placeholder="0" style="width:100%; margin-bottom:0.5rem; border: 1px solid #DFE3E8; border-radius: 0.313rem; height:3rem;">
								<button class="H4 pointbtn allPointUse1" style="margin-bottom:0.5rem; ">모두 사용</button><br>
								<span class="Caption" style="font-weight: 400;color: #637381;">보유 포인트</span>
								<span class="Caption myPoint1 allPointUse1" style="color: #637381;">
									<!-- 1200p -->
								</span>
								<div class="H3" style="margin-top:3.75rem;margin-bottom:1.25rem;">결제 수단</div>
								<input type="radio" style="margin-right:0.5rem;"><span class="body2">카드 결제</span>
							</div>
						<div class="row">
							<div id="payment-area" style="width:100%; max-width:50rem;">
								<div class="H3 payinfo">결제 상세</div>
								<div class="row" id="total-area" style="width:100%; height:16rem;">
									<div class="col-12" style="padding:1.75rem; width:100%">
										<div class="col-12" style="text-align:center;"><span class="H4" id="span1" style="color:#919EAB">총 상품 금액</span>
										<span class="H4 totalprice" id="span4"> </span></div>
										<div class="col-12" style="text-align:center;"><span class="H4 " id="span9" style="color:#919EAB">할인</span>
										<span class="H4 discount" id="span10">0원</span></div>
										
										
										<div class="col-12" style="text-align:center;"><span class="H4" id="span2" style="color:#919EAB">배송비</span>
										<span class="H4 deliveryprice" id="span5">3,000원</span></div>
										<div class="col-12" style="text-align:center;"><span class="H3" id="span3" >총 결제 금액</span>
										<span class="H3 finalTotalPrice" id="span6" > </span></div>
										<div class="col-12" style="text-align:center;"><span class="Caption" id="span7" style="color: #919EAB;">적립예정 포인트</span>
										<span class="Caption totalPoint" id="span8" style="color: #919EAB;"> </span></div>
									</div>
								</div>
								<div class="row">
									<div class="col-12">
										<div><button id="paybtn" onclick="iamport()" style="width:100%">결제하기</button></div>
									</div>
								</div>
								<div class="warpper" style="margin-top:6.75rem;">
									<div class="H4" style="color:#637381; text-align:left;margin-bottom:0.5rem;">약관을 확인하였으며 결제에 동의합니다.</div>
									<span class="span" id="payspan1_2" style="margin-left:4.5rem">이용약관 동의</span>
									<span class="span1" id="payspan2_2" style="left:5.438rem; cursor:pointer; margin-left:5rem">보기</span><br>
									<span class="span" id="payspan3_2" style="margin-left:4.5rem">개인정보 수집 및 이용 동의 </span>
									<span class="span1" id="payspan4_2" style="left:10.063rem; cursor:pointer; margin-left:5rem">보기</span><br>
									<span class="span" id="payspan5_2" style="margin-left:4.5rem">결제 대행 서비스 이용약관</span>
									<span class="span1" id="payspan6_2" style="left:9.875rem; cursor:pointer; margin-left:5rem">(주)KG이니시스</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
<!-- 	<input type="hidden" class="hiddenTotalprice" value="0"> -->
<!-- 	<input type="hidden" class="hiddenDc" value="0"> -->
<!-- 	<input type="hidden" class="hiddenFinalprice" value="0"> -->
<!-- 	<input type="hidden" class="hiddenPoint" value="0"> -->
	<!-- 푸터단 -->
		<div class="row" id="footer">
			<div class="container">
				<div class="row" >
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
		let sumPrice = 0;
	  	let totalDc = 0;
	  	let LetaddPoint = 0;
	  	let usedPoint = 0;
	  	let grade;
	  	let finalPrice = 0;
	  	let count = 0;
	  	let title;
	  	let serial = "inavailableCP";
	  	let arrG_name = [];
	  	let arrG_num = [];
	  	let arrSales_count = [];
	  	let arrTotalPrice = [];
	  	let arrEmail = [];
	  	let arrG_seq = [];
	  	let arrG_option = [];
	  	let arrCart_seq = [];
	  	let arrUserEmail = [];
	  	let myPoint;
	  	
   	$( window ).resize(function() {   //창크기 변화 감지
		open_chatroom();
	});
	
	function open_chatroom(){ 
		var windowWidth = $( window ).width();
		if(windowWidth < 992) {      //창 가로 크기가 500 미만일 경우  
			$(".buyer_postcode1").val($(".buyer_postcode").val());
			$(".buyer_postcode").val($(".buyer_postcode1").val());
			$(".address1").val($(".address").val());
			$(".address").val($(".address1").val());
			$(".buyer_name1").val($(".buyer_name").val());
			$(".buyer_name").val($(".buyer_name1").val());
			$(".buyer_tel1").val($(".buyer_tel").val());
			$(".buyer_tel").val($(".buyer_tel1").val());
			$(".buyer_address21").val($(".buyer_address2").val());
			$(".buyer_address2").val($(".buyer_address21").val());
			
			
			
		} else if(windowWidth > 992) {      //창 가로 크기가 500보다 클 경우  
			$(".buyer_postcode").val($(".buyer_postcode1").val());
			$(".buyer_postcode1").val($(".buyer_postcode").val());
			$(".address").val($(".address1").val());
			$(".address1").val($(".address").val());
			$(".buyer_name").val($(".buyer_name1").val());
			$(".buyer_name1").val($(".buyer_name").val());
			$(".buyer_tel").val($(".buyer_tel1").val());
			$(".buyer_tel1").val($(".buyer_tel").val());
			$(".buyer_address2").val($(".buyer_address21").val());
			$(".buyer_address21").val($(".buyer_address2").val());
		}
		}

// 	$("#text").on("propertychange change keyup paste input", function() {
// 	    var currentVal = $(this).val();
// 	    if(currentVal == oldVal) {
// 	        return;
// 	    }
	 
// 	    oldVal = currentVal;
// 	    alert("changed!");
// 	});
   	
   	  	//배송지 선택
   	$(".choosedeliverybtn").on("click",function(){
   		window.open("/cart/choosedeliverybtn","", "top=100,left=200,width=870,height=530");

   	})

   	
   	//배송 메세지 연동
   	$(".delivery_text").on("keyup",function(){
   		$(".delivery_text").val($(this).val());
   	})
   	//수령인 연동
      $(".buyer_name").on("keyup",function(){
         
         $(".buyer_name1").val($(this).val());
      });
      $(".buyer_name1").on("keyup",function(){
         
         $(".buyer_name").val($(this).val());
      })
      //전화번호 연동
   	  $(".buyer_tel").on("keyup",function(){
         $(".buyer_tel1").val($(this).val());
      });
      $(".buyer_tel1").on("keyup",function(){
         $(".buyer_tel").val($(this).val());
      })
   	
   	//상세 주소 연동
   	$(".buyer_address2").on("keyup",function(){
   		$(".buyer_address21").val($(this).val());
   	});
   	$(".buyer_address21").on("keyup",function(){
   		$(".buyer_address2").val($(this).val());
   	})
   	
   	//집코드 연동
   	$(".buyer_postcode").on("change keyup paste",function(){
   		$(".buyer_postcode1").val($(this).val());
   	})
   	$(".buyer_postcode1").on("change keyup paste",function(){
   		$(".buyer_postcode").val($(this).val());
   	})
   	
   	
   	
   	$("#payspan2").on("click", function(){
	window.open("/member/agreement1","이용약관", "width=700, height=500");
	})

	$("#payspan4").on("click", function(){
		window.open("/member/agreement2","개인정보 수집 및 이용", "width=700, height=500");
	})
	
	$("#payspan6").on("click", function(){
		let link = 'https://www.inicis.com/terms';
		window.open(link, "결제 대행 서비스 이용약관", "width=700, height=500");
	
	})
	
	$("#payspan2_2").on("click", function(){
		window.open("/member/agreement1","이용약관", "width=700, height=500");
	})

	$("#payspan4_2").on("click", function(){
		window.open("/member/agreement2","개인정보 수집 및 이용", "width=700, height=500");
	})
	
	$("#payspan6_2").on("click", function(){
		let link = 'https://www.inicis.com/terms';
		window.open(link, "결제 대행 서비스 이용약관", "width=700, height=500");
	
	})
	
	$(".allPointUse1").on("click",function(){
		if(myPoint > sumPrice){
			let allPointUse = sumPrice;	
			$(".pointinput1").val(allPointUse);
			$(".pointinput2").val(allPointUse);
			totalDc = sumPrice;
			$(".discount").text("-" + (totalDc).toLocaleString()+"원");
			$(".finalTotalPrice").text(Math.floor(Number(sumPrice - totalDc + 3000)).toLocaleString()+"원");
			if(grade == "White"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.01)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
			}else if(grade == "Gray"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.05)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
			}else if(grade == "Black"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.1)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
			}
		}else{
			let allPointUse = $(".myPoint1").text();
			$(".pointinput1").val(allPointUse);
			$(".pointinput2").val(allPointUse);
			totalDc = Number($(".pointinput1").val());
			$(".discount").text("-" + (totalDc).toLocaleString()+"원");
			$(".finalTotalPrice").text(Math.floor(Number(sumPrice - totalDc + 3000)).toLocaleString()+"원");
			if(grade == "White"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.01)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
			}else if(grade == "Gray"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.05)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
			}else if(grade == "Black"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.1)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
			}
		}
	})
	
	$(".allPointUse2").on("click",function(){
		if(myPoint > sumPrice){
			let allPointUse = sumPrice;	
			$(".pointinput1").val(allPointUse);
			$(".pointinput2").val(allPointUse);
			totalDc = sumPrice;
			$(".discount").text("-" + (totalDc).toLocaleString()+"원");
			$(".finalTotalPrice").text(Math.floor(Number(sumPrice - totalDc + 3000)).toLocaleString()+"원");
			if(grade == "White"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.01)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
			}else if(grade == "Gray"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.05)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
			}else if(grade == "Black"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.1)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
			}
		}else{
			let allPointUse = $(".myPoint2").text();
			$(".pointinput1").val(allPointUse);
			$(".pointinput2").val(allPointUse);
			totalDc = Number($(".pointinput2").val());
			$(".discount").text("-" + (totalDc).toLocaleString()+"원");
			$(".finalTotalPrice").text(Math.floor(Number(sumPrice - totalDc + 3000)).toLocaleString()+"원");
			if(grade == "White"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.01)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
			}else if(grade == "Gray"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.05)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
			}else if(grade == "Black"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.1)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
			}
		}
	})
	


		//	장바구니 쿠폰 포인트 가져오는 함수
	    window.onload = function(){
	    		$.ajax({
	            	url:"/cart/select_cart",
	            	async:false
	            }).done(function(resp){
	            	console.log(resp);
	            	count = resp.length;
	            	for(i=0; i < resp.length; i++){
	            		
	            		$(".select_list").append("<div class='row list' style='padding:0px; margin-bottom:1.25rem; margin-left:2.5rem; width:100%'><div class='col-3 p-0 productimg' ><img class='con' src="+resp[i].gp_sysname+" style='border-radius: 1.25rem;'></div><div class='col-9 productInfo' ><div class='body1 title col-12'>"+resp[i].g_name+"</div><div class='H3 price col-12' id='"+resp[i].g_num+"'>"+resp[i].g_price.toLocaleString()+"원</div><div class='body1 col-12' style='color: #919EAB; '>"+resp[i].cartstock+"개</div><input class='hidden-cnt' type='hidden' value="+resp[i].cartstock+"><input class='hidden-g_num' type='hidden' value="+resp[i].g_num+"></div></div>");
	            		sumPrice += Number(resp[i].g_price * resp[i].cartstock);
	            		arrG_name.push(resp[i].g_name);
	            		arrSales_count.push(resp[i].cartstock);
	            		arrTotalPrice.push(resp[i].totalPrice);
	            		arrG_seq.push(resp[i].g_seq);
	            		arrEmail.push(resp[i].email);
	            		arrG_num.push(resp[i].g_num);
	            		arrG_option.push(resp[i].g_option);
	            		arrCart_seq.push(resp[i].cart_seq);
	            		arrUserEmail.push(resp[i].email);
	            		console.log("sumPrice");
	            		console.log(sumPrice);
	            		if(resp.length == 1){
	            			title = resp[i].g_name;	
	            		}else{
	            			title = resp[i].g_name + "외 " + (count - 1) + "개";
	            		}
	            	}
	            	
// 	            	if(count == 1){
// 	            		return title;
// 	            	}else{
// 	            		return title =  title + "외" + count + "개";
// 	            	}
		            	
	            	$(".totalprice").text(sumPrice.toLocaleString()+"원");
		            $(".finalTotalPrice").text(Number(sumPrice - totalDc + 3000).toLocaleString()+"원");
					
					$.ajax({
						url:"/shop/selectMemberData"
					}).done(function(resp){
						console.log("멤버정보");
						console.log(resp);
						for(let i = 0; i < resp.length; i++){
							$(".myPoint1").text(resp[i].point);
							$(".myPoint2").text(resp[i].point);
							$(".select-ul1").append("<li class='li1 body2' id="+resp[i].dc+" value="+resp[i].serial+" style='width:100%;'>"+resp[i].category+"<input type='hidden' value="+resp[i].serial+"></li>")
							$(".select-ul2").append("<li class='li2 body2' id="+resp[i].dc+" value="+resp[i].serial+">"+resp[i].category+"<input type='hidden' value="+resp[i].serial+"></li>")
							grade = resp[i].grade;
							myPoint = resp[0].point;
// 							console.log("count : " + count);
							if(grade == "White"){
								$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.01)) + "p");
								LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
							}else if(grade == "Gray"){
								$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.05)) + "p");
								LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
							}else if(grade == "Black"){
								$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.1)) + "p");
								LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
							}
						}
						$(".pointinput1").attr("min",0);
						$(".pointinput1").attr("max",myPoint);
						$(".pointinput2").attr("min",0);
						$(".pointinput2").attr("max",myPoint);
					})
	            });
				


	    }
   	  	
    
 


	//선택박스누를 시 옵션 열기
	$("#select1").on("click", function () {
	    
		$(".select-ul1").toggle();
	});
	
	$(document).on("click", ".li1", function(){ // on 이벤트로 변경
		
				$(".select-ul1").toggle();
				let text = $(this).text();
				serial = $(this).children().val();
				console.log(serial);
		    	$("#select1").text(text);
		    	$("#select2").text(text);
		    	
		    	totalDc = Number($(this).attr("id"));
		    	$(".discount").text("-" + (totalDc).toLocaleString()+"원");
		    	$(".finalTotalPrice").text(Number(sumPrice - totalDc + 3000).toLocaleString()+"원");
				if(grade == "White"){
					$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000)) * 0.01) + "p");
					LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
				}else if(grade == "Gray"){
					$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000)) * 0.05) + "p");
					LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
				}else if(grade == "Black"){
					$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000)) * 0.1) + "p");
					LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
				}
				
		
      });
	$(document).on("click", ".li2", function(){ // on 이벤트로 변경
		
			let text = $(this).text();
			serial = $(this).children().val();
	    	$("#select1").text(text);
	    	$("#select2").text(text);
	    	$(".select-ul2").toggle();
	    	totalDc = Number($(this).attr("id"));
	    	$(".discount").text("-" + (totalDc).toLocaleString()+"원");
	    	$(".finalTotalPrice").text(Number(sumPrice - totalDc + 3000).toLocaleString()+"원");
			if(grade == "White"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.01)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
			}else if(grade == "Gray"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.05)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
			}else if(grade == "Black"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.1)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
			}
		});
		
	
	
	$("#select2").on("click", function () {
	    $(".select-ul2").toggle();
	});
		
	
	

	
	
	
	
	
	$(".pointinput1").on("change",function(){
		if($(".pointinput1").val() > sumPrice){
			alert("상품금액보다 높습니다");
			totalDc = 0;
			$(".pointinput1").val(0);
			$(".pointinput2").val(0);
			$(".discount").text("-" + (totalDc).toLocaleString()+"원");
			$(".finalTotalPrice").text(Number(sumPrice - totalDc + 3000).toLocaleString()+"원");
			if(grade == "White"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.01)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
			}else if(grade == "Gray"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.05)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
			}else if(grade == "Black"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.1)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
			}
		}else{
			totalDc = Number($(".pointinput1").val());
			$(".pointinput2").val() == $(".pointinput1").val();
			$(".discount").text("-" + (totalDc).toLocaleString()+"원");
			$(".finalTotalPrice").text(Number(sumPrice - totalDc + 3000).toLocaleString()+"원");
			if(grade == "White"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.01)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
			}else if(grade == "Gray"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.05)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
			}else if(grade == "Black"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.1)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
			}
		}
	})
	
	$(".pointinput2").on("change",function(){
		if($(".pointinput2").val() > sumPrice){
			alert("상품금액보다 높습니다");
			totalDc = 0;
			$(".pointinput1").val(0);
			$(".pointinput2").val(0);
			$(".discount").text("-" + (totalDc).toLocaleString()+"원");
			$(".finalTotalPrice").text(Number(sumPrice - totalDc + 3000).toLocaleString()+"원");
			if(grade == "White"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.01)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
			}else if(grade == "Gray"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.05)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
			}else if(grade == "Black"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.1)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
			}
		}else{
			totalDc = Number($(".pointinput2").val());
			$(".pointinput1").val() == $(".pointinput2").val();
			$(".discount").text("-" + (totalDc).toLocaleString()+"원");
			$(".finalTotalPrice").text(Number(sumPrice - totalDc + 3000).toLocaleString()+"원");
			if(grade == "White"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.01)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.01))
			}else if(grade == "Gray"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.05)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.05))
			}else if(grade == "Black"){
				$(".totalPoint").text(Math.floor((Number(sumPrice - totalDc + 3000) * 0.1)) + "p");
				LetaddPoint = Math.floor((Number(sumPrice - totalDc + 3000) * 0.1))
			}
		}
	})
	
	 function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                

            }
        }).open();
    }

	
	 function sample5_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수

	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample5_postcode').value = data.zonecode;
	                document.getElementById("sample5_roadAddress").value = roadAddr;
	                

	            }
	        }).open();
	    }
	
	function iamport(){

		var windowWidth = $( window ).width();
	      let buyer_postcode = $(".buyer_postcode").val();
	      if(buyer_postcode == ''){
	         buyer_postcode = $(".buyer_postcode1").val();
	      }else if(windowWidth > 992){
	         buyer_postcode = $(".buyer_postcode1").val();
	      }
	      
	      let buyer_addr = $(".buyer_addr").val();
	      if(buyer_addr == ''){
	         buyer_addr = $(".buyer_addr1").val();
	      }else if(windowWidth > 992){
	         buyer_addr = $(".buyer_addr1").val();
	      }

        //가맹점 식별코드
        IMP.init('imp48062056');
	IMP.request_pay({
	    pg : 'kcp',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : title, //결제창에서 보여질 이름
	    amount : (Number(sumPrice - totalDc + 3000)), //실제 결제되는 가격
	    buyer_email : arrUserEmail[0],
	    buyer_name : $(".buyer_name").val(),
	    buyer_tel : $(".buyer_tel").val(),
	    buyer_addr : buyer_addr,
	    buyer_postcode : buyer_postcode,
	    delivery_text : $(".delivery_text").val()
	}, function(rsp) {
		console.log(rsp);
	    if ( rsp.success ) {
            $.ajax({
                url:"/pay/insert",
                data:{
                	merchant_uid : rsp.merchant_uid,
                	name : rsp.buyer_name,
                	phone : rsp.buyer_tel,
                	address1 : rsp.buyer_addr,
                	address2 : $(".buyer_address2").val(),
                	zipcode : rsp.buyer_postcode,
                	g_name : rsp.name,
                	card_name : rsp.card_name,
                	card_number : rsp.card_number,
                	card_quota : rsp.card_quota,
                    totalprice : rsp.paid_amount,
                    delivery_text : $(".delivery_text").val()

                    },
                    async : false,
                type:"post",
                dataType:"json"
            }).done(function(resp){
               console.log(resp)
               for(let i = 0; i < arrG_name.length; i++){
                   $.ajax({
               		url:"/pay/myGoods",
               		data:{
               			merchant_uid : rsp.merchant_uid,
               			state : "BU",
               			name : rsp.buyer_name,
               			phone : rsp.buyer_tel,
               			address1 : rsp.buyer_addr,
                       	address2 : $(".buyer_address2").val(),
                       	zipcode : rsp.buyer_postcode,
                       	g_name : arrG_name[i],
                       	card_name : rsp.card_name,
                       	card_number : rsp.card_number,
                       	card_quota : rsp.card_quota,
                        totalprice : arrTotalPrice[i],
                        sales_count : arrSales_count[i],
                        addpoint : LetaddPoint,
                        usedpoint : totalDc,
                        serial : serial,
                        category : "G",
                        g_num : arrG_num[i],
                        g_seq : arrG_seq[i],
                        cp_discount : totalDc,
                        g_option : arrG_option[i]
               		},
               		async : false
               	}).done(function(resp){
					console.log($(".pointinput1").val())
               	})
 
               };
	       	 	$.ajax({
	       			url:"/pay/point",
	       			data:{email : arrUserEmail[0],
	       				usedpoint : totalDc,
	       				addpoint : LetaddPoint},
	       				async:false
	       		}).done(function(resp){
	       			console.log("point 정산 성공");
	       				
	       		});

	       	 	if(!(serial == "inavailableCP")){
		       	 	$.ajax({
		       	 	url:"/pay/coupon",
		       			data:{email : arrUserEmail[0],
							"serial" : serial},
							async : false
		       		}).done(function(resp){
		       			console.log("coupon 정산 성공");
		       				
		       		});
	       	 	}
		       	 	
               for(let i = 0; i < arrCart_seq.length; i++){
           		$.ajax({
       				url:"/pay/deleteCart",
       				data:{cart_seq : arrCart_seq[i]},
       				async : false
       			}).done(function(resp){
       				console.log("cart 삭제성공");
       			})
               }
               
 
            })
            // 동일한 DOM에 걸린 이벤트를 막습니다.    
            	
  	location.href="/shop/success";
            
	    } else {
	    	 var msg = '결제에 실패하였습니다.';
	         msg += '에러내용 : ' + rsp.error_msg;
	    }
	});
    }
	
	
	
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