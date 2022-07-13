

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


			<div class="row mt-4">


				<div class="col-1">
					<img class=leftbutton src="/images/leftbutton.png"
						style="margin-left: 0px;">
				</div>
				<div class="col-11">
					<div class="col h2" style="text-align: left;">Order / Payment</div>
				</div>

				<div class="col-12" style="margin-top: 2.5rem; text-align: left;">


					<div class="col h3" style="padding: 0px;">예매자 정보</div>



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
										placeholder="예매자 이름을 입력해 주세요." required>
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
										placeholder="예매자 이름을 입력해 주세요." required>
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
								<div class="col-6 h3" style="text-align: center;">${price }</div>
								<div class="col-6 caption" style="text-align: center;">적립예정
									포인트</div>
								<div class="col-6 caption" style="text-align: center;" id=point></div>

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

				<div class="col-12 h3 d-none d-sm-block">전시 정보</div>
				<div class="col-12 h3 d-block d-sm-none" style="text-align: center;">전시
					정보</div>
			</div>
			<div class=row
				style="margin-top: 1.25rem; padding-left: 3.25rem; padding-right: 3.25rem;">

				<div class="col-lg-7 col-12 rec1"
					style="padding-left: 0rem; height: 12rem; width: 42rem;">
					<div class=row id=row1>
						<div class="col-lg-3 col-5">
							<img src="/images/anywayloveSM.png"
								style="width: 10rem; height: 12rem;">
						</div>
						<div class="col-lg-1 col-1"></div>
						<div class="col-lg-8 body1 col-6"
							style="color: #161C24; margin-top: 2.325rem;">
							Romantic Days 어쨌든, 사랑

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

				<div class="col-8" style="padding-left: 0rem; height: 10rem;">
					<ul class="info body2" style="color: #637381; padding-left: 0rem;">
						<li>전시 기간 : 2022.03.16(토) ~ 2022.10.30(일)</li>
						<li>관람 가능 시간 : 오전 10:00~오후 7:00</li>
						<li style="list-style-type: none;">*오후 6시 *매월 첫째 주 월요일 휴관
							*(대체)공휴일 정상 운영</li>
						<li>관람 가능 연령 : 전체 관람가</li>
						<li style="list-style-type: none;">*영유아는 보호자 동반 하에만 입장 및 관람이
							가능합니다.</li>
						<li>매월 첫째 주 월요일은 휴관입니다.</li>
						<li>(대체)공휴일 정상 운영합니다.</li>




					</ul>
				</div>
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
	$(".leftbutton").on("click", function() {

		location.href = "/Exhibition/toCurExhibition";
	})

	window.onload = function() {
		let point = '${price}';
		let point1 = point.replace(",", "");
		let point2 = point1.replace("원", "");
		finalpoint = parseInt(point2) * 0.01;

		$("#point").text(finalpoint + "p");

	}

	function iamport() {
		//가맹점 식별코드
		IMP.init('imp48062056');
		IMP.request_pay({
			pg : 'kcp',
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '예매', //결제창에서 보여질 이름
			amount : 100, //실제 결제되는 가격
			buyer_email : 'iamport@siot.do',
			buyer_name : '조양기',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울 강남구 도곡동',
			buyer_postcode : '123-456'

		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				let price = $("#totalprice").text();
				let price1 = price.replace(",", "");
				let price2 = price1.replace("원", "");

				let count = $("#count").text();
				let count1 = count.replace("매", "");

				let point = $("#point").text();
				let point1 = point.replace("p", "");
				let point2 = parseInt(point1);
				$.ajax({
					url : "/pay/insert",
					data : {

						et_email : $(".email").val(),
						et_title : "Romantic Days 어쨋든 사랑",
						et_place : "지하철 3호선 경복궁역 지하 1층",
						et_date : "2022.03.16 ~ 2022.10.30",
						et_booknumber : rsp.merchant_uid,
						et_state : "BU", //이거 사용되면 N으로 바꾸는 로직 필요(qr연계?)
						et_username : $(".username").val(),
						et_phone : $(".phone").val(),
						et_paymethod : "card",
						et_cost : price2,
						et_count : count1,
						et_point : point2,
						et_category : 'e'
					},

					type : "post",
					dataType : "json"
				}).done(function(resp) {
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




