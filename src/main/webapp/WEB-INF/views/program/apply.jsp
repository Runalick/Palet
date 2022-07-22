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
<title>Palet</title>

<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>



<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.css'
	rel='stylesheet' />
<!--  //   <link href='https://cdn.jsdelivr.net/combine/npm/fullcalendar@5.11.0/main.min.css,npm/fullcalendar@5.11.0/main.min.css' rel='stylesheet' /> -->
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.js'></script>
<!--   <script src='https://cdn.jsdelivr.net/combine/npm/fullcalendar@5.11.0,npm/fullcalendar@5.11.0/main.min.js'></script> -->

<style>
@charset "UTF-8";

@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);

@media ( min-width : 375px) {
	.container {
		max-width: 1280px;
	}
	html {
		font-size: 16px;
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

.nav-item {
	margin: auoto;
	padding-right: 20px;
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
	border-radius: 15px;
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
	padding: 0.75rem;
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
	float: right;
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

.ul2_1>li {
	display: inline-block;
	margin: 2rem;
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

#calendar {
height:33rem;
	color: black !important;
	text-color: black !important;
}

.fc-col-header-cell-cushion {
	color: black !important;
}

.fc-daygrid-day-number {
	color: black !important;
}

.fc-daygrid-day-frame:hover {
	/* 	background: gray !important; */
	color: gray !important;
}
/* .fc-scroller {
  height: auto !important;
} */
.fc-scroller-liquid-absolute {
	position: static !important;
}

.fc-toolbar-title {
	font-family: 'Spoqa Han Sans Neo' !important;
	font-style: normal !important;
	font-weight: 700 !important;
	font-size: 1.25rem !important;
	line-height: 1.5rem !important;
	/* identical to box height */
	/* Gray/900 */
	color: #161C24 !important;
}

/* .container, .container-fluid, .container-lg, .container-md,
	.container-sm, .container-xl, .container-xxl {
	overflow-x: hidden;
} */
/* #calendar{
border-radius: 20px !important;
}

.fc-scrollgrid  .fc-scrollgrid-liquid{

border-radius: 20px !important;
}
.fc .fc-col-header-cell-cushion {
  display: inline-block;
  border-radius: 5rem !important;
  padding: 2px 4px;
} */
</style>


</head>
<body>
	<div class="container-fluid">
		<div class="container-fluid">
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
												href="about" style="padding-left: 0px; padding-right: 0px;">About</a>
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

											<li class="nav-item"><a id="Logout" class="nav-link"
												href="/member/loginPage" onclick="return logout();"
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
												href="about" style="padding-left: 0px; padding-right: 0px;">About</a>
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

											<li class="nav-item"><a id="Logout" class="nav-link"
												href="/member/loginPage" onclick="return logout();"
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
												href="about" style="padding-left: 0px; padding-right: 0px;">About</a>
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
				<!--Booking /Payment-->
	<div class="container mt-3">
			<div class="row mt-4">


				<div class="col-1">
					<img class=leftbutton src="/images/leftbutton.png"
						style="margin-left: 0px;">
				</div>
				<div class="col-11 align-middle " style = "vertical-align:middle;">
					<div class="col h2 align-middle" style="text-align: left; vertical-align:middle; line-height:3.75rem;">Booking / Payment</div>
				</div>

				

			</div>

		</div>
		<!-- 큰 화면 신청자 -->
		<div class="container mt-3">
			<div class=row>
				<div class="col-12">
					<div class=row>
						<div class="col-lg-7 col-12 d-none d-sm-block"
							style="padding-left: 1.564rem;">
							<div class="col h3 mt-2" style="padding: 0px;">신청자 정보</div>
							<div class="row rec1" style="margin-top: 2rem;">
								<div class="col-12 mt-3">이름</div>
								<div class=col-12 style="margin-top: 0.5rem;">
									<input type=text class="input1 username"
										placeholder="신청자 이름을 입력해 주세요." style = "text-align:center" required>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">전화 번호</div>
								<div class=col-12 style="margin-top: 0.5rem;">
									<input type=text class="input1 phone" style = "text-align:center"
										placeholder="전화번호를 입력해 주세요." required>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">이메일</div>
								<div class="col-12 mb-4" style="margin-top: 0.5rem;">
									<input type=text class="input1 email"
										style="text-align: center;" value="${loginEmail}" readonly>
								</div>

								<div class=col-12 style="margin-top: 1.5rem;">날짜</div>
								<div class="col-12 mb-4" style="margin-top: 0.5rem;">
									<input type=text class="input1 date"
										style="text-align: center; color:#ff4842; font-weight :bold;'" readonly>
								</div>


							</div>

						</div>
						<div class="col-lg-1 col-12"></div>
						<!-- 작은 화면 신청자 -->

						<div class="col-lg-7 col-12 d-block d-sm-none"
							style="padding-left: 1.564rem; text-align: center;">
							<div class="col h3 mt-2" style="padding: 0px;">신청자 정보</div>
							<div class="row rec1 mb-5">
								<div class="col-12 mt-3">이름</div>
								<div class=col-12 style="margin-top: 0.5rem;">
									<input type=text class="input1 username" style = "text-align:center"
										placeholder="신청자 이름을 입력해 주세요." required>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">전화 번호</div>
								<div class=col-12 style="margin-top: 0.5rem;">
									<input type=text class="input1 phone" style = "text-align:center"
										placeholder="전화번호를 입력해 주세요." required>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">이메일</div>
								<div class="col-12 mb-5" style="margin-top: 0.5rem;">
									<input type=text class="input1 email" 
										style="text-align: center;" value="${loginEmail}" readonly>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">날짜</div>
								<div class="col-12 mb-4" style="margin-top: 0.5rem;">
									<input type=text class="input1 date"
										style="text-align: center; color:#ff4842; font-weight :bold;'" readonly>
								</div>
							</div>
						</div>
						<!-- 달력-->
						<div class="col-lg-4 col-12"
							style="padding-left: 1.564rem; color: black;" id="calendar">

						</div>

					</div>
				</div>
			</div>
		</div>



		<!-- 큰 화면 프로그램 -->
		<div class="container mt-5">
			<div class=row>
				<div class="col-12">
					<div class=row>
						<div class="col-lg-7 col-12 d-none d-sm-block"
							style="padding-left: 1.564rem;">
							<div class="col h3 mt-2" style="padding: 0px;">프로그램 정보</div>


							<div class="row rec1"
								style="margin-top: 2rem; height: 12rem; position: relative;">


								<div class="col-lg-3 col-5">
									<img src="/images/kidclass.png"
										style="width: 10rem; height: 12rem; position: absolute; left: 0px;">
								</div>

								<div class="col-lg-12 body1 col-6"
									style="color: #161C24; margin-top: 2.325rem; position: absolute; left: 10.5rem;">
									키즈 워크룸:애니 메이터 프로젝트
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
									<li>키즈워크룸은 8세~13세 어린이를 대상으로 합니다.</li>
									<li>수업은 에듀케이터와 보조강사까지 2~3명의 전문 인력이 진행합니다.</li>

									<li>수업은 120분 동안 진행되며, 학부모와 함께하는 발표 시간이 포함되어 있습니다.</li>

									<li>교육실 입장은 수업 시작 20분 전부터 가능하며, 신청 아동만 수업에 참여할 수 있습니다.
										(보호자의 전시 관람은 현장에서 안내 드릴 예정입니다.)</li>
									<li>별도의 준비물은 필요하지 않으며 아이들이 즐겁게 수업에 참여할 수 있도록 편한 복장과 신발 착용
										부탁드립니다.</li>

								</ul>
							</div>



						</div>




						<!-- 큰 화면 결제-->
						<div class="col-lg-1 col-12"></div>
						<div class="col-lg-4 col-12"
							style="margin: auto; text-align: center; padding-left: 1.564rem;">
							<div class="col h3 mt-2" style="padding: 0px; text-align: left;">결제
								상세</div>
							<div class="row  rec1" id=row2
								style="margin-top: 2rem; height: 12rem;">
								<div class="col-6 h3" style="text-align: center;">총 결제 금액</div>
								<div class="col-6 h3" style="text-align: center;" id=finalprice>${price }</div>
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
								style="margin-top: 1rem; padding: 0px; text-align: center; height: 3.75rem;">
								<button class="btn1_1" id=pay onclick="iamport()"
									style="width: 100%;">결제하기</button>
							</div>


							<div class="col-12 h4 d-none d-sm-block"
								style="color: #637381; margin-top: 1.75rem; text-align: left;">약관
								및 취소 환불 규정을 확인하였으며 결제에 동의합니다.</div>
							<div class="col-12 caption d-none d-sm-block"
								style="margin-top: 0.4rem; text-align: left;">
								이용약관 동의<a class=policy>보기</a>
							</div>
							<div class="col-12 caption d-none d-sm-block"
								style="margin-top: 0.4rem; text-align: left;">
								개인정보 수집 및 이용 동의<a class=policy>보기</a>
							</div>
							<div class="col-12 caption d-none d-sm-block"
								style="margin-top: 0.4rem; text-align: left;">
								결제 대행 서비스 이용약관<a class=policy>보기</a>
							</div>
							<div class="col-12 caption d-none d-sm-block"
								style="margin-top: 0.4rem; text-align: left;">
								취소 환불 규정<a class=policy>보기</a>
							</div>


						</div>

						<!-- 
						<div class="col-12 h4 d-block d-sm-none"
							style="color: #637381; margin-top: 1.75rem;">약관 및 취소 환불 규정을
							확인하였으며 결제에 동의합니다.</div>
						<div class="col-12 caption d-block d-sm-none"
							style="margin-top: 0.4rem;">
							이용약관 동의<a class=policy>보기</a>
						</div>
						<div class="col-12 caption d-block d-sm-none"
							style="margin-top: 0.4rem;">
							개인정보 수집 및 이용 동의<a class=policy>보기</a>
						</div>
						<div class="col-12 caption d-block d-sm-none"
							style="margin-top: 0.4rem;">
							결제 대행 서비스 이용약관<a class=policy>보기</a>
						</div>
						<div class="col-12 caption d-block d-sm-none"
							style="margin-top: 0.4rem;">
							취소 환불 규정<a class=policy>보기</a>
						</div>
						 -->


						<!-- 큰화면 쿠폰 마일리지 사용 -->
						<div class="col-12 h3 d-none d-sm-block"
							style="padding-left: 0rem; margin-top: 3.75rem;">쿠폰/마일리지</div>
						<div class="col-12 body2 d-none d-sm-block"
							style="padding-left: 0rem; margin-top: 2.188em;">쿠폰</div>
						<div class="col-12 h3 d-none d-sm-block"
							style="padding-left: 0rem; margin-top: 1.125rem;">

							<select id="selectbox1" class="form-select d-none d-sm-block form-select1"
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
						<div class="col-12 body2 d-none d-sm-block"
							style="padding-left: 0rem; margin-top: 2.188em;">마일리지</div>

						<div class="col-12 body2 d-none d-sm-block"
							style="padding-left: 0rem; margin-top: 1.125em;">

							<input type=text class="body2 usedpoint"
								style="width: 15rem; height: 3rem;">
							<button class="h4 usedbutton"
								style="background: #161C24; width: 8rem; height: 3rem; margin-left: 4px; color: white; border-radius: 6px;">모두
								사용</button>
						</div>
						<div class="col-12 h5 d-none d-sm-block"
							style="padding-left: 0rem; margin-top: 2.188em;">
							남은마일리지 <span class="h5_1 h5_1_1" >${mdto.point }</span>
						</div>



						<!--작은 면 쿠폰 마일리지 사용 -->
						<div class="col-12 h3 d-block d-sm-none"
							style="padding-left: 0rem; margin-top: 3.75rem; text-align: center;">쿠폰/마일리지</div>
						<div class="col-12 body2 d-block d-sm-none"
							style="padding-left: 0rem; margin-top: 2.188em; text-align: center;">쿠폰</div>
						<div class="col-12 h3 d-block d-sm-none"
							style="padding-left: 0rem; margin-top: 1.125rem; text-align: center;">

							<select id="selectbox" class="form-select d-block d-sm-none form-select2"
								aria-label="Default select example"
								style="width: 23.5rem; height: 3rem; text-align: center; margin: auto;">

								<option value='0' value1="inavailableCP"
									class="d-block d-sm-none" selected style="text-align: center;">쿠폰을 선택해 주세요.</option>
								<c:forEach var="clist" items="${clist }">
									<option id=option2 class="option2 d-block d-sm-none"
										value="${clist.dc}" style="text-align: center;"
										value1="${clist.serial}">${clist.category}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										-${clist.dc}원</option>

								</c:forEach>
							</select>

						</div>
						<div class="col-12 body2 d-block d-sm-none"
							style="padding-left: 0rem; margin-top: 2.188em; text-align: center;">마일리지</div>

						<div class="col-12 body2 d-block d-sm-none"
							style="padding-left: 0rem; margin-top: 1.125em; text-align: center;">

							<input type=text class="body2 usedpoint d-block d-sm-none"
								style="width: 15rem; height: 3rem; text-align: center; margin: auto;">
							<button class="h4 usedbutton d-block d-sm-none mt-4"
								style="background: #161C24; width: 8rem; height: 3rem; margin-left: 4px; color: white; border-radius: 6px; margin: auto; text-align: center;">모두
								사용</button>
						</div>
						<div class="col-12 h5 d-block d-sm-none"
							style="padding-left: 0rem; margin-top: 2.188em; text-align: center;">
							남은마일리지 <span class="h5_1 h5_1_2" >${mdto.point }</span>
						</div>










						<!-- 작은 화면 프로그램 -->
						<div class="col-lg-6 col-12 d-block d-sm-none"
							style="padding-left: 1.564rem; margin-top: 3rem;">
							<div class="col h3 mt-2" style="padding: 0px;">프로그램 정보</div>


							<div class="row rec1"
								style="margin-top: 2rem; height: 12rem; position: relative;">


								<div class="col-lg-3 col-5">
									<img src="/images/kidclass.png"
										style="width: 10rem; height: 12rem; position: absolute; left: 0px;">
								</div>

								<div class="col-lg-12 body1 col-6"
									style="color: #161C24; margin-top:1em; position: absolute; left: 10.5rem;">
									키즈 워크룸:애니 메이터 프로젝트
									<div class=h3
										style="color: #161C24; margin-top: 0.5rem; margin-bottom: 0px;"
										id=totalprice>${price}</div>
									<div class=body1 style="margin-top: 0.5rem; color: #919EAB;"
										id=count>${count}매</div>

								</div>


							</div>


						</div>


						
					
					</div>
				</div>
			</div>
		</div>




		<!-- 	<div class="row">
			<div class="col" id="calendar"></div>


		</div> -->

		<div class="row w-100" id="footer"
			style="margin-top: 12.5rem; padding: 0px; margin-left:0px; margin-right:0px;">
			<div class="container">
				<div class="row">
					<div class="col-12 h3" style="color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
					<div class="col-12 body2" style="color: #637381;">사업자 등록번호 :
						123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div>
					<br>
					<div class="col-12 body2"
						style="color: #637381;">3호선 경복궁역 지하
						1층 | contact@palet.com</div>

				</div>
			</div>
		</div>
	</div>


</body>
<script>


//로딩시 데이터
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
	
	

}


//큰화면 마일리지 사용
$(".form-select1").on('change',function(){
	console.log($(".h5_1").text());
	//나한테 있는 마일리지가 사용되었다면
 if(${mdto.point}!=$(".h5_1_1").text())
 
 {
	 alert('마일리지 사용시 쿠폰을 적용 할 수 없습니다.');
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




//작은화면 마일리지 사용
$(".form-select2").on('change',function(){
	console.log($(".h5_1_2").text());
	//나한테 있는 마일리지가 사용되었다면
 if(${mdto.point}!=$(".h5_1_2").text())
 
 {
	 alert('마일리지 사용시 쿠폰을 적용 할 수 없습니다.');
	return false;
 }

	if($(".form-select2 option:selected").text() == '쿠폰을 선택해 주세요.'){
		$("#finalprice").text('${price}');
		 let coupondc =  $(".form-select2 option:selected").val();
			$('#coupondc').text(coupondc+'p');
	}
	else{
   let coupondc =  $(".form-select2 option:selected").text();
	$('#coupondc').text(coupondc);
	let price = '${price}';
	let price1 = price.replace(",", "");
	let price2 = price1.replace("원", "");
	
	$("#finalprice").text((price2-$(".form-select2 option:selected").val()).toLocaleString()+"원");
}
})







//뒤로가기
	$(".leftbutton").on("click", function() {

		location.href = "/Exhibition/toCurExhibition";
	})

	
	
	
	
	
	//모두사용 큰화
	
	$(".usedbutton").on("click", function() {
console.log($(".form-select1 option:selected").text() );
		if($(".form-select1 option:selected").text() == '쿠폰을 선택해 주세요.'){
			console.log('hihddi');
			

		
		
		if($(".h5_1_1").text()==0){
			
			alert('사용 가능한 마일리지가 없습니다.');
		return false;	
		}

		let price = '${price}';
		let price1 = price.replace(",", "");
		let price2 = price1.replace("원", "");
		
		$(".h5_1_1").text(0);
		$("#usedpoint").text('-'+${mdto.point}+"p");
		$("#finalprice").text((price2-${mdto.point}).toLocaleString()+"원");
		
		}else{
			alert('쿠폰 사용시 마일리지를 사용 할 수 없습니다.');
			return false;
		}

	})
	
	//모두사용 작은화면
	
		$(".usedbutton").on("click", function() {
console.log($(".form-select2 option:selected").text() );
		if($(".form-select2 option:selected").text() == '쿠폰을 선택해 주세요.'){
			console.log('hihddi');
			

		
		
		if($(".h5_1_2").text()==0){
			
			alert('사용 가능한 마일리지가 없습니다.');
		return false;	
		}

		let price = '${price}';
		let price1 = price.replace(",", "");
		let price2 = price1.replace("원", "");
		
		$(".h5_1_2").text(0);
		$("#usedpoint").text('-'+${mdto.point}+"p");
		$("#finalprice").text((price2-${mdto.point}).toLocaleString()+"원");
		
		}else{
			alert('쿠폰 사용시 마일리지를 사용 할 수 없습니다.');
			return false;
		}

	})


	
	
	
	
	
	
	
	//일부 마일리지 사용엔터
	
	
	$(".usedpoint").keypress(function(e) {
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
		
		console.log(ipusedpoint);
		console.log(opusedpoint2);
		
		

			
			
			if ($(this).val() <= mypoint) {
				
				(mypoint - $(this).val())

				$(".h5_1_1").text(mypoint - $(this).val());
				${mdto.point }
				//$("#usedpoint").text('-'+(opusedpoint2+ipusedpoint1)+'p');
			$("#usedpoint").text('-'+(${mdto.point}-(mypoint - $(this).val())+'p'));
				$("#finalprice").text((price2-$(this).val()).toLocaleString()+"원");
				$(this).val('');
			} else {
				alert('사용 가능한 point를 초과하였습니다.');
				$(this).val('');
			}
		}
		}else{
			alert('쿠폰 사용시 마일리지를 사용 할 수 없습니다.');
			return false;
		}

	})
	
	
	
	//일부마일리지 작은화면
	
	
	
	$(".usedpoint").keypress(function(e) {
		if($(".form-select2 option:selected").text() == '쿠폰을 선택해 주세요.'){
		if (e.keyCode == 13) {
			let mypoint = parseInt($(".h5_1_2").text());
			
			let price = $("#finalprice").text();
			let price1 = price.replace(",", "");
			let price2 = price1.replace("원", "");
			
		let ipusedpoint =	$(this).val();
		let ipusedpoint1 =	parseInt(ipusedpoint);
		
		let opusedpoint =	$("#usedpoint").text();
		let opusedpoint1 = opusedpoint.replace('p','');
		let opusedpoint2 = parseInt(opusedpoint1);
		
		console.log(ipusedpoint);
		console.log(opusedpoint2);
		
		

			
			
			if ($(this).val() <= mypoint) {
				
				(mypoint - $(this).val())

				$(".h5_1_2").text(mypoint - $(this).val());
				${mdto.point }
				//$("#usedpoint").text('-'+(opusedpoint2+ipusedpoint1)+'p');
			$("#usedpoint").text('-'+(${mdto.point}-(mypoint - $(this).val())+'p'));
				$("#finalprice").text((price2-$(this).val()).toLocaleString()+"원");
				$(this).val('');
			} else {
				alert('사용 가능한 point를 초과하였습니다.');
				$(this).val('');
			}
		}
		}else{
			alert('쿠폰 사용시 마일리지를 사용 할 수 없습니다.');
			return false;
		}

	})
	
	

	//캘린

	


document.addEventListener('DOMContentLoaded', function() {
     var calendarEl = document.getElementById('calendar');
     var today = new Date();
     var year = today.getFullYear();
     var month = ('0' + (today.getMonth() + 1)).slice(-2);
     var day = ('0' + today.getDate()).slice(-2);

     var dateString = year + '-' + month  + '-' + day;
     var calendar = new   FullCalendar.Calendar(calendarEl, {
    
       initialView: 'dayGridMonth',
 
      // selectable:true,
     //  unselectAuto: true
 
     	   dateClick: function(info) {
     		    console.log(info.dateStr);
     		    console.log(dateString);
    
    	let result = confirm('해당 날짜 ('+info.dateStr+')로 예약 하시겠습니까?');
     //  	    alert('Date: ' + info.dayEl);
   		if(result){
   			$(".date").val(info.dateStr);
   		
   		//	selectable: true;
   			console.log('hi');
   		}else{
return false;


   		}
      
       	  } 
      
     
   
     });
     
    
     
     
     calendar.render();
     
  
    	}); 
    	
 
/*      
var calendar = new FullCalendar.Calendar(calendarEl, {
	 alert('ddfdf');
	});
  */
	
	
	/* $('.fc-daygrid-day-frame').on('click',function(){
		
		$(this).css('background-color','red');
		alert('hi');
		
		
	})
		$('.fc-daygrid-day').on('click',function(){
		
		$(this).css('background-color','red');
		alert('hi');
		
		
	})
	 */
/* 	dayClick: function(date, allDay, jsEvent, view) {
   var yy=date.format("YYYY");
   var mm=date.format("MM");
   var dd=date.format("DD");
   var ss=date.format("dd");
   onchangeDay(yy,mm,dd,ss);
     }, 
	 */


	function iamport() {
		//가맹점 식별코드
		IMP.init('imp48062056');
		IMP.request_pay({
			pg : 'kcp',
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '예매', //결제창에서 보여질 이름
			amount : 100, //실제 결제되는 가격
			buyer_email : $(".email").val(),
			buyer_name : $(".username").val(),
			buyer_tel : $(".phone").val(),
			buyer_addr : '서울 강남구 도곡동',
			buyer_postcode : '123-456'

		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				let price = $("#finalprice").text();
				let price1 = price.replace(",", "");
				let price2 = price1.replace("원", "");

				let count = $("#count").text();
				let count1 = count.replace("매", "");

				let point = $("#point").text();
				let point1 = point.replace("p", "");
				let point2 = parseInt(point1);
				
				
				let usedpoint = $("#usedpoint").text();
				let usedpoint1 = usedpoint.replace("p","");
				let usedpoint2 = usedpoint1.replace("-","");
				let usedpoint3 = parseInt(usedpoint2);
				
				
				$.ajax({
					url : "/pay/insertPro",
					data : {

						pro_email : $(".email").val(),
						pro_title : "키즈 워크룸:애니메이터 프로젝트",
						pro_place : "지하철 3호선 경복궁역 지하 2층",
						pro_date : "2022.03.16 ~ 2022.10.30",
						pro_pickdate : $(".date").val(),
						pro_booknumber : rsp.merchant_uid,
						pro_state : "BU", //이거 사용되면 N으로 바꾸는 로직 필요(qr연계?)
						pro_username : $(".username").val(),
						pro_phone : $(".phone").val(),
						pro_paymethod : rsp.card_name,
						pro_cardnumber : rsp.card_number,
						pro_cardquota : rsp.card_quota,
						pro_cost : price2,
						pro_count : count1,
						pro_point : point2,
						pro_usedpoint : usedpoint3,
						pro_cpdiscount : parseInt($(".form-select option:selected").val()),
						pro_cpserial :  $(".form-select option:selected").attr('value1'),
						pro_category : 'P',
						p_num : 102
					},

					type : "post",
					dataType : "json"
				}).done(function(resp) {
					alert(resp);
				});
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				console.log(msg);
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				console.log(msg);
				msg += '결제 금액 : ' + rsp.paid_amount;
				console.log(msg);
				msg += '카드 승인번호 : ' + rsp.apply_num;
				
				
			console.log(msg);
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
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

<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
   
   
   
    <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.css' rel='stylesheet' />
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.js'></script>
=======
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
>>>>>>> 8479f8cb67112b7fa20c1ca283872c479a4141aa
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
</style>


</head>
<body>
	<div class="container-fluid">
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


			<div class="row mt-4">


				<div class="col-1">
					<img class=leftbutton src="/images/leftbutton.png"
						style="margin-left: 0px;">
				</div>
				<div class="col-11">
					<div class="col h2" style="text-align: left;">Order / Payment</div>
				</div>

				<div class="col-12" style="margin-top: 2.5rem; text-align: left;">


					<div class="col h3" style="padding: 0px;">신청자 정보</div>



				</div>



			</div>

		</div>
		<div class="container mt-3">
			<div class=row>
				<div class="col-12">
					<div class=row>
						<div class="col-lg-7 col-12 d-none d-sm-block"
							style="padding-left: 1.564rem;">
							<div class="row rec1">
								<div class="col-12 mt-3">이름</div>
								<div class=col-12 style="margin-top: 0.5rem;">
									<input type=text class="input1 username"
										placeholder="신청자 이름을 입력해 주세요." required>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">전화 번호</div>
								<div class=col-12 style="margin-top: 0.5rem;">
									<input type=text class="input1 phone"
										placeholder="전화번호를 입력해 주세요." required>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">이메일</div>
								<div class="col-12 mb-4" style="margin-top: 0.5rem;">
									<input type=text class="input1 email"
										style="text-align: center;" value="${loginEmail}" readonly>
								</div>

							</div>

						</div>


						<div class="col-lg-7 col-12 d-block d-sm-none"
							style="padding-left: 1.564rem; text-align: center;">
							<div class="row rec1">
								<div class="col-12 mt-3">이름</div>
								<div class=col-12 style="margin-top: 0.5rem;">
									<input type=text class="input1 username"
										placeholder="신청자 이름을 입력해 주세요." required>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">전화 번호</div>
								<div class=col-12 style="margin-top: 0.5rem;">
									<input type=text class="input1 phone"
										placeholder="전화번호를 입력해 주세요." required>
								</div>
								<div class=col-12 style="margin-top: 1.5rem;">이메일</div>
								<div class="col-12 mb-4" style="margin-top: 0.5rem;">
									<input type=text class="input1 email"
										style="text-align: center;" value="${loginEmail}" readonly>
								</div>

							</div>

						</div>
						<div class="col-lg-1 col-12" style="height: 2rem;"></div>
						<div class="col-lg-4 col-12" style="padding-left: 1.564rem;">
							<div class="row  rec1 h-70" id=row2>
								<div class="col-6 h3" style="text-align: center;">총 결제 금액</div>
								<div class="col-6 h3" style="text-align: center;" id=finalprice>${price }</div>
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
							<div class=row id=row1>
								<div class="col-12"
									style="margin-top: 1rem; padding: 0px; text-align: center; height: 3.75rem;">
									<button class="btn1_1" id=pay onclick="iamport()"
										style="width: 100%;">결제하기</button>
								</div>




								<div class="col-12 h4 d-none d-sm-block"
									style="color: #637381; margin-top: 1.75rem;">약관 및 취소 환불
									규정을 확인하였으며 결제에 동의합니다.</div>
								<div class="col-12 caption d-none d-sm-block"
									style="margin-top: 0.4rem;">
									이용약관 동의<a class=policy>보기</a>
								</div>
								<div class="col-12 caption d-none d-sm-block"
									style="margin-top: 0.4rem;">
									개인정보 수집 및 이용 동의<a class=policy>보기</a>
								</div>
								<div class="col-12 caption d-none d-sm-block"
									style="margin-top: 0.4rem;">
									결제 대행 서비스 이용약관<a class=policy>보기</a>
								</div>
								<div class="col-12 caption d-none d-sm-block"
									style="margin-top: 0.4rem;">
									취소 환불 규정<a class=policy>보기</a>
								</div>




								<div class="col-12 h4 d-block d-sm-none"
									style="color: #637381; margin-top: 1.75rem;">약관 및 취소 환불
									규정을 확인하였으며 결제에 동의합니다.</div>
								<div class="col-12 caption d-block d-sm-none"
									style="margin-top: 0.4rem;">
									이용약관 동의<a class=policy>보기</a>
								</div>
								<div class="col-12 caption d-block d-sm-none"
									style="margin-top: 0.4rem;">
									개인정보 수집 및 이용 동의<a class=policy>보기</a>
								</div>
								<div class="col-12 caption d-block d-sm-none"
									style="margin-top: 0.4rem;">
									결제 대행 서비스 이용약관<a class=policy>보기</a>
								</div>
								<div class="col-12 caption d-block d-sm-none"
									style="margin-top: 0.4rem;">
									취소 환불 규정<a class=policy>보기</a>
								</div>

							</div>

						</div>

					</div>
				</div>
			</div>
		</div>

		<div class=container style="margin-top: 3.75rem;">
			<div class=row>

				<div class="col-12 h3 d-none d-sm-block">프로그램 정보</div>
				<div class="col-12 h3 d-block d-sm-none" style="text-align: center;">프로그램
					정보</div>
			</div>
			<div class=row
				style="margin-top: 1.25rem; padding-left: 3.25rem; padding-right: 3.25rem;">

				<div class="col-lg-7 col-12 rec1"
					style="padding-left: 0rem; height: 12rem; width: 42rem;">
					<div class=row id=row1>
						<div class="col-lg-3 col-5">
							<img src="/images/kidclass.png"
								style="width: 10rem; height: 12rem;">
						</div>
						<div class="col-lg-1 col-1"></div>
						<div class="col-lg-8 body1 col-6"
							style="color: #161C24; margin-top: 2.325rem;">
						키즈 워크룸:애니메이터 프로젝트
							<div class=h3
								style="color: #161C24; margin-top: 0.5rem; margin-bottom: 0px;"
								id=totalprice>${price}</div>
							<div class=body1 style="margin-top: 0.5rem; color: #919EAB;"
								id=count>${count}매</div>

						</div>



					</div>
				</div>
				<div class="col-lg-5 col-12" style="height: 2rem;"></div>
			</div>



			<div class=row style="margin-top: 1.25rem; padding-left: 3.5rem;">

				<div class="col-12" style="padding-left: 0rem;">
					<ul class="info body2" style="color: #637381; padding-left: 0rem;">
						<li>키즈워크룸은 8세~13세 어린이를 대상으로 합니다.</li>
						<li>수업은 에듀케이터와 보조강사까지 2~3명의 전문 인력이 진행합니다.</li>
					
						<li>수업은 120분 동안 진행되며, 학부모와 함께하는 발표 시간이 포함되어 있습니다.</li>
				
						<li>교육실 입장은 수업 시작 20분 전부터 가능하며, 신청 아동만 수업에 참여할 수 있습니다. (보호자의 전시 관람은 현장에서 안내 드릴 예정입니다.)</li>
						<li>별도의 준비물은 필요하지 않으며 아이들이 즐겁게 수업에 참여할 수 있도록 편한 복장과 신발 착용 부탁드립니다.</li>
						



					</ul>
				</div>
				<div class="col-12 h3"
					style="padding-left: 0rem; margin-top: 3.75rem;">쿠폰/마일리지</div>
				<div class="col-12 body2"
					style="padding-left: 0rem; margin-top: 2.188em;">쿠폰</div>
				<div class="col-12 h3"
					style="padding-left: 0rem; margin-top: 1.125rem;">

					<select id = "selectbox" class="form-select" aria-label="Default select example"
						style="width: 23.5rem; height: 3rem;">

						<option value='0' value1 ="inavailableCP" selected >쿠폰을 선택해 주세요.</option>
						<c:forEach var="clist" items="${clist }">
							<option id = option1 class = "option1" value="${clist.dc}" value1="${clist.serial}">${clist.category}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  -${clist.dc}원</option>
								
						</c:forEach>
					</select>

				</div>
				<div class="col-12 body2"
					style="padding-left: 0rem; margin-top: 2.188em;">마일리지</div>

				<div class="col-12 body2"
					style="padding-left: 0rem; margin-top: 1.125em;">

					<input type=text class="body2 usedpoint"
						style="width: 15rem; height: 3rem;">
					<button class="h4 usedbutton"
						style="background: #161C24; width: 8rem; height: 3rem; margin-left: 4px; color: white; border-radius: 6px;">모두
						사용</button>
				</div>
				<div class="col-12 h5"
					style="padding-left: 0rem; margin-top: 2.188em;">
					남은마일리지 <span class=h5_1>${mdto.point }</span>
				</div>

			</div>





		</div>
		<div class = "row">
		 <div class = "col" id ="calendar">
		 
		 
		 </div>
		
		
		</div>

		<div class="row w-100" id="footer"
			style="margin-top: 12.5rem; padding: 0px;">
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

$(".form-select").on('change',function(){
 if(${mdto.point}!=$(".h5_1").text())
 
 {
	 
	 
	 alert('마일리지 사용시 쿠폰을 적용 할 수 없습니다.');
	return false;
 }

	if($(".form-select option:selected").text() == '쿠폰을 선택해 주세요.'){
		$("#finalprice").text('${price}');
		 let coupondc =  $(".form-select option:selected").val();
			$('#coupondc').text(coupondc+'p');
	}
	else{
   let coupondc =  $(".form-select option:selected").text();
	$('#coupondc').text(coupondc);
	let price = '${price}';
	let price1 = price.replace(",", "");
	let price2 = price1.replace("원", "");
	
	$("#finalprice").text((price2-$(".form-select option:selected").val()).toLocaleString()+"원");
}
})








	$(".leftbutton").on("click", function() {

		location.href = "/Exhibition/toCurExhibition";
	})

	
	
	
	
	
	//모두사용
	
	$(".usedbutton").on("click", function() {
/* 	let p =	$(".form-select option:selected").val();
	let a =	$(".form-select option:selected").attr('value1');
	
	console.log(p+'d');
	console.log(a+'abbbbb'); */
		if($(".form-select option:selected").text() == '쿠폰을 선택해 주세요.'){
			console.log('hihddi');
			

		
		
		if($(".h5_1").text()==0){
			
			alert('사용 가능한 마일리지가 없습니다.');
		return false;	
		}

		let price = '${price}';
		let price1 = price.replace(",", "");
		let price2 = price1.replace("원", "");
		
		$(".h5_1").text(0);
		$("#usedpoint").text('-'+${mdto.point}+"p");
		$("#finalprice").text((price2-${mdto.point}).toLocaleString()+"원");
		
		}else{
			alert('쿠폰 사용시 마일리지를 사용 할 수 없습니다.');
			return false;
		}

	})

	
	
	
	
	
	
	
	//일부 마일리지 사용엔터
	
	
	$(".usedpoint").keypress(function(e) {
		if($(".form-select option:selected").text() == '쿠폰을 선택해 주세요.'){
		if (e.keyCode == 13) {
			let mypoint = parseInt($(".h5_1").text());
			
			let price = $("#finalprice").text();
			let price1 = price.replace(",", "");
			let price2 = price1.replace("원", "");
			
		let ipusedpoint =	$(".usedpoint").val();
		let ipusedpoint1 =	parseInt(ipusedpoint);
		
		let opusedpoint =	$("#usedpoint").text();
		let opusedpoint1 = opusedpoint.replace('p','');
		let opusedpoint2 = parseInt(opusedpoint1);
		
		console.log(ipusedpoint);
		console.log(opusedpoint2);
		
		

			
			
			if ($(".usedpoint").val() <= mypoint) {
				
				(mypoint - $(".usedpoint").val())

				$(".h5_1").text(mypoint - $(".usedpoint").val());
				${mdto.point }
				//$("#usedpoint").text('-'+(opusedpoint2+ipusedpoint1)+'p');
			$("#usedpoint").text('-'+(${mdto.point}-(mypoint - $(".usedpoint").val())+'p'));
				$("#finalprice").text((price2-$(".usedpoint").val()).toLocaleString()+"원");
				$(".usedpoint").val('');
			} else {
				alert('사용 가능한 point를 초과하였습니다.');
				$(".usedpoint").val('');
			}
		}
		}else{
			alert('쿠폰 사용시 마일리지를 사용 할 수 없습니다.');
			return false;
		}

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
		
		document.addEventListener('DOMContentLoaded', function() {
		     var calendarEl = document.getElementById('calendar');
		     var calendar = new FullCalendar.Calendar(calendarEl, {
		       initialView: 'dayGridMonth'
		     });
		     calendar.render();
		   });
		
		


	}

document.addEventListener('DOMContentLoaded', function() {
     var calendarEl = document.getElementById('calendar');
     var calendar = new FullCalendar.Calendar(calendarEl, {
       initialView: 'dayGridMonth'
     });
     calendar.render();
   });

	function iamport() {
		//가맹점 식별코드
		IMP.init('imp48062056');
		IMP.request_pay({
			pg : 'kcp',
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '예매', //결제창에서 보여질 이름
			amount : 100, //실제 결제되는 가격
			buyer_email : $(".email").val(),
			buyer_name : $(".username").val(),
			buyer_tel : $(".phone").val(),
			buyer_addr : '서울 강남구 도곡동',
			buyer_postcode : '123-456'

		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				let price = $("#finalprice").text();
				let price1 = price.replace(",", "");
				let price2 = price1.replace("원", "");

				let count = $("#count").text();
				let count1 = count.replace("매", "");

				let point = $("#point").text();
				let point1 = point.replace("p", "");
				let point2 = parseInt(point1);
				
				
				let usedpoint = $("#usedpoint").text();
				let usedpoint1 = usedpoint.replace("p","");
				let usedpoint2 = usedpoint1.replace("-","");
				let usedpoint3 = parseInt(usedpoint2);
				
				$.ajax({
					url : "/pay/insertPro",
					data : {

						pro_email : $(".email").val(),
						pro_title : "키즈 워크룸:애니메이터 프로젝트",
						pro_place : "지하철 3호선 경복궁역 지하 2층",
						pro_date : "2022.03.16 ~ 2022.10.30",
						pro_booknumber : rsp.merchant_uid,
						pro_state : "BU", //이거 사용되면 N으로 바꾸는 로직 필요(qr연계?)
						pro_username : $(".username").val(),
						pro_phone : $(".phone").val(),
						pro_paymethod : rsp.card_name,
						pro_cardnumber : rsp.card_number,
						pro_cardquota : rsp.card_quota,
						pro_cost : price2,
						pro_count : count1,
						pro_point : point2,
						pro_usedpoint : usedpoint3,
						pro_cpdiscount : parseInt($(".form-select option:selected").val()),
						pro_cpserial :  $(".form-select option:selected").attr('value1'),
						pro_category : 'P',
						p_num : 101
					},

					type : "post",
					dataType : "json"
				}).done(function(resp) {
					alert(resp);
				});
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				console.log(msg);
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				console.log(msg);
				msg += '결제 금액 : ' + rsp.paid_amount;
				console.log(msg);
				msg += '카드 승인번호 : ' + rsp.apply_num;
				
				
			console.log(msg);
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	}
	
	//카카오 초기화 및 토큰 받아오기
	Kakao.init('feb50c309d28b138aefe9ddc94d76870');
	//sessionStorage에 저장된 사용자 엑세스 토큰 받아온다.
	//window.Kakao.Auth.setAccessToken(JSON.parse(sessionStorage.getItem('AccessKEY')));
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
</html> --%>




