
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
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
</style>


</head>
<body>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<nav class="navbar navbar-expand-sm bg-light navbar-light">
					<div class="container" id="navparent">
						<a class="navbar-brand" href="/" id="container"
							style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
							<span class="navbar-toggler-icon"></span>
						</button>
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
						href="/shop/toShop" style="padding-left: 0px; padding-right: 0px;">Shop</a>
					</li>
					<li class="nav-item"><a id="Login" class="nav-link"
						href="/member/loginPage"
						style="padding-left: 0px; padding-right: 0px;">Login</a></li>
					<li class="nav-item"><a id="Signup" class="nav-link"
						href="/member/join" style="padding-left: 0px; padding-right: 0px;">Sign
							up</a></li>
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
							<span class="h2 price">9,000원</span> <img
								src="/images/minusbutton.png" type="button"
								style="margin-left: 1.5rem; width: 3.75rem; height: 3.75rem;"
								class="minusbutton"> <span class="body1 count"
								style="color: #161C24; margin-left: 1rem;">1</span> <img
								type="button" class=plusbutton src="/images/plusbutton.png"
								style="margin-left: 1rem; width: 3.75rem; height: 3.75rem;">
							<button class=bookbutton style="position: absolute; right: 0px;">예매하기</button>
							<input type=hidden name=count class=count1> <input
								type=hidden name=price class=price1>

						</div>

					</form>
				</div>




			</div>
		</div>
<div class="row d-none d-sm-block" style="border-top: 1px solid #DFE3E8;">
	</div>



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

							<span class="h2 price">9,000원</span> <img
								src="/images/minusbutton.png" type="button"
								style="margin-left: 1.5rem; width: 3.75rem; height: 3.75rem;"
								class=minusbutton> <span class="body1 count"
								style="color: #161C24; margin-left: 1rem;">1</span> <img
								type="button" class=plusbutton src="/images/plusbutton.png"
								style="margin-left: 1rem; width: 3.75rem; height: 3.75rem;">

							<button class=bookbutton
								style="text-align: center; margin-top: 3rem;">예매하기</button>


							<input type=hidden name=count class=count1> <input
								type=hidden name=price class=price1>


						</div>

					</form>
				</div>




			</div>
		</div>

<div class="row d-block d-sm-none" style="border-top: 1px solid #DFE3E8;">
	</div>


		<div class="container">
			<div class="row">
				<ul class="col-md-4 col-sm-12 ul2 h3 offset d-none d-sm-block"
					style="text-align: right; margin-top: 2.5rem; line-height: 2.688rem; padding-right: 2.5rem; padding-left: 0px;'">
					<li style="width: 4.938rem; margin-left: 3.1rem;">전시소개</li>
					<li style="width: 4.938rem; color: #919EAB; margin-left: 3.1rem;"><a
						class="exlink">전시굿즈</a></li>
					<li style="width: 4.938rem; color: #919EAB; margin-left: 3.1rem;">SNS후기</li>

				</ul>
				<ul class="col-12 ul2 h3 offset d-block d-sm-none"
					style="text-align: center; margin-top: 2.5rem; line-height: 2.688rem; padding-right: 2.5rem; padding-left: 0px;'">
					<li
						style="width: 4.938rem; text-align: center; margin-left: 2.6rem; margin-right: 2.6rem;">전시소개</li>
					<li
						style="width: 4.938rem; text-align: center; color: #919EAB; margin-left: 2.6rem;; margin-right: 2.6rem;"><a
						class="exlink">전시굿즈</a></li>
					<li
						style="width: 4.938rem; color: #919EAB; text-align: center; margin-left: 2.6rem;; margin-right: 2.6rem;">SNS후기</li>

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
					<div class="col-12 body2"
						style="color: #637381; margin-bottom: 3.75rem;">3호선 경복궁역 지하
						1층 | contact@palet.com</div>

				</div>
			</div>
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
</script>
</html>

