
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 카카오 공유하기 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<title>현재 전시</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>

<style>
@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);

@media ( min-width : 375px) {
	.container {
		max-width: 1280px;
	}
	html {
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

.row>div {
	padding-left: 2.5rem;
	padding-right: 2.5rem;
}

.nav-item {
	margin: auoto;
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

#Shop {
	width: 2.813rem;
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

#mainphoto {
	margin: 0px;
	min-height: 600px;
	max-heieght: 1920px;
	height: 0;
	padding-bottom: calc(800/ 1920 * 100%);
	background-image: url("/images/Mainphoto.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: 100% 100%;
}

#mainphoto2 {
	margin: 0px;
	min-height: 600px;
	height: 0;
	padding-bottom: calc(800/ 1920 * 100%);
	background-image: url("/images/timegarden.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: 100% 100%;
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
	padding-righ t: 0px;
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

.ul2_1>li {
	display: inline-block;
	margin: 2rem;
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

.leftbutton {
	width: 3.75rem;
	height: 3.75rem;
	padding: 0px;
	margin-top: 0px;
}

.bookbutton {
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	width: 8.2rem;
	height: 3.75rem;
	color: #FFFFFF;
	/* Gray/900 */
	background: #161C24;
	border-radius: 1.25rem;
	/* Button/Button */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	padding: 1.125rem 1.5rem;
}

#po {
	position: relative;
}

.container, .container-fluid, .container-lg, .container-md,
	.container-sm, .container-xl, .container-xxl {
	overflow-x: hidden;
}

.modal {
	posision: absolute;
	width: 100;
	height: 100%;
	background: rgba(0, 0, 0, 0.6);
	top: 0;
	left: 0;
	display: none;
}

.share {
	width: 30px;
	height: 30px;
	cursor: pointer;
}

.modal_content {
	width: 300px;
	height: 250px;
	background: #fff;
	border-radius: 10px;
	text-align: center;
	box-sizing: border-box;
	padding: 20px 10px;
	line-height: 23px;
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	margin: auto;
}

#modal_header {
	position: relative;
	top: 0;
	left: 0;
}

#modal_back {
	float: right;
	margin-right: 15px;
	padding-left: 10px;
	padding-right: 10px;
}

.body2_1 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 2rem;
	line-height: 1.75rem;
	margin-bottom: 0px;
	color: black;
}

#copybtn {
	gap: 0.625rem;
	width: 8.813rem;
	height: 2.75rem;
	background: white;
	border-radius: 1.25rem;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.22rem;
	line-height: 2rem;
	text-align: center;
	color: black;
}

.link-icon {
	position: relative;
	display: inline-block;
	width: auto;
	font-size: 14px;
	font-weight: 500;
	color: #333;
	margin-right: 10px;
	padding-top: 50px;
}

.link-icon.twitter {
	background-image: url(/images/icon-twitter.png);
	background-repeat: no-repeat;
	background-position-x: center;
}

.link-icon.facebook {
	background-image: url(/images/icon-facebook.png);
	background-repeat: no-repeat;
	background-position-x: center;
}

.link-icon.kakao {
	background-image: url(/images/icon-kakao.png);
	background-repeat: no-repeat;
	background-position-x: center;
}
</style>


</head>
<body>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<nav class="navbar navbar-expand-md bg-light navbar-light">
					<div class="container" id="navparent" style="overflow: visible;">
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
							<ul class="navbar-nav">
								<li class="nav-item"><a id="About" class="nav-link"
									href="about" style="padding-left: 0px; padding-right: 0px;">About</a>
								</li>
								<li class="nav-item"><a id="Exhibition" class="nav-link"
									href="/Exhibition/toCurExhibition"
									style="padding-left: 0px; padding-right: 0px;">Exhibition</a></li>
								<li class="nav-item"><a id="Exhibition" class="nav-link"
									href="/program/toProgram"
									style="padding-left: 0px; padding-right: 0px;">Program</a></li>
								<li class="nav-item"><a id="Shop" class="nav-link"
									href="/shop/toShop"
									style="padding-left: 0px; padding-right: 0px;">Shop</a></li>
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

		<div class="container d-none d-sm-block"
			style="margin-top: 2.5rem; margin-bottom: 3.375rem;'">
			<div class="row">
				<div class="col-lg-1 col-xs-6">
					<img type=button class=leftbutton src="/images/leftbutton.png"
						style="margin-left: 0px;">
				</div>

				<div class="col-lg-2 col-xs-6">

					<img src="/images/anywayloveS.png"
						style="width: 10.625rem; height: 14.125rem;">

				</div>


				<div class="col-lg-9 col-xs-12">

					<div class="col h3">Romantic Days 어쨌든, 사랑</div>


					<div class="col body1" style="color: #161C24;">2022.03.16 ~
						2022.10.30</div>

					<form action="/Exhibition/toBook" method="post">



						<div class="col h2" id=po
							style="text-align: left; margin-top: 5.781rem;">
							<span class="h2 price">9,000원</span>
							
							
							 <img
								src="/images/minusbutton.png" type="button"
								style="margin-left: 1.5rem; width: 3.75rem; height: 3.75rem;"
								class="minusbutton">
								
								 <span class="body1 count"
								style="color: #161C24; margin-left: 1rem;">1</span>
								
								 <img
								type="button" class=plusbutton src="/images/plusbutton.png"
								style="margin-left: 1rem; width: 3.75rem; height: 3.75rem;">
							
							
							<ul style="float: right; list-style: none;">
								<li style="float: left"><img src="/images/share.png"
									class="modalbtn share">
								<li style="float: right; margin-left: 15px;"><button
										class=bookbutton>예매하기</button>
							</ul>
							
							
							
							<!-- <button class=bookbutton style="position: absolute; right: 0px;">예매하기</button> -->
							
						<!-- 		$(this).parent().next().val($($(this).parent().siblings()[2]).text());//개수
		$(this).parent().next().next().val($($(this).parent().siblings()[0]).text());//가격 -->
							
							<input type=hidden name=count class=count1> <input
								type=hidden name=price class=price1>


						</div>

					</form>
				</div>


	<!-- 	$(this).parent().next().val($($(this).siblings()[2]).text());
		$(this).parent().next().next().val($($(this).siblings()[0]).text()); -->



			</div>
		</div>
		<div class="row d-none d-sm-block"
			style="border-top: 1px solid #DFE3E8;"></div>



		<div class="container d-block d-sm-none"
			style="margin-top: 2.5rem; margin-bottom: 3.375rem;'">
			<div class="row">
				<!-- <div class="col-6">
					<img type=button class=leftbutton src="/images/leftbutton.png"
						style="margin-left: 0px;">
				</div> -->

				<div class="col-12" style="text-align: center;">

					<img src="/images/anywayloveS.png"
						style="width: 10.625rem; height: 14.125rem;">

				</div>


				<div class="col-12">

					<div class="col h3" style="text-align: center; margin-top: 3rem;">Romantic
						Days 어쨌든, 사랑</div>


					<div class="col body1" style="color: #161C24; text-align: center;">2022.03.16
						~ 2022.10.30</div>


					<form action="/Exhibition/toBook" method="post">


						<div class="col h2"
							style="text-align: center; margin-top: 5.781rem;">

							<span class="h2 price">9,000원</span> <img src="/images/minusbutton.png" type="button"
								style="margin-left: 1.5rem; width: 3.75rem; height: 3.75rem;"
								class=minusbutton> 
								
								<span class="body1 count"
								style="color: #161C24; margin-left: 1rem;">1</span> 
								
								<img
								type="button" class=plusbutton src="/images/plusbutton.png"
								style="margin-left: 1rem; width: 3.75rem; height: 3.75rem;">

							<button class=bookbutton
								style="text-align: center; margin-top: 3rem; margin-left: 0.7rem;">예매하기</button>


							<input type=hidden name=count class=count1> <input
								type=hidden name=price class=price1>


						</div>

					</form>
				</div>


	<!-- 	$(this).next().val($($(this).siblings()[2]).text());
		$(this).next().next().val($($(this).siblings()[0]).text()); -->


			</div>
		</div>

		<div class="row d-block d-sm-none"
			style="border-top: 1px solid #DFE3E8;"></div>


		<div class="container">
			<div class="row">
				<ul class="col-md-4 col-sm-12 ul2 h3 offset d-none d-sm-block"
					style="text-align: right; margin-top: 2.5rem; line-height: 2.688rem; padding-right: 2.5rem; padding-left: 0px;'">
					<li style="width: 4.938rem; margin-left: 3.1rem;">전시소개</li>
					<li style="width: 4.938rem; color: #919EAB; margin-left: 3.1rem;"><a
						class="exlink">전시굿즈</a></li>
					<li style="width: 4.938rem; color: #919EAB; margin-left: 3.1rem;">SNS후기</li>

				</ul>
				<ul class="col-12 ul2_1 h3 offset d-block d-sm-none"
					style="text-align: center; margin-top: 2.5rem; line-height: 2.688rem;">
					<li style="width: 4.938rem; text-align: center;">전시소개</li>
					<li style="width: 4.938rem; text-align: center; color: #919EAB;"><a
						class="exlink">전시굿즈</a></li>
					<li style="width: 4.938rem; color: #919EAB; text-align: center;">SNS후기</li>

				</ul>
			</div>
			<div class="row" id=row1>

				<img
					src="https://cdn.daelimmuseum.org/Program/Contents/202204/20220421182756105001.png"
					style="margin: auto; padding-left: 2.5rem; padding-right: 2.5rem; text-align: center; width: 100%;">
			</div>

		</div>




		<div class="row" id="footer" style="margin-top: 12.5rem;">
			<div class="container">
				<div class="row">
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
	<div class="modal">

		<div class="modal_content" title="공유하기">
			<div id="modal_header">
				<div class="body2_1" style="float: left; margin-left: 20px;">공유하기</div>
				<button id="modal_back">X</button>
			</div>
			<br>
			<hr>
			<a id="btnTwitter" class="link-icon twitter"
				href="javascript:shareTwitter();">트위터</a> <a id="btnFacebook"
				class="link-icon facebook" href="javascript:shareFacebook();">페이스북</a>
			<a id="btnKakao" class="link-icon kakao"
				href="javascript:shareKakao();">카카오</a> <br> <input type="text"
				id="text" value="http://localhost/member/loginPage" readonly
				style="margin-top: 10px;" /> <input type="button" id="copybtn"
				onclick="fn_copy()" value="Copy" />
		</div>
	</div>





</body>
<script>
	$(".bookbutton").on("click", function() {
		console.log('hi11');
		
		//console.log($(this).parent().siblings()[2]).text());
	


	 	$(this).parent().parent().next().val($($(this).parent().parent().siblings()[2]).text());//개수
		$(this).parent().parent().next().next().val($($(this).parent().parent().siblings()[0]).text());//가격 */

		location.href = "/Exhibition/toBook";
	})

	
	
	
	$(".leftbutton").on("click", function() {

		location.href = "/Exhibition/toCurExhibition";
	})

	$(".minusbutton").on("click", function() {

		let result = $(this).next().text();
		number = parseInt(result) - 1;
		if (number == 0) {
			return false;
		}
		$(".count").text(number);

		let price = $($(this).siblings()[0]).text();
		console.log(price);
		let price1 = price.replace(",", "");
		console.log(price1);
		let price2 = price1.replace("원", "");
		console.log(price2);
		finalprice = parseInt(price2);
		finalprice = finalprice - 9000;

		$(".price").text(finalprice.toLocaleString() + "원");

	})

	$(".plusbutton").on("click", function() {

		let result = $($(this).siblings()[2]).text();
		number = parseInt(result) + 1;
		if (number > 30) {
			alert('30매 이상의 단체 예약은 manager@palet.com 으로 연락주세요');
			return false;
		}
		console.log(number);
		$(".count").text(number);

		let price = $($(this).siblings()[0]).text();
		let price1 = price.replace(",", "");
		let price2 = price1.replace("원", "");

		finalprice = parseInt(price2);
		finalprice = finalprice + 9000;
		$(".price").text(finalprice.toLocaleString() + "원");

	})

	//공유하기 모달창
	$(function() {
		$(".modalbtn").click(function() {
			$(".modal").fadeIn();
		});

		$("#modal_back").click(function() {
			$(".modal").fadeOut();
		});
	})

	// 복사 버튼
	function fn_copy() {
		alert("URL 주소가 복사되었습니다.");
		var url = document.getElementById('text');
		url.select(); // 복사할 text 블럭
		document.execCommand('copy'); // 드레그된 text 클립보드에 복사
	}

	// 트위터 공유하기
	function shareTwitter() {
		var sendText = "Palet"; // 전달할 텍스트
		var sendUrl = "http://localhost/member/loginPage"; // 전달할 URL
		window.open("https://twitter.com/intent/tweet?text=" + sendText
				+ "&url=" + sendUrl);
	}

	// 페이스북 공유하기
	function shareFacebook() {
		var sendUrl = "http://localhost/member/loginPage"; // 전달할 URL
		window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
	}

	// 사용할 앱의 JavaScript 키 설정
	Kakao.init('feb50c309d28b138aefe9ddc94d76870');

	// 카카오톡 공유하기
	function shareKakao() {

		// 카카오링크 버튼 생성
		Kakao.Link.createDefaultButton({
			container : '#btnKakao', // 카카오공유버튼ID
			objectType : 'feed',
			content : {
				title : "[Palet] Romantic Days 어쨌든, 사랑", // 보여질 제목
				description : "전시회 바로 예약하기", // 보여질 설명
				imageUrl : 'http://localhost/images/anywayloveS.png', // 콘텐츠 URL
				link : {
					mobileWebUrl : "http://localhost/member/loginPage",
					webUrl : "http://localhost/member/loginPage"
				}
			}
		});
	}
	function logout() {

		if (!Kakao.Auth.getAccessToken()) {
			alert('Not logged in.')
			return

		}
		Kakao.Auth.logout(function() {
			alert('로그아웃 되었습니다.');
			location.href = "/member/logout";
		})

		location.href = "/member/logout";
		return true;
	}
</script>
</html>



<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>현재 전시</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 카카오 공유하기 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
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

#mainphoto {
	margin: 0px;
	min-height: 600px;
	max-heieght: 1920px;
	height: 0;
	padding-bottom: calc(800/ 1920 * 100%);
	background-image: url("/images/Mainphoto.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: 100% 100%;
}

#mainphoto2 {
	margin: 0px;
	min-height: 600px;
	height: 0;
	padding-bottom: calc(800/ 1920 * 100%);
	background-image: url("/images/timegarden.png");
	background-repeat: no-repeat;
	background-position: center center;
	background-size: 100% 100%;
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
	padding-righ t: 0px;
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

.ul2_1>li{
display:inline-block;
margin:2rem;

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

.leftbutton {
	width: 3.75rem;
	height: 3.75rem;
	padding: 0px;
	margin-top: 0px;
}

.bookbutton {
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	width: 8.2rem;
	height: 3.75rem;
	color: #FFFFFF;
	/* Gray/900 */
	background: #161C24;
	border-radius: 1.25rem;
	/* Button/Button */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	padding: 1.125rem 1.5rem;
}

/* #po {
	position: relative;
} */

.container, .container-fluid, .container-lg, .container-md,
	.container-sm, .container-xl, .container-xxl {
	overflow-x: hidden;
}

.modal{
	posision: absolute;
	width: 100;
	height: 100%;
	background: rgba(0,0,0,0.6);
	top: 0;
	left: 0;
	display: none;
}

.share {
	width: 30px;
    height: 30px;
    cursor: pointer;
}


.modal_content{
  width:300px; 
  height:250px;
  background:#fff; 
  border-radius:10px;
  text-align:center;
  box-sizing:border-box; 
  padding:20px 10px;
  line-height:23px; 
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  margin: auto;
}

#modal_header{
	position:relative; 
	top:0; 
	left:0;
}

#modal_back{
	float: right;
	margin-right:15px;
	padding-left: 10px;
	padding-right: 10px;	
}

.body2_1 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 2rem;
	line-height: 1.75rem;
	margin-bottom: 0px;
	color: black;
}

#copybtn{
	gap: 0.625rem;
    width: 8.813rem;
    height: 2.75rem;
	background: white;
    border-radius: 1.25rem;
    font-family: 'Spoqa Han Sans Neo';
    font-style: normal;
    font-weight: 500;
    font-size: 1.22rem;
    line-height: 2rem;
    text-align: center;
	color: black;
}


.link-icon { position: relative; display: inline-block; width: auto;    font-size: 14px; font-weight: 500; color: #333; margin-right: 10px; padding-top: 50px; }
.link-icon.twitter { background-image: url(/images/icon-twitter.png); background-repeat: no-repeat; background-position-x:center;}
.link-icon.facebook { background-image: url(/images/icon-facebook.png); background-repeat: no-repeat; background-position-x:center;} 
.link-icon.kakao { background-image: url(/images/icon-kakao.png); background-repeat: no-repeat; background-position-x:center;}

</style>


</head>
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

		<div class="container d-none d-sm-block"
			style="margin-top: 100px; margin-bottom: 3.375rem;'">
			<div class="row">
				<div class="col-lg-1 col-xs-6">
					<img type=button class=leftbutton src="/images/leftbutton.png"
						style="margin-left: 0px;">
				</div>

				<div class="col-lg-2 col-xs-6">

					<img src="/images/anywayloveS.png"
						style="width: 10.625rem; height: 14.125rem; margin-bottom: 20px; margin-top: 10px;">

				</div>


				<div class="col-lg-9 col-xs-12">

					<div class="col h3">Romantic Days 어쨌든, 사랑</div>


					<div class="col body1" style="color: #161C24;">2022.03.16 ~
						2022.10.30</div>

					<form action="/Exhibition/toBook" method="post">



						<div class="col h2" id=po
							style="text-align: left; margin-top: 5.781rem;">
							<span class="h2 price">9,000원</span> <img
								src="/images/minusbutton.png" type="button"
								style="margin-left: 1.5rem; width: 3.75rem; height: 3.75rem;"
								class="minusbutton"> <span class="body1 count"
								style="color: #161C24; margin-left: 1rem;">1</span> <img
								type="button" class=plusbutton src="/images/plusbutton.png"
								style="margin-left: 1rem; width: 3.75rem; height: 3.75rem;">
							
							<ul style="float: right; list-style:none;">
								<li style="float: left"><img src="/images/share.png" class="modalbtn share">
								<li style="float: right; margin-left: 15px;"><button class=bookbutton>예매하기</button>
							
							</ul>	
							
							<input type=hidden name=count class=count1> <input
								type=hidden name=price class=price1>

						</div>

					</form>
				</div>




			</div>
		</div>
		<div class="row d-none d-sm-block"
			style="border-top: 1px solid #DFE3E8;"></div>



		<div class="container d-block d-sm-none"
			style="margin-top: 100px; margin-bottom: 3.375rem;'">
			<div class="row">
				<!-- <div class="col-6">
					<img type=button class=leftbutton src="/images/leftbutton.png"
						style="margin-left: 0px;">
				</div> -->

				<div class="col-12" style="text-align: center;">

					<img src="/images/anywayloveS.png"
						style="width: 10.625rem; height: 14.125rem;">

				</div>


				<div class="col-12">

					<div class="col h3" style="text-align: center; margin-top: 3rem;">Romantic
						Days 어쨌든, 사랑</div>


					<div class="col body1" style="color: #161C24; text-align: center;">2022.03.16
						~ 2022.10.30</div>


					<form action="/Exhibition/toBook" method="post">


						<div class="col h2"
							style="text-align: center; margin-top: 5.781rem;">

							<span class="h2 price">9,000원</span> <img
								src="/images/minusbutton.png" type="button"
								style="margin-left: 1.5rem; width: 3.75rem; height: 3.75rem;"
								class=minusbutton> <span class="body1 count"
								style="color: #161C24; margin-left: 1rem;">1</span> <img
								type="button" class=plusbutton src="/images/plusbutton.png"
								style="margin-left: 1rem; width: 3.75rem; height: 3.75rem;">
							<br>
							<img src="/images/share.png" id="modalbtn" class="modalbtn share">
							<button class=bookbutton
								style="text-align: center; margin-top: 3rem; margin-left:0.7rem;">예매하기</button>


							<input type=hidden name=count class=count1> <input
								type=hidden name=price class=price1>


						</div>

					</form>
				</div>




			</div>
		</div>

		<div class="row d-block d-sm-none"
			style="border-top: 1px solid #DFE3E8;"></div>


		<div class="container">
			<div class="row">
				<ul class="col-md-4 col-sm-12 ul2 h3 offset d-none d-sm-block"
					style="text-align: right; margin-top: 2.5rem; line-height: 2.688rem; padding-right: 2.5rem; padding-left: 0px;'">
					<li style="width: 4.938rem; margin-left: 3.1rem;">전시소개</li>
					<li style="width: 4.938rem; color: #919EAB; margin-left: 3.1rem;"><a
						class="exlink">전시굿즈</a></li>
					<li style="width: 4.938rem; color: #919EAB; margin-left: 3.1rem;">SNS후기</li>

				</ul>
				<ul class="col-12 ul2_1 h3 offset d-block d-sm-none"
					style="text-align: center; margin-top: 2.5rem; line-height: 2.688rem; ">
					<li
						style="width: 4.938rem; text-align: center; ">전시소개</li>
					<li
						style="width: 4.938rem; text-align: center; color: #919EAB; "><a
						class="exlink">전시굿즈</a></li>
					<li
						style="width: 4.938rem; color: #919EAB; text-align: center; ">SNS후기</li>

				</ul>
			</div>
			<div class="row" id=row1>

				<img
					src="https://cdn.daelimmuseum.org/Program/Contents/202204/20220421182756105001.png"
					style="margin: auto; padding-left: 2.5rem; padding-right: 2.5rem; text-align: center; width: 100%;">
			</div>

		</div>




		<div class="row" id="footer" style="margin-top: 12.5rem;">
			<div class="container">
				<div class="row">
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
	
	
		
			<div class="modal">
				
				<div class="modal_content" title="공유하기">
					<div id="modal_header">
						<div class="body2_1" style="float: left; margin-left: 20px;">공유하기</div><button id="modal_back">X</button>
					</div>
					<br>
					<hr>
					<a id="btnTwitter" class="link-icon twitter" href="javascript:shareTwitter();">트위터</a>
					<a id="btnFacebook" class="link-icon facebook" href="javascript:shareFacebook();">페이스북</a>    
					<a id="btnKakao" class="link-icon kakao" href="javascript:shareKakao();">카카오</a> <br>
					<input type="text" id="text" value="http://localhost/member/loginPage" readonly style="margin-top: 10px;"/>
					<input type="button" id="copybtn" onclick="fn_copy()" value="Copy"/> 
				</div>
			</div>


</body>
<script>
	$(".bookbutton").on("click", function() {

		$(this).next().val($($(this).siblings()[2]).text());
		$(this).next().next().val($($(this).siblings()[0]).text());

		location.href = "/Exhibition/toBook";
	})

	$(".leftbutton").on("click", function() {

		location.href = "/Exhibition/toCurExhibition";
	})

	$(".minusbutton").on("click", function() {

		let result = $(this).next().text();
		number = parseInt(result) - 1;
		if (number == 0) {
			return false;
		}
		$(".count").text(number);

		let price = $($(this).siblings()[0]).text();
		console.log(price);
		let price1 = price.replace(",", "");
		console.log(price1);
		let price2 = price1.replace("원", "");
		console.log(price2);
		finalprice = parseInt(price2);
		finalprice = finalprice - 9000;

		$(".price").text(finalprice.toLocaleString() + "원");

	})

	$(".plusbutton").on("click", function() {

		let result = $($(this).siblings()[2]).text();
		number = parseInt(result) + 1;
		if (number > 30) {
			alert('30매 이상의 단체 예약은 manager@palet.com 으로 연락주세요');
			return false;
		}
		console.log(number);
		$(".count").text(number);

		let price = $($(this).siblings()[0]).text();
		let price1 = price.replace(",", "");
		let price2 = price1.replace("원", "");

		finalprice = parseInt(price2);
		finalprice = finalprice + 9000;
		$(".price").text(finalprice.toLocaleString() + "원");

	})
	
	
	 //공유하기 모달창
	$(function(){
		$(".modalbtn").click(function(){
			$(".modal").fadeIn();
		});
		
		$("#modal_back").click(function(){
			$(".modal").fadeOut();
		});
	}) 
	

	// 복사 버튼
	function fn_copy() {
	    alert("URL 주소가 복사되었습니다.");
		var url = document.getElementById('text');
		url.select(); // 복사할 text 블럭
		document.execCommand('copy'); // 드레그된 text 클립보드에 복사
	}
	    
	// 트위터 공유하기
	function shareTwitter() {
	    var sendText = "Palet"; // 전달할 텍스트
	    var sendUrl = "http://localhost/member/loginPage"; // 전달할 URL
	    window.open("https://twitter.com/intent/tweet?text=" + sendText + "&url=" + sendUrl);
	}
	
	// 페이스북 공유하기
	function shareFacebook() {
	    var sendUrl = "http://localhost/member/loginPage"; // 전달할 URL
	    window.open("http://www.facebook.com/sharer/sharer.php?u=" + sendUrl);
	}
	
  // 사용할 앱의 JavaScript 키 설정
  Kakao.init('feb50c309d28b138aefe9ddc94d76870');
	
  // 카카오톡 공유하기
	function shareKakao() {
 
 
  // 카카오링크 버튼 생성
  Kakao.Link.createDefaultButton({
    container: '#btnKakao', // 카카오공유버튼ID
    objectType: 'feed',
    content: {
      title: "[Palet] Romantic Days 어쨌든, 사랑", // 보여질 제목
      description: "전시회 바로 예약하기", // 보여질 설명
      imageUrl: 'http://localhost/images/anywayloveS.png', // 콘텐츠 URL
      link: {
         mobileWebUrl: "http://localhost/member/loginPage",
         webUrl: "http://localhost/member/loginPage"
      }
    }
  });
 }
  function logout() {
		
		if (!Kakao.Auth.getAccessToken()) {
		      alert('Not logged in.')
		      return
		    }
		    Kakao.Auth.logout(function() {
		      alert('로그아웃 되었습니다.');
		      location.href="/member/logout";
		    })
		

		location.href = "/member/logout";
		return true;
	}
  

</script>
</html>

 --%>