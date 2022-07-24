<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!--폰트어썸 최신 CDN-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- 카카오 로그인 -->

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
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

@media ( min-width : 1280px) {
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
.navbar-nav>li {
	text-align: right;
	background: white;
	padding-top: 1rem;
	padding-bottom: 1rem;
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
 margin: auto;

		padding-left: 33px;
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
	transition:0.3s;
}
#Mypage {
	width: 5rem;
	height: 1.5rem;
	transition:0.3s;
}
#Logout {
	width: 4.5rem;
	height: 1.5rem;
	transition:0.3s;
}

#Program {
	width: 5.5rem;
	height: 1.5rem;
	transition:0.3s;
}


#Shop, #Login {
	width: 3.313rem;
	height: 1.5rem;
	transition:0.3s;
}


#Cart {
	width: 3rem;
	height: 1.5rem;
	transition:0.3s;
}


#Signup {
	width: 4.438rem;
	height: 1.5rem;
	transition:0.3s;
}
/* footer */
#footer {
	margin-top:6.25rem;
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
     .container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl{
         margin-right:0px;
         margin-left:0px;
         
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
	widht: 10.188rem;
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
	transition:0.3s;
}

.btn1:hover{
	background:#F4F6F8;
	color:black;
}

#cart {
	text-align: left;
	padding-left: 2.5rem;
	padding-bottom:2.5rem;
}
#img{
width:100%;
height:100%;
border-radius:1.25rem;
}

.hug{
width:3.938rem;
height:1.75rem;
padding:0px;
cursor:pointer;
}
.bar{
width:1.063rem;
padding:0px;
}
.checkdiv{
width:1.5rem;
padding:0px;
text-align:left;
}

input.checkbox{
 accent-color: black;
 width:1rem;
 height:1rem;
}
.checkbox2{
accent-color: black;
 width:1rem;
 height:1rem;
position:absolute;
left:1.188rem;
top:1.25rem;
}
.list{
box-sizing: border-box;
max-width: 49.25rem;
height: 10rem;
background: #FFFFFF;
/* Gray/300 */
border: 1px solid #DFE3E8;
border-radius: 1.25rem;
margin-left:1.6rem;
position:relative;
}
.productimg{
width:10rem;
position:relative;
border-radius: 20px 0px 0px 20px;
}
.delete{
position:absolute;
right:1.5rem;
top:1.25rem;
cursor:pointer;
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
overflow: hidden; 
	text-overflow: ellipsis;
	white-space: nowrap;
}
.option{
overflow: hidden; 
	text-overflow: ellipsis;
	white-space: nowrap;
}
.price{
margin-bottom:1.5rem;
margin-top:1rem;

}
.cnt{
width:3.75rem;
height:1.75rem;
position: absolute;
top:6.375rem;
right:4.25rem;

}
/* 결제부분 */


#total-area{
box-sizing: border-box;
height: 12.625rem;
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
width: 23.5rem;
height: 3.75;
background: #161C24;
border-radius: 1.25rem;
border:0px;
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 500;
font-size: 1.25rem;
line-height: 1.5rem;
/* identical to box height */

text-align: center;

color: #FFFFFF;
margin-top:1.25rem;
transition:0.3s;
}
#paybtn:hover{
	background:#F4F6F8;
	color:black;
}
.cntbtn:hover{
	background:#F4F6F8;
	color:black;
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
.cntbtn {
	width: 2.5rem;
	height: 2.5rem;
	border: 0.06rem solid #DFE3E8;
	background: #FFFFFF;
	box-sizing: border-box;
	border-radius: 50%;
	transition:0.3s;
}
.cntbtn:hover{
background:#F4F6F8;
}
.cntbtn>img {
	width: 0.656rem;
}
.minus{
position:absolute;
top:6rem;
right:8.25rem;
}
.plus{
position:absolute;
top:6rem;
right:1.5rem;

}


@media ( min-width : 990px) {
#payment-area{
width:23.5rem;
height:20.688rem;
float:right;
}
.productInfo{
width:34rem;
}
.container2{
width:80rem;

}
}

@media ( max-width : 990px) {
.small-payment-area{
margin-left:1.6rem;
margin-top:2.675rem;
}
#total-area{
height:14.025rem;
}
.productInfo{
padding:0px;
width:25.625rem;
}
#payment-area{
padding:0rem;
max-width:50rem;
height:26.688rem;
}

.body1, .H3, #paybtn{
/* font-size:1.875rem; */
}
.H4{
font-size:1.5rem;
}


#span1{
width:7.73rem;
margin-right:3rem;
margin-bottom:1rem;
}
#span4{
width:9.375rem;
margin-bottom:1rem;
}
#span2{
margin-right:4.788rem;
width:5.03rem;
text-align:left;
}
#span5{
width:10.175rem;
}
#span3{
text-align:left;
width:10.375rem;
margin-right:0.725rem;
}
#span6{
width:9.375rem;
text-align:right;
}
#span7{
text-align:left;
width:9.875rem;
margin-right:1.325rem;
}

#paybtn{
	width:100%;
	height:4.5rem;
	margin-top:2.25rem;
	transition:0.3s;
}

.Caption{
font-size:1.325rem;
}

}
.container{
margin:auto;
}


</style>
<body style="overflow-x: hidden">
	<!-- 네비단 -->
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
	<!-- 본문단 -->
	<div class="container-fluid" id="mainparent" style="padding:0px">
		<div class="container" style="padding:0px">
			<div class="row" style="padding-top: 6.25rem; text-align: center;width:100%;margin:auto;">
				<div class="col-12 h2" id="cart">Cart( ${totalList.total_num } )</div>


				<c:choose>
					<c:when test="${totalList.total_num ==0}">
						<!-- 지우는거아님	조건문 들어올 곳 -->
						<div class="col-12">
							<div class="row">
								<div class="col-12 body1"
									style="padding-top: 15.5rem; color: #637381;">장바구니에 담긴
									상품이 없습니다.</div>
							</div>
						</div>
						<div class="col-12">
							<button class="btn1" style="border:0px solid black;">쇼핑하러 가기</button>
						</div>
					</c:when>
					<c:otherwise>


					</c:otherwise>
				</c:choose>

				<c:choose>
			<c:when test="${totalList.total_num ==0}">
				
			</c:when>
			<c:otherwise>

				<div class="col-12" style="margin-bottom:1.25rem;">
					<div class="row" style="padding-left:2.5rem;">
						<div class="col-1 checkdiv">
						<input type="checkbox" class="checkbox" checked="checked" id="checkall" style="margin-top:0.375rem;">
						</div>
						<div class="col-2 body2 hug" id="allcheck">전체 선택</div>
						<div class="col-1 bar"><img src="/images/bar.png"></div>
						<div class="col-2 body2 hug" id="choosedel">선택 삭제</div>
					</div>
				</div>
				</c:otherwise>	
			</c:choose>	
			<div class="container container2" style=" min-height:40rem;">	
<!-- 			결제 부분 -->
			<div class="main-container"></div>
			<c:choose>
			<c:when test="${totalList.total_num ==0}">
				
			</c:when>
			<c:otherwise>
				<div  id="payment-area">
				
					<div class="row" id="total-area">
						<div class="col-12" style="padding:1.75rem;">
							<div class="col-12">
							<span class="H4" id="span1" style="color:#919EAB">총 상품 금액</span>
							<span class="H4 totalprice" id="span4"></span>
							</div>
							
							<div class="col-12">
							<span class="H4" id="span2" style="color:#919EAB">배송비</span>
							<span class="H4 deliveryprice" id="span5"></span>
							</div>
							<div class="col-12">
							<span class="H3" id="span3" >총 결제 금액</span>
							<span class="H3 finalTotalPrice" id="span6"></span>
							</div>
							<div class="col-12">
							<span class="Caption" id="span7" style="color: #919EAB;">적립예정 포인트</span>
							<span class="Caption totalPoint" id="span8" style="color: #919EAB;"></span>
							</div>
						</div>
					</div>
					<div class="row">
					<div class="col-12">
					<button id="paybtn">선택상품 주문하기</button>
					</div>
					</div>
					
				</div>
			
			</c:otherwise>	
			</c:choose>	
				
				
				
				
<!-- 			장바구니 부분	forEach			 -->
				<div id="product-area" >
				
				
				
				<c:forEach var="i" items="${list }">
					<div class="row list" style="padding:0px; margin-bottom:1.25rem">
						<div class="col-3 p-0 productimg">
								<img referrerpolicy="no-referrer" src="${i.gp_sysname }" id="img" >
							<input type="checkbox" class="checkbox2" checked="checked" id="check1" value="${i.g_seq }" style="margin-top:0.375rem;">
							<input type="hidden" class="hidden-cart_seq" value="${i.cart_seq }">
						</div>
						<div class="col-9 productInfo" >
							<div class="body1 title">${i.g_name} </div>
							<div class="body1 option">${i.g_option }</div>
							<div class="H3 price" id="${i.g_seq }"> </div>
							<script>
							price = ${i.g_price} ;
							price = price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
							$("#${i.g_seq}").text(price+"원");
							</script>
							<input class="hidden-price" type="hidden" value="${i.g_price }">
							<input class="hidden-point" type="hidden" value="${i.point}">
							<span>
							<button class="cntbtn minus"> 
 										<img src="/images/minus.png"> 
 							</button>
 							</span>  
							<div class="body2 cnt" style="color: #919EAB; margin:0px; text-align:center;">${i.cartstock }</div>
							<span>
							<button class="cntbtn plus"> 
										<img src="/images/plus.png"> 
							</button>
							</span> 
								
							<input class="hidden-cnt" type="hidden" value="${i.cartstock }">
							<span class="delete body2">삭제
							<input class="hidden-g_num" type="hidden" value="${i.g_seq }">
							</span>	
						
						</div>
					</div>
				</c:forEach>

				<div class="row small-payment-area" style="padding:0px;margin-left:1.4rem; margin-bottom:1.25rem">	</div>
					
					
					
				</div>

<script>
$( window ).resize(function() {   //창크기 변화 감지
	open_chatroom();
});
$(document).ready(function(){
	open_chatroom();
});

function open_chatroom(){ 
	var windowWidth = $( window ).width();
	if(windowWidth < 990) {      //창 가로 크기가 850 미만일 경우  
		$("#payment-area").css({"display":"block"});
		
		$(".small-payment-area").append($("#payment-area"));
	} else {      //창 가로 크기가 850 보다 클 경우  
		$(".main-container").append($("#payment-area"));
	}
	}





//결제버튼

$("#paybtn").on("click",function(){
	let paybtn = 0;
	if(paybtn==0){
	var cart_seq=[];
	$("input:checkbox[class=checkbox2]:checked").each(function(e,item){

					console.log($($(this).siblings()[1]).val());
					cart_seq.push($($(this).siblings()[1]).val());			})

	
	console.log(cart_seq);


	
	$.ajax({
		url:"/cart/order",
		traditional : true,
		data:{cart_seq:cart_seq},
		type:"post"
	}).done(function(resp){
		location.href="/cart/Toorder";	
	})
	paybtn = 1;
	
	}else{
		return false;
	}
	
	
})


$(document).ready(function() {
	setTotalInfo();
});
//체크 여부에 따른 변화
$(".checkbox2").on("change", function() {
	setTotalInfo($("cartInfo"))
})

function setTotalInfo() {

			let totalPrice = 0; // 총 가격
			let totalCount = 0; // 총 갯수
			let totalPoint = 0; // 총 포인트
			let deliveryPrice = 3000; // 배송비
			let finalTotalPrice = 0; // 최종 가격(총 가격 + 배송비)
			let point; //배송비 포인트
			$(".list").each(
					function(index, element) {

						if ($(element).find(".checkbox2").is(":checked") === true) {
							// 총 갯수
							let cnt =$(element).find(".cnt").text();
							
							totalCount += parseInt(cnt);
							// 총 가격
							
							let price = $(element).find(".price").text();
							price = price.replace(",","");
							totalPrice += parseInt(price)*parseInt(cnt);
							// 총 포인트
							totalPoint += parseInt($(element).find(
									".hidden-point").val()*cnt);
							let grade = "${grade}";
							if(grade=="White") {
								point = 3000*0.01;
								
							}else if(grade=="Gray") {
								point = 3000*0.05;
							}else if(grade=="Black") {
								point = 3000*0.1;
							}
							
							
							
							
							

							finalTotalPrice = totalPrice + deliveryPrice;
						}

						// 총 가격
						$(".totalprice").text(totalPrice.toLocaleString());
						// 총 갯수
// 						$(".totalCount").text(totalCount);
						// 총 포인트
						$(".totalPoint").text((totalPoint+point).toLocaleString()+"p");
						// 배송비
						$(".deliveryprice").text("+"+deliveryPrice+"원");
						// 최종 가격(총 가격 + 배송비)
						$(".finalTotalPrice").text(
								finalTotalPrice.toLocaleString()+"원");

					});

		}
</script>




</div>
				
				
				
				
				
				
				
				
				
				
				
				
			</div>
		</div>
	</div>
	<!-- 푸터단 -->

<div class="row" id="footer" style = "margin-top:12.5rem;">
            <div class="container">
                <div class="row">
                    <div class="col-12 h3" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
                    <div class="col-12 body2" style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2" style = "color: #637381; margin-bottom: 3.75rem;">3호선 경복궁역 지하 1층 | contact@palet.com</div>

                </div>
            </div>
        </div>
	<script>
	window.onload = function(){
		$.ajax({
			url:"/cart/beforeunload"
		})
	}
	//쇼핑하러 가기
	$(".btn1").on("click",function(){
		location.href="/shop/toShop";
	})
	//수량
	
	$(document).on("click", ".plus", function(){

			let result = $($(this).parent().siblings()[7]).text();
			console.log("d"+result);
			number = parseInt(result) + 1;
			
			$($(this).parent().siblings()[7]).text(number);
			
			//가격변화
			
// 			let price= $($(this).parent().siblings()[3]).val();
// 			console.log(price);
// 			price2 = price.replace(",","");
			
// 			let currentprice = $($(this).parent().siblings()[1]).text();
// 			currentprice=currentprice.replace(",","");
// 			totalprice =  parseInt(currentprice) +  parseInt(price2);
// 			$($(this).parent().siblings()[1]).text(totalprice.toLocaleString()+"원");
	
			setTotalInfo();
			
			g_seq=$($(this).parent().siblings()[9]).children().val();
			console.log(g_seq);
			$.ajax({
				url:"/cart/cartModi",
				dataType:"json",
				data:{g_seq:g_seq,cartstock:number}
			}).done(function(resp){
				console.log(resp);
			})
	
	
	});
	$(document).on("click", ".minus", function(){

			let result = $($(this).parent().siblings()[6]).text();
			number = parseInt(result) - 1;
			if (number == 0) {
				return false;
			}
			console.log(number);
			$($(this).parent().siblings()[6]).text(number);
			
			//가격변화
// 			let price = $($(this).parent().siblings()[3]).val() ;
// 			console.log("price"+price)
// 			price2 = price.replace(",","");
			
// 			let currentprice = $($(this).parent().siblings()[1]).text();
// 			currentprice=currentprice.replace(",","");
			
// 			console.log(price2 + " : " + currentprice);
// 			totalprice =  parseInt(currentprice) -  parseInt(price2);
// 			$($(this).parent().siblings()[1]).text(totalprice.toLocaleString()+"원");

			setTotalInfo();
	
			g_seq=$($(this).parent().siblings()[9]).children().val();
			console.log(g_seq);
			$.ajax({
				url:"/cart/cartModi",
				dataType:"json",
				data:{g_seq:g_seq,cartstock:number}
			}).done(function(resp){
				console.log(resp)
			})
	
	});
	
	
	
// 	//전체선택 누를 때 이벤트
	$("#allcheck").on("click",function(){
		
		
		if ($("#checkall").prop("checked")) {
			$("#checkall").prop("checked",false);
			$(".checkbox2").prop("checked", false);
			$(".checkbox2").attr("del",false);
		} else {
			$("#checkall").prop("checked",true);
			$(".checkbox2").prop("checked", true);
			$(".checkbox2").attr("del",true);
		}
		setTotalInfo($(".cartInfo"));
	})
	//전체선택 체크버튼 누를 때 이벤트
	$("#checkall").on("click", function() {
		if ($("#checkall").prop("checked")) {
			$(".checkbox2").prop("checked", true);
			$(".checkbox2").attr("del",true);
		} else {
			$(".checkbox2").prop("checked", false);
			$(".checkbox2").attr("del",false);
			
		}
		
		
		
		setTotalInfo();
	})
	//체크박스 개별 이벤트
	$(".checkbox2").on("click", function() {
		
		
		if($(this).prop("checked")){
		$(this).attr("del",true);
		}else{
			$(this).attr("del",false);
		}
		
		if ($("input[class=checkbox2]:checked").length == $(".checkbox2").length) {
			$("#checkall").prop("checked", true);
		} else {
			$("#checkall").prop("checked", false);
		}
	})
	
	//장바구니 삭제
	$(".delete").on("click",function(){
	$(this).parent().parent().remove();
	value = $(this).children().val();
	location.href="/cart/cartDel?g_seq="+value;
	
})
	//선택 삭제
	$("#choosedel").on("click",function(){
		var del=[];
	$("input:checkbox[class=checkbox2]:checked").each(function(e,item){
		
		
		del.push($(this).val());
		console.log(del);
		$(item).parent().parent().remove();
		location.href="/cart/choosedel?g_seq="+del;
	})
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