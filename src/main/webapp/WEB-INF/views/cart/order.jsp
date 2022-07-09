<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
</head>
<style>
@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);

/*  @media ( min-width : 375px) {  */
/*  	.container {  */
/*  		max-width: 1280px;  */
/*  		min-width: 390px;  */
/*  	}  */
/*  	html {  */
/*  		font-size: 12px;  */
/*  	}  */
/*  }  */

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
	z-index: 5;
}

.navbar {
	height: 5rem;
	padding: 0px;
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
height:28.75rem;
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
position: absolute;
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
#delivery-area{
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
margin-left:0.75rem;
}
.inputcode{
margin-left:0.75rem;
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
	background: #FFFFFF url('/images/uparrow.png') no-repeat 97% 50%/15px auto;
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
        

</style>
<body>
	<!-- 네비단 -->
	<div class="container-fluid" id=navparent>
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
	<!-- 본문단 -->
	<div class="container-fluid" id="mainparent">
		<div class="container">
			<div class="row" style="padding-top: 7.5rem; text-align: center;">
					<div class="col-1 margin1" id="cart">
							<button id="backbtn">
								<img src="/images/Vector.png">
							</button>
						</div>
				<div class="col-11 h2" id="ordertitle">Order / Payment</div> 


				

			

				<div class="col-12" style="margin-bottom:1.25rem;">
					<div class="row" style="padding-left:2.5rem;">
						
						<div class="col-3 H3 info">배송정보</div>
						
					</div>
				</div>
			
			<div class=container style="min-width:80rem; min-height:40rem;">	

			
			
			
			
			
			
<!-- 			결제 부분 -->

			
			
				<div  id="payment-area" style="position:relative">
					<div class="H3 payinfo">결제 상세</div>
					<div class="row" id="total-area">
						<div class="col-12" style="padding:1.75rem;">
							<span class="H4" id="span1" style="color:#919EAB">총 상품 금액</span>
							<span class="H4 totalprice" id="span4">15,800원</span>
							<span class="H4 " id="span9" style="color:#919EAB">할인</span>
							<span class="H4 " id="span10">-0원</span>
							
							
							<span class="H4" id="span2" style="color:#919EAB">배송비</span>
							<span class="H4 deliveryprice" id="span5">3,000원</span>
							<span class="H3" id="span3" >총 결제 금액</span>
							<span class="H3 finalTotalPrice" id="span6" class="totalprice">18,800</span>
							<span class="Caption" id="span7" style="color: #919EAB;">적립예정 포인트</span>
							<span class="Caption totalPoint" id="span8" style="color: #919EAB;">50p</span>
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
			
			
				
				
				
				
				<div id="product-area" >
				
				<!-- 			배송 부분 -->
				<div class="row" id="delivery-area" style="height:34.875rem; width:49.25rem;">
					<div class="col-4 " style="text-align:left; width:18.75rem; height:7.5rem">
						<div class="body2" style="margin-bottom:0.5rem;">수령인</div>
						<input type="text" class="body2input buyer_name" placeholder="수령인 이름을 입력해 주세요.">
					</div>
					<div class="col-8 phone" style="text-align:left; width:26rem; height:7.5rem">
						<div class="body2" style="margin-bottom:0.5rem;">전화 번호</div>
						<input type="text" class="body2input buyer_tel" placeholder="전화번호를 입력해 주세요.">
					</div>
					<div class="body2" style="text-align:left;  padding-bottom:0.5rem;">배송지</div>
					<input type="text" class="body2 inputcode buyer_postcode" id="sample4_postcode" onclick="sample4_execDaumPostcode()" placeholder="우편번호 검색" > 
					
					<input type="text" class="body2 inputaddress buyer_addr" placeholder="주소: 우편번호를 먼저 검색해 주세요." id="sample4_roadAddress">
					<input type="text" class="body2 inputaddress buyer_address2" placeholder="상세 주소 : 우편번호를 먼저 검색해 주세요." id="sample4_detailAddress">
					<div class="body2 delivery_text" style="text-align:left;margin-top:1.5rem; margin-bottom:0.5rem;">배송 메시지</div>
					<input type="text" class="body2 inputaddress" style="background: #FFFFFF;" placeholder="수령인 이름을 입력해 주세요.">
					<div id="deliveryinfo" style="text-align:left; margin-top:1rem ">*주문 시 변경하신 내용으로 개인 정보가 수정됩니다.</div>
				
				
				
				
				
				
				
				
				
				</div>
				
				
					<div class="row H3" style="margin-bottom:1.25rem; padding-left:2.5rem; margin-top:3.75rem;">상품 정보</div>
				
<!-- 				여기서부터 상품 반복 -->
					<div class="row select_list">
						
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
						<div id="select-wrap" style="position:relative">
								<div id="select" class="body2">쿠폰을 선택하세요</div>
								<ul class="select-ul">
								<li class="li body2" >오프라인 감사 쿠폰</li>
								<li class="li body2" >이벤트 참여 쿠폰</li>
<%-- 									<c:forEach var="i" items="${optionlist}"> --%>
<%-- 									<li class="li" value="${i.g_num }">${i.g_option}</li> --%>
<%-- 									</c:forEach> --%>
								</ul>
							</div>
				<div class="body2" style="margin-bottom:0.5rem;">포인트</div>
				<input class="body2 pointinput" type="text" placeholder="0">
				<button class="H4 pointbtn">모두 사용</button><br>
				<span class="Caption" style="font-weight: 400;color: #637381;">보유 포인트</span>
				<span class="Caption" style="color: #637381;">1200p</span>
				<div class="H3" style="margin-top:3.75rem;margin-bottom:1.25rem;">결제 수단</div>
				<input type="radio" style="margin-right:0.5rem;"><span class="body2">카드 결제</span>
				</div>
					
					
					
					
					
				</div>

</div>
				
				
				
				
				
				
				
				
				
				
				
				
			</div>
		</div>
	</div>
	<!-- 푸터단 -->

	<div class="row" id="footer">
		<div class="container">
			<div class="row" id="row1" style="margin-left: 22.5rem;">
				<div class="col-12 h3 d-none d-sm-block"
					style="color: #637381; margin-top: 3.75rem; padding: 0px;">(주)팔레트</div>
				<div class="col-12 body2 d-none d-sm-block"
					style="color: #637381; margin-top: 0.5rem; margin-bottom: 3.75rem; padding: 0px;">
					사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345
					<br> 3호선 경복궁역 지하 1층 | contact@palet.com
				</div>
			</div>
		</div>
	</div>
	<script>
	    window.onload = function(){
	    		$.ajax({
	            	url:"/cart/select_cart",
	            }).done(function(resp){
	            	console.log(resp);
	            	for(i=0; i < resp.length; i++){
	            		$(".select_list").append("<div class='row list' style='padding:0px; margin-bottom:1.25rem'><div class='col-3 p-0 productimg' style='background-color:pink;'></div><div class='col-9 productInfo' style='width:38rem'><div class='body1 title'>"+resp[i].g_name+"</div><div class='H3 price' id='"+resp[i].g_num+"'>"+resp[i].totalPrice+"</div><div class='body1 cnt' style='color: #919EAB;'>"+resp[i].cartstock+"개</div><input class='hidden-cnt' type='hidden' value="+resp[i].cartstock+"><input class='hidden-g_num' type='hidden' value="+resp[i].g_num+"></div></div>");
	            	}
	            })
	    }
	</script>
	<script>
		window.addEventListener('beforeunload', (event) => {
			  // 표준에 따라 기본 동작 방지
			  event.preventDefault();
			  // Chrome에서는 returnValue 설정이 필요함
			  event.returnValue = '1';
			  $.ajax({
		            url: "/cart/beforeunload"
// 		            async: false
		        });
			});
	</script>
	<script>
	
	//선택박스누를 시 옵션 열기
	$("#select").on("click", function () {
	    $(".select-ul").toggle();
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

	</script>
	<script>
	function iamport(){
        //가맹점 식별코드
        IMP.init('imp48062056');
	IMP.request_pay({
	    pg : 'kcp',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '예매' , //결제창에서 보여질 이름
	    amount : '100', //실제 결제되는 가격
	    buyer_email : "iampost@siot.do",
	    buyer_name : $(".buyer_name").val(),
	    buyer_tel : $(".buyer_tel").val(),
	    buyer_addr : $(".buyer_addr").val(),
	    buyer_postcode : $(".buyer_postcode").val()
	}, function(rsp) {
		console.log(rsp);
	    if ( rsp.success ) {
            $.ajax({
                url:"/pay/insert",
                data:{
                	merchant_uid : rsp.merchant_uid,
                	name : rsp.buyer_name,
                	email : rsp.buyer_email,
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
                type:"post",
                dataType:"json"
            }).done(function(resp){
               console.log(resp)
            });

	    } else {
	    	 var msg = '결제에 실패하였습니다.';
	         msg += '에러내용 : ' + rsp.error_msg;
	    }
	});
    }
	</script>
</body>
</html>