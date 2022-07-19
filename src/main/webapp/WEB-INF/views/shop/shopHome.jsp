<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!-- JQUERY -->
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
<!-- font -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

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

@media ( min-width : 375px) {
	.form-select {
		width: 100%;
	}
	.category{
		margin-bottom:1.5rem;
	}
	.goodsName {
		text-align: center;
	}
	.goodsPrice {
		text-align: center;
	}
	.categoryRow{
		margin-top:1.5rem;
		justify-content: center;
	}
	.mainRow{
		padding-top:1.5rem;
	}
}

@media ( min-width : 768px) {
	.form-select {
		width: 15rem;
	}
	.goodsName {
		text-align: left;
	}
	.goodsPrice {
		text-align: left;
	}
	.categoryRow{
		margin-top: 2.813rem;
	}
	.mainRow{
		padding-top:6.25rem;
	}
}


.container-fluid {
	padding: 0px;
}

/*    가로 스크롤 방지 */
.container, .container-fluid, .container-lg, .container-md,
	.container-sm, .container-xl, .container-xxl {
	overflow-x: hidden;
}

.container::-webkit-scrollbar {
	display: none;
}

/*    가로 스크롤 방지 */
.row { -
	-bs-gutter-x: 0rem;
}
/* 정렬기준 버튼(select option) */
.form-select {
	border: 1px solid #CFD4D9;
/* 	box-shadow: 0px 0px 0px #CBDAFC; */
	border-radius: 0.313rem;
	/*        width: 15rem;  */
	height: 3rem;
	/*       left: 82.5rem; */
	/*       top: 13rem; */
	/*     display: flex;  */
	/*     flex-direction: row;  */
	align-items: center;
	/*     padding: 10px 12px;  */
	/*     gap: 10px;  */
}

.button {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	padding: 0.75rem 1.25rem;
	top: 13rem;
	height: 3rem;
	margin-right: 0.75rem;
	background: #F4F6F8;
	border-radius: 1.25rem;
	flex: none;
	order: 1;
	flex-grow: 0;
	z-index:1;
}

/* 전시회 카테고리 버튼 호버 */
.button:hover {
	cursor: pointer;
}

/* 현재전시 지난전시 버튼 호버 */
.exhibitionLink:hover {
	cursor: pointer;
}

#before, #pre:hover{
	cursor:pointer;
}
.row { -
	-bs-gutter-x: 0rem;
}

.active {
	background-color: #000;
	color: #fff;
}

.active1 {
	color: #161C24;
}

#preBtn {
	height: 3rem;
	width: 3rem;
}

#beforeBtn {
	height: 3rem;
	width: 3rem;
}

/* append 이미지 크기 */
.con {
	width: 17.063rem;
	height: 17.063rem;
	border-radius: 1.25rem;
}

.before {
	padding-right: 0rem !important;
}

.pre {
	padding-right: 0rem !important;
}

/* footer */
#footer {
	background: #F4F6F8;
	height: 13.25rem;
}

/* font */
.h2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 2.25rem;
	line-height: 2.688rem;
}

/* 현재전시 지난전시 CSS (클릭한 버튼)*/
.h3 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	color: #919EAB;
}

/* 현재전시 지난전시 CSS (클릭 안한 버튼)*/
.h3_2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	color: #161C24;
}

/* 굿즈 이름 폰트 */
.goodsName {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.25rem;
	line-height: 1.875rem;
	color: #161C24;
}

/* 굿즈 가격 폰트 */
.goodsPrice {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	color: #161C24;
}

/* 가로 스크롤바 제거 */
.scroll_y::-webkit-scrollbar {
	display: none;
}
</style>
</head>

<body>
	<!-- navi -->
	<div class="container-fluid">
	<div class="container-fluid"
			style="background-color: white; z-index:9; position:relative;">
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

	<script>
      //   굿즈 디테일 연결
       $(".detailview").on("click",function(){
          console.log($(".detailview").val());
          location.href="/shop/goDetail?g_num="+$(".detailview").val();
       })
       
      //   구매완료 페이지 연결
       $(".success").on("click",function(){
          console.log("d")
          location.href="/shop/success";
       })
    </script>

	<!-- main contents -->
	<div class="container-fluid">
		<div class="row mainRow">
			<div class="container">
				<div class="row">
					<div class="col-md-9 col-12">
						<div class="h2"
							style="display: inline-block; margin-right: 55.125rem;">Shop</div>
					</div>
					<ul class="col-md-3 col-12" style="text-align: center; margin-bottom:0rem;">
						<li class="currentExhibition h3 exhibitionLink"
							id="currentExhibition"
							style="display: inline-block; margin-right: 3rem; margin-top:0.8rem;">현재전시</li>
						<li class="pastExhibition h3 exhibitionLink" id="pastExhibition"
							style="display: inline-block; right: 23.75rem">지난전시</li>
					</ul>
				</div>
				<div class="row categoryRow">
					<!-- e_num category -->
					<span class="col-1 d-none d-sm-inline" id="before" style="padding-left:1.875rem; padding-right:1rem; z-index:6">
						<img src="/images/btn4_1.png" id="beforeBtn" style="top: 0.25rem; float:left;">
					</span> 
					<div class="col-10 col-md-7 scroll_y category" style="overflow-x: scroll; white-space: nowrap; padding-right:1rem; padding-left:1rem; z-index:3">
						
					</div>
					<span class="col-1 d-none d-sm-inline" id="pre" style="padding-right:1.875rem; padding-left:1rem; z-index:6">
						<img src="/images/btn4_2.png" id="preBtn" style="top: 0.25rem; float:right;">
					</span>
					<!-- order by value select -->
					<div class="col-12 col-md-3 select-form">
						<select class="form-select" id="select_value"
							aria-label="Default select example" onchange="select_value(this)" style="margin-top:0px !important">
							<option value="sales_count desc" class="option" selected>판매량</option>
							<option value="g_price" class="option">가격낮은순</option>
							<option value="g_price desc" class="option">가격높은순</option>
						</select>
					</div>
				</div>

				<!-- goods append -->
				<div class="row list" style="padding-top: 52px; text-align: center;">

				</div>

			</div>
		</div>
	</div>

	<!-- footer -->
	<div class="row" id="footer">
		<div class="container" style="padding-left: 2.5rem;">
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


</body>
<script>
// 	$(window).resize(function() { //창크기 변화 감지
// 		open_chatroom();
// 	});
	
// 	$(document).ready(function(){
//         open_chatroom();
//     });
	
// 	function open_chatroom() {
// 		var windowWidth = $(window).width();
// 		if (windowWidth < 720) { //창 가로 크기가 500 미만일 경우
// 			$("#before").css({
// 				"display":"none"
// 			})
// 			$("#pre").css({
// 				"display":"none"
// 			})
// 		} else { //창 가로 크기가 500보다 클 경우
// 			$(".category").css({
// 				"position" : "relative"
// 			})
// 			$("#before").css({
// 				"display":"inline"
// 			})
// 			$("#pre").css({
// 				"display":"inline"
// 			})
// 		}
// 	}

	// 페이지 로딩시
	window.onload = function() {
		//   현재전시버튼 기본 CSS, append
		if (!($(".currentExhibition").hasClass("h3_2"))) {
			$(".currentExhibition").addClass("h3_2");
			$(".category")
					.append(
							"<div class='button' id='1' style='display: inline-block;'>MMCA 이건희컬렉션 특별전: 한국 미술명작</div>");
		}

		//   전시회 버튼 기본 CSS, append (현재전시)
		if (!($("#1").hasClass("active"))) {
			$("#1").addClass("active");
			$.ajax({
				url:"/shop/selectGoods",
				data:{"e_num" : $(".active").attr("id"),
					"option" : $("#select_value").val(),
					"limit" : "1"},
				async: false,
				dataType:"json", // == JSON.parse(resp);
				success: function (resp) {
					for(let i = 0 ; i < resp.length; i++) {
						$(".list")
						.append(
								"<div class='col-12 col-md-4 col-lg-3'><div class='t'><a href='/shop/goDetail?g_num="
										+ resp[i].g_num
										+ "'><img class='con' referrerpolicy='no-referrer' src="+resp[i].gp_sysname+"></a></div><div class='goodsName' >"
										+ resp[i].g_name
										+ "</div><div class='goodsPrice' >"
										+ resp[i].g_price
												.toLocaleString()
										+ "원</div></div>"); 
				    	
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
						url:"/shop/selectGoods",
						data:{"e_num" : $(".active").attr("id"),
							"option" : $("#select_value").val(),
							"limit" : limit},
						async: false,
						dataType:"json", // == JSON.parse(resp);
						success: function (resp) {
							for(let i = 0 ; i < resp.length; i++) {
								$(".list")
								.append(
										"<div class='col-12 col-md-4 col-lg-3'><div class='t'><a href='/shop/goDetail?g_num="
												+ resp[i].g_num
												+ "'><img class='con' referrerpolicy='no-referrer' src="+resp[i].gp_sysname+"></a></div><div class='goodsName' >"
												+ resp[i].g_name
												+ "</div><div class='goodsPrice' >"
												+ resp[i].g_price
														.toLocaleString()
												+ "원</div></div>");
						    	  console.log("resp.length : " + resp.length);
							}
							limit = limit + resp.length;
					    	console.log("change limit : " + limit);	
						},
						});
			    	} 
			      }) 

		}
	
// 		인피니티스크롤
// 		$.ajax({
// 			url:"/shop/selectGoods",
// 			data:{"e_num" : "1001",
// 				"option" : "sales_count desc",
// 				"limit" : "1"},
// 			async: false,
// 			dataType:"json", // == JSON.parse(resp);
// 			success: function (resp) {
// 				for(let i = 0 ; i < resp.length; i++) {
// 					$(".list")
// 					.append(
// 							"<div class='col-12 col-md-4 col-lg-3'><div class='t'><a href='/shop/goDetail?g_num="
// 									+ resp[i].g_num
// 									+ "'><img class='con' src='/shop/shopHome/"+resp[i].gp_sysname+"'></a></div><div class='goodsName' >"
// 									+ resp[i].g_name
// 									+ "</div><div class='goodsPrice' >"
// 									+ resp[i].g_price
// 											.toLocaleString()
// 									+ "원</div></div>"); 
			    	
// 			    	  console.log("resp.length : " + resp.length);
// 				}
// 			},
// 			});	
		
// 		let limit = 11;
		
		
// 	  	$(document).scroll(function() {
// 	    let maxHeight = $(document).height();
// 	    let currentScroll = $(window).scrollTop() + $(window).height();
// 		    /* let maxHeight = $(document).height();
// 		    let currentScroll = $(window).scrollTop() + $(window).height(); */
		   
// 		    if (maxHeight <= currentScroll+100) {
// 		    	console.log("origin limit : " + limit);
// 		    	$.ajax({
// 					url:"/shop/selectGoods",
// 					data:{"e_num" : "1001",
// 						"option" : "sales_count desc",
// 						"limit" : limit},
// 					async: false,
// 					dataType:"json", // == JSON.parse(resp);
// 					success: function (resp) {
// 						for(let i = 0 ; i < resp.length; i++) {
// 							$(".list")
// 							.append(
// 									"<div class='col-12 col-md-4 col-lg-3'><div class='t'><a href='/shop/goDetail?g_num="
// 											+ resp[i].g_num
// 											+ "'><img class='con' src='/shop/shopHome/"+resp[i].gp_sysname+"'></a></div><div class='goodsName' >"
// 											+ resp[i].g_name
// 											+ "</div><div class='goodsPrice' >"
// 											+ resp[i].g_price
// 													.toLocaleString()
// 											+ "원</div></div>");
// 					    	  console.log("resp.length : " + resp.length);
// 						}
// 						limit = limit + resp.length;
// 				    	console.log("change limit : " + limit);	
// 					},
// 					});
// 		    	} 
// 		      }) 
	}
	
	//   현재전시 버튼 이벤트
	$(".currentExhibition")
			.on(
					"click",
					function() {
						console.log($("#select_value").val());
						$(".currentExhibition").addClass("h3_2");
						$(".pastExhibition").removeClass("h3_2");
						$(".button").remove();
						$(".category")
								.append(
										"<div class='button active' id='1' style='display: inline-block;'>MMCA 이건희컬렉션 특별전: 한국 미술명작</div>");
						$.ajax({
							url:"/shop/selectGoods",
							data:{"e_num" : $(".active").attr("id"),
								"option" : $("#select_value").val(),
								"limit" : "1"},
							async: false,
							dataType:"json", // == JSON.parse(resp);
							success: function (resp) {
								$(".list").empty();
								for(let i = 0 ; i < resp.length; i++) {
									$(".list")
									.append(
											"<div class='col-12 col-md-4 col-lg-3'><div class='t'><a href='/shop/goDetail?g_num="
													+ resp[i].g_num
													+ "'><img class='con' referrerpolicy='no-referrer' src="+resp[i].gp_sysname+"></a></div><div class='goodsName' >"
													+ resp[i].g_name
													+ "</div><div class='goodsPrice' >"
													+ resp[i].g_price
															.toLocaleString()
													+ "원</div></div>"); 
							    	
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
									url:"/shop/selectGoods",
									data:{"e_num" : $(".active").attr("id"),
										"option" : $("#select_value").val(),
										"limit" : limit},
									async: false,
									dataType:"json", // == JSON.parse(resp);
									success: function (resp) {
										for(let i = 0 ; i < resp.length; i++) {
											$(".list")
											.append(
													"<div class='col-12 col-md-4 col-lg-3'><div class='t'><a href='/shop/goDetail?g_num="
															+ resp[i].g_num
															+ "'><img class='con' referrerpolicy='no-referrer' src="+resp[i].gp_sysname+"></a></div><div class='goodsName' >"
															+ resp[i].g_name
															+ "</div><div class='goodsPrice' >"
															+ resp[i].g_price
																	.toLocaleString()
															+ "원</div></div>");
									    	  console.log("resp.length : " + resp.length);
										}
										limit = limit + resp.length;
								    	console.log("change limit : " + limit);	
									},
									});
						    	} 
						      }) 
					});

	// 지난전시 버튼 이벤트
	$(".pastExhibition")
			.on(
					"click",
					function() {
						$(".pastExhibition").addClass("h3_2");
						$(".currentExhibition").removeClass("h3_2");
						$(".button").remove();
						
						$(".category")
								.append(
										"<div class='button active' id='2' style='display: inline-block;'>미술로, 세계로</div>");
						$(".category")
								.append(
										"<div class='button' id='3' style='display: inline-block;'>MMCA 과천 프로젝트</div>");
						$(".category")
								.append(
										"<div class='button' id='4' style='display: inline-block;'>우리 집에서, 워치 앤 칠</div>");
						$(".category")
								.append(
										"<div class='button' id='5' style='display: inline-block;'>아이 웨이웨이: 인간미래</div>");
						$(".category")
								.append(
										"<div class='button' id='6' style='display: inline-block;'>박수근: 봄을 기다리는 나목</div>");
						$(".category")
							.append(
									"<div class='button' id='7' style='display: inline-block;'>최욱경, 앨리스의 고양이</div>");
						$(".category")
							.append(
									"<div class='button' id='8' style='display: inline-block;'>MMCA 현대차 시리즈 2021</div>");
						$(".category")
							.append(
									"<div class='button' id='9' style='display: inline-block;'>정상화</div>");
						$(".category")
							.append(
									"<div class='button' id='11' style='display: inline-block;'>움직임을 만드는 움직임</div>");
						$(".category")
							.append(
									"<div class='button' id='12' style='display: inline-block;'>특별수장고 <<국립현대미술관 드로잉 소장품>></div>");
						$(".category")
							.append(
									"<div class='button' id='14' style='display: inline-block;'>권민호: 회색 숨</div>");
						$(".category")
							.append(
									"<div class='button' id='15' style='display: inline-block;'>개방수장고 개편</div>");
						$(".category")
							.append(
									"<div class='button' id='16' style='display: inline-block;'>MMCA 소장품 하이라이트 2020+</div>");
						$
								.ajax({
									url : "/shop/selectGoods",
									data : {
										"e_num" : $(".active").attr("id"),
										"option" : $("#select_value").val(),
										"limit" : "1"
									}
								})
								.done(
										function(resp) {
											$(".list").empty();
											for (i = 0; i < resp.length; i++) {
												$(".list")
														.append(
																"<div class='col-12 col-sm-4 col-md-3'><div class='t'><a href='/shop/goDetail?g_num="
																		+ resp[i].g_num
																		+ "'><img class='con' referrerpolicy='no-referrer' src="+resp[i].gp_sysname+"></a></div><div class='goodsName' style='text-align:left;'>"
																		+ resp[i].g_name
																		+ "</div><div class='goodsPrice' style='text-align:left;'>"
																		+ resp[i].g_price
																				.toLocaleString()
																		+ "원</div></div>");
											}
										})
					});

	//   전시회 카테고리 변경 이벤트
	$(document).on("click", ".button",function() {
		console.log($("#select_value").val());
		$(this).addClass("active");
		$(".button").not(this).removeClass("active");
		$.ajax({url : "/shop/selectGoods",
				data : {"e_num" : $(".active").attr("id"),
						"option" : "sales_count desc",
						"limit" : "1"
						}
					}).done(function(resp) {
						$(".list").empty();
						for (i = 0; i < resp.length; i++) {
							$(".list").append("<div class='col-12 col-sm-4 col-md-3'><div class='t'><a href='/shop/goDetail?g_num="
												+ resp[i].g_num
												+ "'><img class='con' referrerpolicy='no-referrer' src="+resp[i].gp_sysname+"></a></div><div class='goodsName' style='text-align:left;'>"
												+ resp[i].g_name
												+ "</div><div class='goodsPrice' style='text-align:left;'>"
												+ resp[i].g_price.toLocaleString()
												+ "원</div></div>");
											}
										})
					});

	//   정렬순서 변경시 이벤트
	function select_value(value) {
		let select_option = $(value).val();
		console.log(select_option);
		$
				.ajax({
					url : "/shop/selectGoods",
					data : {
						"e_num" : $(".active").attr("id"),
						"option" : $("#select_value").val(),
						"limit" : "1"
					}
				})
				.done(
						function(resp) {
							$(".list").empty();
							for (i = 0; i < resp.length; i++) {
								$(".list")
										.append(
												"<div class='col-12 col-sm-4 col-md-3'><div class='t'><a href='/shop/goDetail?g_num="
														+ resp[i].g_num
														+ "'><img class='con' referrerpolicy='no-referrer' src="+resp[i].gp_sysname+"></a></div><div class='goodsName' style='text-align:left;'>"
														+ resp[i].g_name
														+ "</div><div class='goodsPrice' style='text-align:left;'>"
														+ resp[i].g_price
																.toLocaleString()
														+ "원</div></div>");
							}
						})
	}
	
// 	우측버튼 클릭시 우측스크롤 기능
	$("#pre").on("click",function(){
		let category = $('.category').scrollLeft();
		$(".category").animate({scrollLeft: category + 200}, 800)
	})
	
// 	좌측버튼 클릭시 좌측스크롤 기능
	$("#before").on("click",function(){
		let category = $('.category').scrollLeft();
		$(".category").animate({scrollLeft: category - 200}, 800)
	})

</script>

<!-- 터치스크롤 스크립트 -->
<script>
  const slider = document.querySelector('.category');
  let isDown = false;
  let startX;
  let scrollLeft;

  slider.addEventListener('mousedown', e => {
    isDown = true;
    slider.classList.add('active2');
    startX = e.pageX - slider.offsetLeft;
    scrollLeft = slider.scrollLeft;
  });

  slider.addEventListener('mouseleave', () => {
    isDown = false;
    slider.classList.remove('active2');
  });

  slider.addEventListener('mouseup', () => {
    isDown = false;
    slider.classList.remove('active2');
  });

  slider.addEventListener('mousemove', e => {
    if (!isDown) return; 
    e.preventDefault();
    const x = e.pageX - slider.offsetLeft;
    const walk = x - startX;
    slider.scrollLeft = scrollLeft - walk;
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
<script>

    function iamport(){
        //가맹점 식별코드
        IMP.init('imp48062056');
   IMP.request_pay({
       pg : 'kcp',
       pay_method : 'card',
       merchant_uid : 'merchant_' + new Date().getTime(),
       name : '예매' , //결제창에서 보여질 이름
       amount : 100, //실제 결제되는 가격
       buyer_email : 'iamport@siot.do',
       buyer_name : '조양기',
       buyer_tel : '010-1234-5678',
       buyer_addr : '서울 강남구 도곡동',
       buyer_postcode : '123-456'
   }, function(rsp) {
      console.log(rsp);
       if ( rsp.success ) {
          
            $.ajax({
                url:"/pay/insert",
                data:{
                    imp_uid : rsp.imp_uid,
                    pg : "kcp",
                    method : "card",
                    g_name : "예매",
                    price : rsp.paid_amount,
                    apply_num : rsp.apply_num},
                type:"post",
                dataType:"json"
            }).done(function(resp){
                alert(resp);
            });
            var msg = '결제가 완료되었습니다.';
           msg += '고유ID : ' + rsp.imp_uid;
           msg += '상점 거래ID : ' + rsp.merchant_uid;
           msg += '결제 금액 : ' + rsp.paid_amount;
           msg += '카드 승인번호 : ' + rsp.apply_num;
       } else {
           var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
       }
       alert(msg);
   });
    }
      
    </script>
</html>