
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

<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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

#payspan1{
width:5.063rem; 
margin-right:0.375rem;

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
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	width: 13.5rem;
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
	transition:0.3s;
}
.btn1_1:hover{
	background:#F4F6F8;
	color:black;
}
.usedbutton{
	transition:0.3s;
}
.usedbutton:hover{
	background:#F4F6F8 !important;
	color:black !important;
}


.btn1_3 {
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	width: 13.5rem;
	height: 3.75rem;
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	color: #161C24;
	/* Gray/900 */
	background: white;
	border-radius: 15px;
	transition: 0.3s;
}

.btn1_3:hover {
	background: #F4F6F8;
	color: black;
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

.h5 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 0.875rem;
	line-height: 1.125rem;
	/* identical to box height, or 129% */
	/* Gray/600 */
	color: #637381;
}

.h5_1 {
	/* Caption/Caption */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 0.875rem;
	line-height: 1.125rem;
	/* identical to box height, or 129% */
	/* Gray/600 */
	color: #637381;
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

#row2>div {
	padding: 1rem;
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
	position: absolute;
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
}

.rec1 {
	box-sizing: border-box;
	background: #FFFFFF;
	border: 1px solid #DFE3E8;
	border-radius: 1.25rem;
	border: 1px solid #DFE3E8
}

.input1 {
	box-sizing: border-box;
	padding: 0.625rem 0.75rem;
	gap: 0.625rem;
	width: 17.5rem;
	height: 3rem;
	/* bs-white */
	background: #FFFFFF;
	border: 1px solid #CFD4D9;
	box-shadow: 0px 0px 0px #CBDAFC;
	border-radius: 5px;
	height: 3rem;
}

input::placeholder {
	width: 16rem;
	height: 1.75rem;
	text-align: center;
	/* Body/Body2 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;
	line-height: 1.75rem;
	/* identical to box height, or 175% */
	/* Gray/600 */
	color: #637381;
	font-family: 'Spoqa Han Sans Neo' /* Inside auto layout */
}

.policy {
	text-decoration-line: underline;
	color: #919EAB;
	margin-left: 0.375rem;
}

.info>li {
	margin-top: 0.6rem;
}

.d-sm-none {
	text-align: center;
}

.warp-pay {
	text-align: left;
	margin-left: 2.3rem;
	margin-bottom: 12.5rem;
}
/* select */
#select {
	width: 23.5rem;
	height: 3rem;
	line-height: 2.35rem;
	box-sizing: border-box;
	border: 0.063rem solid #CFD4D9;
	box-shadow: 0px 0px 0px #CBDAFC;
	border-radius: 0.313rem;
	margin-bottom: 1.5rem;
	color: #637381;
	background: #FFFFFF url('/images/uparrow.png') no-repeat 97% 50%/15px
		auto;
	background-size: 0.796rem;
	padding: 0.3rem 1.875rem 0.3rem 0.6rem;
	border: 0.06rem solid #b8b8b8;
	overflow: hidden;
	font-size: 1rem;
	color: #666666;
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
	top: 2.938rem;
	background: #FFFFFF;
	border-top: none;
	padding: 0px;
	left: 0rem;
}

.select-ul li {
	padding: 0.625rem 0 0.625rem 1.125rem;
	width: 23.2rem;
}

.select-ul li:hover {
	background-color: #F4F6F8;
}

.container, .container-fluid, .container-lg, .container-md,
	.container-sm, .container-xl, .container-xxl {
	overflow-x: hidden;
}

input::placeholder {
 text-align:left !important; 



}
</style>


</head>
<body>
	<div class="container-fluid">
		<div class="container-fluid"
			style="background-color: white; position: fixed;  z-index: 50; top:0">
			<div class="container">
				<c:choose>
					<c:when test="${loginEmail =='admin@palet.com'}">
						<div class="row" id="container1">
							<nav class="navbar navbar-expand-md bg-light navbar-light">
								<div class="container" id="navparent"
									style="overflow: visible; position: fixed; background: white; z-index: 9;">
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

											<li class="nav-item"><a id="Exhibition" class="nav-link"
												href="/Exhibition/toCurExhibition"
												style="padding-left: 0px; padding-right: 0px;">Exhibition</a>
											</li>

											<li class="nav-item"><a id="Program" class="nav-link"
												href="/program/toProgram"
												style="padding-left: 0px; padding-right: 0px;">Program</a></li>

											<li class="nav-item"><a id="Shop" class="nav-link"
												href="/shop/toShop"
												style="padding-left: 0px; padding-right: 0px;">Shop</a></li>

											<li class="nav-item"><a id="Logout" class="nav-link logout" href="#"
												style="padding-left: 0px; padding-right: 0px;">Logout</a></li>

											<li class="nav-item"><a id="Admin" class="nav-link"
												href="/admin/adminMain"
												style="padding-left: 0px; padding-right: 0px;">Admin</a></li>

										</ul>
									</div>
								</div>
							</nav>
						</div>
					</c:when>

					<c:when test="${loginEmail != null}">
						<div class="row" id="container1">
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
										<ul class="navbar-nav" style="background: white;">
											<li class="nav-item"><a id="About" class="nav-link"
												href="/about" style="padding-left: 0px; padding-right: 0px;">About</a>
											</li>

											<li class="nav-item"><a id="Exhibition" class="nav-link"
												href="/Exhibition/toCurExhibition"
												style="padding-left: 0px; padding-right: 0px;">Exhibition</a>
											</li>

											<li class="nav-item"><a id="Program" class="nav-link"
												href="/program/toProgram"
												style="padding-left: 0px; padding-right: 0px;">Program</a></li>

											<li class="nav-item"><a id="Shop" class="nav-link"
												href="/shop/toShop"
												style="padding-left: 0px; padding-right: 0px;">Shop</a></li>

											<li class="nav-item"><a id="Cart" class="nav-link"
												href="/cart/cartlist"
												style="padding-left: 0px; padding-right: 0px;">Cart</a></li>


										
						<li class="nav-item"><a id="Logout" class="nav-link logout"
												href="#" 
												style="padding-left: 0px; padding-right: 0px;">Logout</a></li>

											<li class="nav-item"><a id="Mypage" class="nav-link"
												href="/mypage/main"
												style="padding-left: 0px; padding-right: 0px;">Mypage</a></li>

										</ul>
									</div>
								</div>
							</nav>
						</div>
					</c:when>

					<c:otherwise>
						<div class="row" id="container1">
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
										<ul class="navbar-nav" style="background: white;">
											<li class="nav-item"><a id="About" class="nav-link"
												href="/about" style="padding-left: 0px; padding-right: 0px;">About</a>
											</li>

											<li class="nav-item"><a id="Exhibition" class="nav-link"
												href="/Exhibition/toCurExhibition"
												style="padding-left: 0px; padding-right: 0px;">Exhibition</a>
											</li>

											<li class="nav-item"><a id="Program" class="nav-link"
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

										</ul>
									</div>
								</div>
							</nav>
						</div>
					</c:otherwise>




				</c:choose>
			</div>
		</div>

		<!-- Order / Payment -->
		<div class="container"  style = margin-top:120px;>
			<div class="row mt-4">


				<div class="col-1">
					<img class=leftbutton src="/images/leftbutton.png"
						style="margin-left: 0px;">
				</div>
				<div class="col-11 align-middle " style="vertical-align: middle;">
					<div class="col h2 align-middle"
						style="text-align: left; vertical-align: middle; line-height: 3.75rem;">Order
						/ Payment</div>
				</div>



			</div>

		</div>

		<!-- 큰 화면 예매자 -->
		<div class="container mt-3">
			<div class=row>
				<div class="col-12">
					<div class=row>
						<div class="col-lg-7 col-12 "
							style="padding-left: 1.564rem; padding-right: 1.564rem;">
							<div class="col h3 mt-2" style="padding: 0px;">예매 정보</div>
							<div class="row rec1" style="margin-top: 2rem; margin-bottom:2rem;">
								<div class="col-12 mt-3">이름</div>
								<div class=col-12 style="margin-top: 0.5rem;">
									<input type=text class="input1 username"
										placeholder="예매자 이름을 입력해 주세요." style="text-align: left;"
										maxlength="3" required>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">전화 번호</div>
								<div class=col-12 style="margin-top: 0.5rem;">
									<input type=text class="input1 phone" maxlength="11"
										pattern="^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$"
										placeholder="전화번호를 입력해 주세요." style="text-align: left;"
										required><br> <span
										style="display: none; text-align: left;" class="phoneck">전화번호를 숫자만 입력 해주세요</span>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">이메일</div>
								<div class="col-12 mb-4" style="margin-top: 0.5rem;">
									<input type=text class="input1 email"
										style="text-align: left;" value="${loginEmail}" readonly>
								</div>


							</div>

						</div>
						<div class="col-lg-1 col-12"></div>
						<!-- 작은 화면 예매자 -->

						<!-- 큰화면 결제 -->

						<div class="col-lg-4 col-12 mb-5"
							style="padding-left: 1.564rem; padding-right: 1.564rem; margin: auto; text-align: center;">
							<div class="col h3 mt-2" style="padding: 0px; text-align: left;">결제
								상세</div>
							<div class="row  rec1" id=row2
								style="margin-top: 2rem; height: 14.5rem;">
								<div class="col-6 h3" style="text-align: center;">총 결제 금액</div>
								<div class="col-6 h3" style="text-align: center;" id=finalprice>${price}</div>
								<div class="col-6 caption" style="text-align: center;">적립예정
									포인트</div>
								<div class="col-6 caption" style="text-align: center;" id=point></div>
								<div class="col-6 caption" style="text-align: center;">포인트
									할인 금액</div>
								<div class="col-6 caption" style="text-align: center;"
									id=usedpoint>0p</div>
								<div class="col-6 caption" style="text-align: center;">쿠폰
									할인 금액</div>
								<div class="col-6 caption" style="text-align: center;"
									id=coupondc>0p</div>
							</div>
							<div class="col-12"
								style="margin-top: 2.5rem; padding: 0px; text-align: center; height: 3.75rem;">
								<button class="btn1_1" id=pay onclick="iamport()"
									style="width: 100%; border:0px solid black;">결제하기</button>
									<button class="btn1_3 mt-2"
									style="width: 100%; border: 0px solid black;">다시선택</button>
							</div>


							<div class="col-12 h4 " 
								style="color: #637381; margin-top:5rem; text-align: left;">약관을 확인하였으며 결제에 동의합니다.</div>
							<div class="col-12 caption "
								style="margin-top: 0.4rem; text-align: left;">
								이용약관 동의<span class=policy id="payspan2" style="cursor:pointer;">보기</span>
							</div>
							<div class="col-12 caption " 
								style="margin-top: 0.4rem; text-align: left;">
								개인정보 수집 및 이용 동의<span class=policy id="payspan4" style="cursor:pointer;">보기</span>
							</div>
							<div class="col-12 caption " 
								style="margin-top: 0.4rem; text-align: left;">결제 대행 서비스 이용약관
							<span class=policy id="payspan6" style="cursor:pointer;">(주)KG이니시스</span>
							</div>
						

						</div>


						<!--작은 화면 결제 -->
						

						<!-- 작은화 결제 -->



					</div>
				</div>
			</div>
		</div>

		<!-- 큰화면 전시정보 -->
		<div class="container" >
			<div class=row>
				<div class="col-12">
					<div class=row>
						<div class="col-lg-7 col-12 "
							style="padding-left: 1.564rem; padding-right: 1.564rem;">
							<div class="col h3 mt-2" style="padding: 0px;">전시 정보</div>


							<div class="row rec1"
								style="margin-top: 2rem; height: 12rem; position: relative;">


								<div class="col-lg-3 col-5">
									<img src="/images/anywayloveSM.png"
										style="width: 10rem; height: 12rem; position: absolute; left: 0px;">
								</div>

								<div class="col-lg-12 body1 col-6"
									style="color: #161C24; margin-top: 1rem; position: absolute; left: 10.5rem;">
									Romantic Days 어쨌든, 사랑
									<div class=h3
										style="color: #161C24; margin-top: 0.5rem; margin-bottom: 0px;"
										id=totalprice>${price}</div>
									<div class=body1 style="margin-top: 0.5rem; color: #919EAB;"
										id=count>${count}매</div>

								</div>
							</div>
							<div class="col-12" style="padding-left: 0rem;">

								<ul class="info body2"
									style="color: #637381; padding-left: 0rem;">
									<li>전시 기간 : 2022.03.16(토) ~ 2022.10.30(일)</li>
									<li>관람 가능 시간 : 오전 10:00~오후 7:00</li>
									<li style="list-style-type: none;">*오후 6시 *매월 첫째 주 월요일 휴관
										*(대체)공휴일 정상 운영</li>
									<li>관람 가능 연령 : 전체 관람가</li>
									<li style="list-style-type: none;">*영유아는 보호자 동반 하에만 입장 및
										관람이 가능합니다.</li>
									<li>매월 첫째 주 월요일은 휴관입니다.</li>
									<li>(대체)공휴일 정상 운영합니다.</li>




								</ul>

							</div>



						</div>






						<!-- 큰화면 쿠폰 포인트 사용 -->
						<div class="col-12 h3 "
							style="padding-left: 0rem; margin-top: 3.75rem;">쿠폰/포인트</div>
						<div class="col-12 body2 "
							style="padding-left: 0rem; margin-top: 2.188em;">쿠폰</div>
							
						<div class="col-12 h3 "
							style="padding-left: 0rem; margin-top: 1.125rem;">

							<select id="selectbox1"
								class="form-select  form-select1"
								aria-label="Default select example"
								style="width: 23.5rem; height: 3rem;">

								<option value='0' value1="inavailableCP" selected>쿠폰을 선택해 주세요.</option>
								<c:forEach var="clist" items="${clist }">
									<option id=option1 class="option1" value="${clist.dc}"
										value1="${clist.serial}">${clist.category}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										-${clist.dc}원</option>

								</c:forEach>
							</select>

						</div>
						<div class="col-12 body2"
							style="padding-left: 0rem; margin-top: 2.188em;">포인트</div>

						<div class="col-12 body2 "
							style="padding-left: 0rem; margin-top: 1.125em;">

							<input type=text class="body2 usedpoint"
								style="width: 15rem; height: 3rem; text-align:left; padding-left:0.7rem; "  placeholder="포인트를 입력후 엔터를 누르세요."  oninput="this.value = this.value.replace(/[^\d]/g, '').replace(/(\..*)\./g, '$1');">
							<button class="h4 usedbutton"
								style="background: #161C24; width: 8rem; height: 3rem; margin-left: 4px; color: white; border-radius: 6px; border:0px solid black;">모두
								사용</button>
						</div>
						<div class="col-12 h5 "
							style="padding-left: 0rem; margin-top: 2.188em;">
							남은포인트 <span class="h5_1 h5_1_1">${mdto.point }</span>
						</div>



						<!--작은 면 쿠폰 포인트 사용 -->


					</div>
				</div>
			</div>
		</div>
		
		<div class="row " id="footer"
			style="margin-top: 12.5rem; padding: 0px; margin-left: 0px; margin-right: 0px;">
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
</body>
<script>




$(".logout").on("click", function(){
  
    
    if (!Kakao.Auth.getAccessToken()) {
//        console.log('Not logged in.');
       location.href="/member/logout";
        return ;
    }
    
     Kakao.Auth.logout(function() {
//           console.log(Kakao.Auth.getAccessToken());
          location.href="/member/logout";
        });
    return true;
 });



$(".phone").on("keyup", function() {
	let phone = $(this).val();
	let phoneRegex = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	let phoneResult = phoneRegex.test(phone);
	

if (phoneResult) {
		$(".phone").css("border", "1px solid #1890FF ");
		$(".phoneck").css("color", "#1890FF");
		$(".phoneck").css("display", "inline");
		$(".phoneck").text("사용할수 있는 번호입니다.");
	
	
	}

else if (phone=='') {
	$(".phone").css("border", "1px solid #1890FF ");
	$(".phoneck").css("color", "#1890FF");
	$(".phoneck").css("display", "inline");
	$(".phoneck").text("");


}

else if (!phoneResult) {
	$(".phone").css("border", "1px solid #FF4842");	
	$(".phoneck").css("color", "#FF4842");
	$(".phoneck").css("display", "inline");
	$(".phoneck").text("올바른 핸드폰번호를 입력해주세요.");
	
}


})

	
//큰화면 쿠폰사용
$(".form-select1").on('change',function(){
	console.log($(".h5_1").text());
console.log('여기1');
	//나한테 있는 포인트가 사용되었다면
 if(${mdto.point}!=$(".h5_1_1").text())
 
 {
	 alert('포인트 사용시 쿠폰을 적용 할 수 없습니다.');
	return false;
 }

	if($(".form-select1 option:selected").text() == '쿠폰을 선택해 주세요.'){
		$("#finalprice").text('${price}');
		 let coupondc =  $(".form-select1 option:selected").val();
			$('#coupondc').text(coupondc+'p');
	}
	else{
   let coupondc =  $(".form-select1 option:selected").text();
	$('#coupondc').text(coupondc);
	let price = '${price}';
	let price1 = price.replace(",", "");
	let price2 = price1.replace("원", "");
	
	$("#finalprice").text((price2-$(".form-select1 option:selected").val()).toLocaleString()+"원");
}
})









//뒤로가기
	$(".leftbutton").on("click", function() {

		location.href = "/Exhibition/toCurExhibition";
	})
		$(".btn1_3").on("click", function() {

		location.href = "/Exhibition/toCurdetail";
	})

	
	
	
	
	
	
	//모두사용 큰화
	
	$(".usedbutton").on("click", function() {
		console.log('여기3');
console.log($(".form-select1 option:selected").text());
		if($(".form-select1 option:selected").text() == '쿠폰을 선택해 주세요.'){
			console.log('hihddi');
			

		
		
		if($(".h5_1_1").text()==0){
			
			alert('사용 가능한 포인트가 없습니다.');
		return false;	
		}
		
		
	if($(".h5_1_1").text()==0){
			
			alert('사용 가능한 포인트가 없습니다.');
		return false;	
		}else if($(".h5_1_1").text()>5000){
			alert('한번에 사용가능 한 최대 포인트는 5000원 입니다.');
		
			let price = '${price}';
			let price1 = price.replace(",", "");
			let price2 = price1.replace("원", "");
			
			$(".h5_1_1").text(${mdto.point}-5000);
			$("#usedpoint").text('-'+5000+"p");
			$("#finalprice").text((price2-5000).toLocaleString()+"원");
			
			
			
			return false;
		}

		let price = '${price}';
		let price1 = price.replace(",", "");
		let price2 = price1.replace("원", "");
		
		$(".h5_1_1").text(0);
		$("#usedpoint").text('-'+${mdto.point}+"p");
		$("#finalprice").text((price2-${mdto.point}).toLocaleString()+"원");
		
		}else{
			alert('쿠폰 사용시 포인트를 사용 할 수 없습니다.');
			return false;
		}

	})
	
	$(".usedpoint").keypress(function(e) {
		console.log('여기5');
		if($(".form-select1 option:selected").text() == '쿠폰을 선택해 주세요.'){
		if (e.keyCode == 13) {
			let mypoint = parseInt($(".h5_1_1").text());
			
			let price = $("#finalprice").text();
			let price1 = price.replace(",", "");
			let price2 = price1.replace("원", "");
			
		let ipusedpoint =	$(this).val();
		let ipusedpoint1 =	parseInt(ipusedpoint);
		
		let opusedpoint =	$("#usedpoint").text();
		let opusedpoint1 = opusedpoint.replace('p','');
		let opusedpoint2 = parseInt(opusedpoint1);
		
		let price3 = '${price}';
		let price4 = price3.replace(",", "");
		let price5 = price4.replace("원", "");
		let price6 = parseInt(price5);
		console.log(ipusedpoint);
		console.log(opusedpoint2);
		
		

		console.log(price5);

		let check = /^[0-9]+$/; 
	
			
			if (($(this).val() <= mypoint)&&($(this).val()<=5000)) {
			
			
				
				 if(parseInt($(".h5_1_1").text())<${mdto.point}-5000){
					alert('한번에 사용 가능한 최대 포인트는 5000원 입니다..');
					$(this).val('');
					return false;
				}else  if(parseInt($(".h5_1_1").text())-$(this).val()>=${mdto.point}-5000){
				$(".h5_1_1").text(mypoint - $(this).val());
				console.log('ddddaa');
		
			$("#usedpoint").text('-'+(${mdto.point}-(mypoint - $(this).val())+'p'));
				$("#finalprice").text((price2-$(this).val()).toLocaleString()+"원");
			
				}else{
					console.log('11');
					alert('한번에 사용 가능한 최대 포인트는 5000원 입니다..');
				}
			}else if(!check.test($(this).val())){
				alert('숫자만 입력할 수 있습니다.');
				$(this).val('');
				return false;
				
			}
			 else {
					console.log('22');
				alert('사용 할 수 있는 총 포인트롤 초과했습니다.');
				$(this).val('');
			}
		}
		}else{
			alert('쿠폰 사용시 포인트를 사용 할 수 없습니다.');
			return false;
		}

	})
	
	
	// 큰 화면 일부 포인트 사용엔터
	
	
/* 	$(".usedpoint").keypress(function(e) {
		console.log('여기5');
		if($(".form-select1 option:selected").text() == '쿠폰을 선택해 주세요.'){
		if (e.keyCode == 13) {
			let mypoint = parseInt($(".h5_1_1").text());
			
			let price = $("#finalprice").text();
			let price1 = price.replace(",", "");
			let price2 = price1.replace("원", "");
			
		let ipusedpoint =	$(this).val();
		let ipusedpoint1 =	parseInt(ipusedpoint);
		
		let opusedpoint =	$("#usedpoint").text();
		let opusedpoint1 = opusedpoint.replace('p','');
		let opusedpoint2 = parseInt(opusedpoint1);
		
		let price3 = '${price}';
		let price4 = price3.replace(",", "");
		let price5 = price4.replace("원", "");
		let price6 = parseInt(price5);
		console.log(ipusedpoint);
		console.log(opusedpoint2);
		
		

		console.log(price5);

		let check = /^[0-9]+$/; 
	
			
			if (($(this).val() <= mypoint)&&($(this).val()<=5000)) {
			
			
				
				 if(parseInt($(".h5_1_1").text())<${mdto.point}-5000){
					alert('한번에 사용 가능한 최대 포인트는 5000원 입니다..');
					$(this).val('');
					return false;
				}else  if(parseInt($(".h5_1_1").text())-$(this).val()>=${mdto.point}-5000){
				$(".h5_1_1").text(mypoint - $(this).val());
				console.log('ddddaa');
		
			$("#usedpoint").text('-'+(${mdto.point}-(mypoint - $(this).val())+'p'));
				$("#finalprice").text((price2-$(this).val()).toLocaleString()+"원");
			
				}else{
					alert('한번에 사용 가능한 최대 포인트는 5000원 입니다..');
				}
			}else if(!check.test($(this).val())){
				alert('숫자만 입력할 수 있습니다.');
				$(this).val('');
				return false;
				
			}
			 else {
				alert('한번에 사용가능 한 최대 포인트는 5000원 입니다.');
				$(this).val('');
			}
		}
		}else{
			alert('쿠폰 사용시 포인트를 사용 할 수 없습니다.');
			return false;
		}

	}) */
	
	
	
	//일부포인트 작은화면
	
	
	
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
	
	
	
	
	
		
	
	
	
	


	window.onload = function() {
		let point = '${price}';
		let point1 = point.replace(",", "");
		let point2 = point1.replace("원", "");
		
		if('${mdto.grade}'=='White'){
		finalpoint = parseInt(point2) * 0.01;
		
		}else if('${mdto.grade}'=='Gray'){
			finalpoint = parseInt(point2) * 0.05;
	
		}else if('${mdto.grade}'=='Black'){
			finalpoint = parseInt(point2) * 0.1;
		}
		
		$("#point").text(finalpoint + "p");
		$("#point2").text(finalpoint + "p");

	}




	function iamport() {
		console.log($(".username").val());
		let price = $("#finalprice").text();
		let price1 = price.replace(",", "");
		let price2 = price1.replace("원", "");
		let price3 = parseInt(price2);
		
		let count = $("#count").text();
		let count1 = count.replace("매", "");

		let point = $("#point").text();
		let point1 = point.replace("p", "");
		let point2 = parseInt(point1);
		
		
		let usedpoint = $("#usedpoint").text();
		let usedpoint1 = usedpoint.replace("p","");
		let usedpoint2 = usedpoint1.replace("-","");
		let usedpoint3 = parseInt(usedpoint2);
	
		
	   if($(".username").val()==""){
			alert('이름을 입력해주세요.');
			return false;
		}
	   if($(".phoneck").text()=="올바른 핸드폰번호를 입력해주세요."){
			alert('올바른 핸드폰번호를 입력해주세요.');
			return false;
		}
	   if($(".phone").val()==''){
			alert('올바른 핸드폰번호를 입력해주세요.');
			return false;
		}
		
		//가맹점 식별코드
		IMP.init('imp48062056');
		IMP.request_pay({
			pg : 'kcp',
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : 'Romantic Days 어쨋든 사랑', //결제창에서 보여질 이름
			amount : price3, //실제 결제되는 가격
			buyer_email : $(".email").val(),
			buyer_name : $(".username").val(),
			buyer_tel : $(".phone").val(),
			buyer_addr : '서울 강남구 도곡동',
			buyer_postcode : '123-456'

		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				
				$.ajax({
					url : "/pay/insertEx",
					data : {

						et_email : $(".email").val(),
						et_title : "Romantic Days 어쨋든 사랑",
						et_place : "지하철 3호선 경복궁역 지하 1층",
						et_date : "2022.03.16 ~ 2022.10.30",
						et_booknumber : rsp.merchant_uid,
						et_state : "BU", //이거 사용되면 N으로 바꾸는 로직 필요(qr연계?)
						et_username : $(".username").val(),
						et_phone : $(".phone").val(),
						et_paymethod : rsp.card_name,
						et_cardnumber : rsp.card_number,
						et_cardquota : rsp.card_quota,
						et_cost : price3,
						et_count : count1,
						et_point : point2,
						et_usedpoint : usedpoint3,
						et_cpdiscount : parseInt($(".form-select option:selected").val()),
						et_cpserial :  $(".form-select option:selected").attr('value1'),
						et_category : 'E',
						e_num : 1020
					},

					type : "post",
					dataType : "json"
				}).done(function(resp) {
					location.href="/Exhibition/tobooksuccess";
				});
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			
		});
		
	}
	

	
		
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
</html>




