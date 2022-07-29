<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palet</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<!-- 지도api -->
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<style>
@charset "UTF-8";

@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);

html {
	overflow-x: hidden;
}
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
.body1{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 400;
font-size: 1.25rem;
line-height: 1.875rem;
}
.h3 {
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

.body3{
padding:0px;
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
#row2>div{
padding-left:1rem;
padding-right:1rem;
}
@media ( max-width : 991px) {
.content div{
padding-right:0.5rem;
padding-left:0.5rem;
}
	.main{
	display:none;
	}
	.navi-menu{
	display:none;
	}
	
	.content{
	  width: calc(100% - 1.625rem);
	  margin:0px;
	}
	.navi{
	padding:0rem;
	}
	.body3{
	font-size: 1.625rem;
	}
	
	.body3_1{
	font-size: 1.1rem;
	}
	.body4, .main-info{
	font-size:1.3rem;
	}
	.main-area .body4{
	font-family: 'Spoqa Han Sans Neo';
	font-weight:550;
	font-size:1.3rem;
}
	.sm-btn{
	margin-top:0.3rem;
	width:6.375rem;
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
/* 네비 */


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
#select{
width:100%;
border:0px;
background:url('/images/downarrow.png') no-repeat 97% 50%/15px auto ;
background-size: 01.596rem;
text-align:left;
}
.body3 a{
    font-family: 'Spoqa Han Sans Neo';
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
border-radius: 0.75rem;
margin-bottom:0.5rem;
transition: 0.3s;
}
.btnbtn:hover{
background: #454F5B;
color:white;
}
.defaultdelete,.delete{
background:white;
color:black;
transition: 0.3s;
}
.defaultdelete:hover,.delete:hover{
background:#F4F6F8;
color:black;

}

.ellipsis {
  width: 200px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;  /* 말줄임 적용 */
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
						<div class="body4"> style = "border-radius:7px;"My Tickets</div>
						<ul>
							<li class="body3"><a href="/mypage/myTicket">티켓예매 목록</a></li>
						</ul>
					</li>
					<li>
						<div class="body4" style = "border-radius:7px;">My Shopping</div>
						<ul>
							<li class="body3"><a href="/mypage/myShopping">주문내역</a></li>
							<li class="body3"><a href="/mypage/refund">취소/반품 내역</a></li>
							<li class="body3"><a href="/delivery/selectAllAddress">배송지 관리</a></li>
						</ul>
					</li>
					<li>
						<div class="body4" style = "border-radius:7px;">My Info</div>
						<ul>
							<li class="body3"><a href="/member/rating">나의 회원등급</a></li>
							<li class="body3"><a href="/coupon/couponlist">나의 쿠폰</a></li>
							<li class="body3"><a href="/member/mypage">개인정보 변경/탈퇴</a></li>
						</ul>
					</li>
					</ul>
				</div>
				</div>
				
				
				
				
				
				
				<div class="content" style="margin-top:1.25rem; padding-left: 50px;">
					<div class="row" >
						<div class="col-12 main-info ">배송지 목록</div>
						<div class="col-12 col-md-8 body4 " >배송지를 최대 5개까지 관리하실 수 있습니다.<br>자주 쓰는 배송지를 편리하게 관리하세요!</div>
						<div class="col-4 body4" style="padding-top:10px;">
						<button class="btnbtn body3" id="insert" >배송지 등록</button>
						</div>
						<div class="col-12  " style="margin-top:2.5rem; padding-right: 0px;">
							<div class="row main-area" >
								<div class="col-3 col-md-2  body4 px-3 " >배송지</div>
								<div class="col-6 col-md-5 body4  px-3">주소</div>
								<div class="col-3 col-md-2 d-none d-md-block px-3 body4">연락처</div>
								<div class="col-3 col-md-2 d-none d-md-block  px-3 body4" style="text-align:center">수정·삭제</div>
								
							
							</div>
							
							
							<c:if test="${defaultAddress.receiver !=null}">
					<div class="row list" id="row2" >
                        <div class="col-3 col-md-2 body3_1">
                        	<div class="row">
                        		
					
                        		<div class="col-12 d-none d-md-block p-0" style="font-weight:700;margin-top:0.25rem; background: #DFE3E8;">기본 주소지</div>
                        		<div class="col-12 d-display d-md-none p-0" style="font-weight:700;margin-top:0.25rem; background: #DFE3E8;">기본</div>
                        	<div class="col-12 p-0">${defaultAddress.receiver }</div>
                        	</div>
                      
                        
                        </div>
                        <div class="col-6 col-md-5 body3_1 p-1">${defaultAddress.postcode }<br>${defaultAddress.address1 } ${defaultAddress.address2 }</div>
                        <div class="col-md-2 d-none d-md-block body3_1">${defaultAddress.phone }</div>
                        <div class="col-3 body3" style="text-align:center">
                        <button class="btnbtn sm-btn body3_1 modi" style="line-height:0px;"value=${defaultAddress.deliveryaddress_seq }>수정</button>
                        <button class="btnbtn sm-btn body3_1 defaultdelete" style="line-height:0px;"value=${defaultAddress.deliveryaddress_seq }>삭제</button>
                        </div>
                     </div>
							</c:if>
					<c:forEach var="i" items="${list }">
                     <div class="row list" id="row2">
                        <div class="col-3 col-md-2 body3_1">${i.receiver }</div>
                        <div class="col-6 col-md-5 body3_1 p-1">${i.postcode }<br>${i.address1 } ${i.address2 }</div>
                        <div class="col-md-2 d-none d-md-block body3_1">${i.phone }</div>
                        <div class="col-3 body3" style="text-align:center">
                        <button class="btnbtn sm-btn body3_1 modi" style="line-height:0px;" value=${i.deliveryaddress_seq }>수정</button>
                        <button class="btnbtn sm-btn body3_1 delete" style="line-height:0px;"value=${i.deliveryaddress_seq }>삭제</button>
                        </div>
                     </div>
                     </c:forEach>
							
							
							
							
						</div>
					</div>
				
				</div>

			

			





			</div>
		</div>
</div>







		<!-- 푸터단 -->

		<div class="row" id="footer" style="margin-top: 12.5rem;">
			  <div class="container" style="padding-left:2.5rem;">
                <div class="row" id="row1" style="margin-left:1rem;">
                    <div class="col-12 h3" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
                    <div class="col-12 body2" style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2" style = "color: #637381;">3호선 경복궁역 지하 1층 | contact@palet.com</div>

                </div>
            </div>
		</div>

	</div>
	<script>
	$(".defaultdelete").on("click",function(){
		alert("기본 배송지는 1개 존재해야 합니다.");
	})
	//주소 삭제
	$(".delete").on("click",function(){
		deliveryaddress_seq=$(this).val();
		list = $(this).parent().parent();
		$.ajax({
			url:"/delivery/delAddress",
			data:{deliveryaddress_seq:deliveryaddress_seq}
		}).done(function(resp){
			list.remove();
		})
	
	})
	
	
	
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
	//배송지 수정
	$(".modi").on("click",function(){
		window.open("/delivery/modi?deliveryaddress_seq="+$(this).val()+"&modi=true","", "top=100,left=200,width=765,height=660");
	})
	//배송지 등록
	$("#insert").on("click",function(){
	
		if ($(".modi").length === 5) {
			alert("배송지는 최대 5개까지 등록 가능합니다.");
			return false;
		}
		

		
		window.open("/delivery/insert","", "top=100,left=200,width=765,height=660");
	})
	//쿠폰
	   $("#registration").on("click",function(){
      window.open("/coupon/toregistration", "",
      "top=100,left=200,width=700,height=500");
      })
	
	//선택박스 화살표 방향 이미지
	let click = true;
	$("#select").on("click",function(){
		if(click==false){
			$("#select").css({"background":"url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "1.596rem"});
			$(".navi-menu").css({"display":"none"});
			
			click = true;
		}else{
			$("#select").css({"background":"url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ","background-size": "01.596rem"});
			$(".navi-menu").css({"display":"block"});
			click = false;
		}
	});
	
	$(".logout").on("click", function(){
        Kakao.init('feb50c309d28b138aefe9ddc94d76870');
        Kakao.isInitialized();
        if (!Kakao.Auth.getAccessToken()) {
//            console.log('Not logged in.');
           location.href="/member/logout";
            return ;
        }
        
         Kakao.Auth.logout(function() {
//               console.log(Kakao.Auth.getAccessToken());
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