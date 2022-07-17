<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

@media ( min-width : 375px) {
	.form-select {
		margin-top: 0.5rem;
		width: 100%;
	}
	.goodsName {
		text-align: center;
	}
	.goodsPrice {
		text-align: center;
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
}

* {
	box-sizing: border-box;
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
}

.navbar {
	height: 5rem;
	padding: 0px;
}

.row>div {
	padding-left: 2.5rem;
	padding-right: 2.5rem;
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

/* 정렬기준 버튼(select option) */
.form-select {
	border: 1px solid #CFD4D9;
	box-shadow: 0px 0px 0px #CBDAFC;
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
}

/* 전시회 카테고리 버튼 호버 */
.button:hover {
	cursor: pointer;
}

/* 현재전시 지난전시 버튼 호버 */
.exhibitionLink:hover {
	cursor: pointer;
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
	height: 2.5rem;
	width: 2.5rem;
	left: 56.2rem;
}

#beforeBtn {
	height: 2.5rem;
	width: 2.5rem;
}

/* append 이미지 크기 */
.con {
	width: 17.063rem;
	height: 17.063rem;
	border-radius: 1.25rem;
}

.before {
	padding-right: 0 !important;
}

.pre {
	padding-right: 0 !important;
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
		<div class="container">
			<div class="row" id="container1">
				<nav class="navbar navbar-expand-sm bg-light navbar-light">
					<div class="container" id="navparent">
						<a class="navbar-brand" href="#" id="container"
							style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse justify-content-end"
							id="collapsibleNavbar">
							<ul class="navbar-nav">
								<li class="nav-item"><a id="About" class="nav-link"
									href="#" style="padding-left: 0px; padding-right: 0px;">About</a>
								</li>
								<li class="nav-item"><a id="Exhibition" class="nav-link"
									href="#" style="padding-left: 0px; padding-right: 0px;">Exhibition</a>
								</li>
								<li class="nav-item"><a id="Shop" class="nav-link"
									href="/shop/toShop"
									style="padding-left: 0px; padding-right: 0px;">Shop</a></li>
								<li class="nav-item"><a id="Help" class="nav-link" href="#"
									style="padding-left: 0px; padding-right: 0px;">Help</a></li>
								<li class="nav-item"><a id="Login" class="nav-link"
									href="/member/loginPage"
									style="padding-left: 0px; padding-right: 0px;">Login</a></li>
								<li class="nav-item"><a id="Signup" class="nav-link"
									href="/member/join"
									style="padding-left: 0px; padding-right: 0px;">Sign up</a></li>
								<li class="nav-item"><a id="Admin" class="nav-link"
									href="/admin/adminMain"
									style="padding-left: 0px; padding-right: 0px;">Admin</a></li>
								<li class="nav-item"><a id="Mypage" class="nav-link"
									href="/member/mypage"
									style="padding-left: 0px; padding-right: 0px;">mypage</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
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
		<div class="row" style="padding-top: 100px;">
			<div class="container">
				<div class="row">
					<div class="col-md-9 col-12">
						<div class="h2"
							style="display: inline-block; margin-right: 55.125rem;">Shop</div>
					</div>
					<ul class="col-md-3 col-12" style="text-align: center;">
						<li class="currentExhibition h3 exhibitionLink"
							id="currentExhibition"
							style="display: inline-block; margin-right: 3rem;">현재전시</li>
						<li class="pastExhibition h3 exhibitionLink" id="pastExhibition"
							style="display: inline-block; right: 23.75rem">지난전시</li>
					</ul>
				</div>
				<div class="row" style="padding-top: 45px;">
					<!-- e_num category -->
					<div class="col-12 col-md-9 scroll_y category"
						style="overflow: auto; white-space: nowrap; postion: relative">
						<span id="before" style="position: absolute; top: 0.25rem;"><img
							src="/images/btn4_1.png" id="beforeBtn"></span> <span id="pre"
							style="position: absolute; right: 0px; top: 0.25rem;"><img
							src="/images/btn4_2.png" id="preBtn"></span>
					</div>
					<!-- order by value select -->
					<div class="col-12 col-md-3 select-form">
						<select class="form-select" id="select_value"
							aria-label="Default select example" onchange="select_value(this)">
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



</body>
<script>
	$(window).resize(function() { //창크기 변화 감지
		open_chatroom();
	});
	
	$(document).ready(function(){
        open_chatroom();
    });
	
	function open_chatroom() {
		var windowWidth = $(window).width();
		if (windowWidth < 720) { //창 가로 크기가 500 미만일 경우
			$("#before").css({
				"display":"none"
			})
			$("#pre").css({
				"display":"none"
			})
		} else { //창 가로 크기가 500보다 클 경우
			$(".category").css({
				"position" : "relative"
			})
			$("#before").css({
				"display":"inline"
			})
			$("#pre").css({
				"display":"inline"
			})
		}
	}

	// 페이지 로딩시
	window.onload = function() {
		//   현재전시버튼 기본 CSS, append
		if (!($(".currentExhibition").hasClass("h3_2"))) {
			$(".currentExhibition").addClass("h3_2");
			$(".category")
					.append(
							"<div class='button' id='1001' style='display: inline-block;'>Romantic Days 어쨋든, 사랑</div>");
		}

		//   전시회 버튼 기본 CSS, append (현재전시)
		if (!($("#1001").hasClass("active"))) {
			$("#1001").addClass("active");
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
										+ "'><img class='con' src='/shop/shopHome/"+resp[i].gp_sysname+"'></a></div><div class='goodsName' >"
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
												+ "'><img class='con' src='/shop/shopHome/"+resp[i].gp_sysname+"'></a></div><div class='goodsName' >"
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
										"<div class='button active' id='1001' style='display: inline-block;'>Romantic Days 어쨋든, 사랑</div>");
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
													+ "'><img class='con' src='/shop/shopHome/"+resp[i].gp_sysname+"'></a></div><div class='goodsName' >"
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
															+ "'><img class='con' src='/shop/shopHome/"+resp[i].gp_sysname+"'></a></div><div class='goodsName' >"
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
										"<div class='button active' id='1002' style='display: inline-block;'>카로 악포키에르 <<분실된 그림들>></div>");
						$(".category")
								.append(
										"<div class='button' id='1003' style='display: inline-block;'>국제미술 소장품 기획전 <<미술로, 세계로>></div>");
						$(".category")
								.append(
										"<div class='button' id='1004' style='display: inline-block;'>아이 웨이웨이</div>");
						$(".category")
								.append(
										"<div class='button' id='1005' style='display: inline-block;'>대지의 시간</div>");
						$(".category")
								.append(
										"<div class='button' id='1006' style='display: inline-block;'>창동레지던시 입주보고서 2021:풀 물 몸</div>");
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
																		+ "'><img class='con' src='/shop/shopHome/"+resp[i].gp_sysname+"'></a></div><div class='goodsName' style='text-align:left;'>"
																		+ resp[i].g_name
																		+ "</div><div class='goodsPrice' style='text-align:left;'>"
																		+ resp[i].g_price
																				.toLocaleString()
																		+ "원</div></div>");
											}
										})
					});

	//   전시회 카테고리 변경 이벤트
	$(document)
			.on(
					"click",
					".button",
					function() {
						$(this).addClass("active");
						$(".button").not(this).removeClass("active");
						$(".form-select").val("sell");
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
																		+ "'><img class='con' src='/shop/shopHome/"+resp[i].gp_sysname+"'></a></div><div class='goodsName' style='text-align:left;'>"
																		+ resp[i].g_name
																		+ "</div><div class='goodsPrice' style='text-align:left;'>"
																		+ resp[i].g_price
																				.toLocaleString()
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
														+ "'><img class='con' src='/shop/shopHome/"+resp[i].gp_sysname+"'></a></div><div class='goodsName' style='text-align:left;'>"
														+ resp[i].g_name
														+ "</div><div class='goodsPrice' style='text-align:left;'>"
														+ resp[i].g_price
																.toLocaleString()
														+ "원</div></div>");
							}
						})
	}
	
	// 	인피니티스크롤

	
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