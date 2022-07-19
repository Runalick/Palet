<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
	<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
	<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
	z-index:9;
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


<!--
-->
#goodsparent {
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



#goodscontainer::after {
	display: block;
	clear: both;
	content: "";
}

#btndiv {
	width: 3.75rem;
	height: 3.75rem;
}

#backbtn {
	box-sizing: border-box;
	background: #FFFFFF;
	/* Gray/300 */
	border: 1px solid #DFE3E8;
	border-radius: 50%;
	width: 3.75rem;
	height: 3.75rem;
}

#backbtn>img {
	width: 1rem;
}



#img {
	height: 36.375rem;
	width: 36.375rem;
	left: 27.75rem;
	top: 7.5rem;
	border-radius: 1.25rem;
}

.margin1 {
	margin-top: 2.5rem;
	padding: 0rem;
	margin-right: 0px;
}



.payment-area {
	float: right;
	width: 30.5rem;
	position: sticky;
	top: 5rem;
}




#select {
	width: 23.5rem;
	height: 3rem;
	line-height: 2.35rem;
	box-sizing: border-box;
	
	border: 0.063rem solid #CFD4D9;
	box-shadow: 0px 0px 0px #CBDAFC;
	border-radius: 0.313rem;
	margin-bottom: 3.75rem;
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
	top:3rem;
	background: #FFFFFF;
	border-top: none;
	padding: 0px;
}

.select-ul li {
	padding: 0.625rem 0 0.625rem 1.125rem;
	width: 23.2rem;
}

.select-ul li:hover {
	background-color: #F4F6F8;
}

#purchasebtn {
	width: 23.5rem;
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	background: #161C24;
	border-radius: 1.25rem;
	margin-bottom: 0.5rem;
	border:0px;
}

#purchasespan {
	height: 1.5rem;
	/* Button/Button */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	text-align: center;
	color: #FFFFFF;
	/* Inside auto layout */
	flex: none;
	order: 0;
	flex-grow: 0;
}

#cartbtn {
	width: 23.5rem;
	/* Auto layout */
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	padding: 1.125rem 1.5rem;
	gap: 0.625;
	background: #FFFFFF;
	border-radius: 1.25rem;
	border: 0px;
}
#cartbtn:hover, #backbtn:hover, .cntbtn:hover{
background:#F4F6F8;
}
#purchasebtn:hover{
background:#454F5B;
}
#cartspan {
	height: 1.5rem;
	/* Button/Button */
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
	flex: none;
	order: 0;
	flex-grow: 0;
}




.choose {
	padding: 1.75rem;
	width: 23.5rem;
	height: 8.375rem;
	box-sizing: border-box;
	background: #FFFFFF;
	/* Gray/300 */
	border: 0.06rem solid #DFE3E8;
	border-radius: 1.25rem;
	margin-bottom:0.813rem;
}

#totaldiv {
	margin-top: 0.5rem;
	margin-bottom: 1.25rem;
	/* Rectangle 8 */
	box-sizing: border-box;
	width: 23.5rem;
	height: 5rem;
	/* Gray/100 */
	background: #F9FAFB;
	/* Gray/300 */
	border: 1px solid #DFE3E8;
	border-radius: 1.25rem;
}

#total {
	text-align: right;
	color: #161C24;
}

#totalmoney {
	text-align: right;
	color: #161C24;
	width: 12.5rem;
	text-align: right;
}

.h3 {
	padding: 1.75rem; display : inline-block;
	/* Headline/H3 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	display: inline-block;
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

.name {
	overflow: hidden; 
	text-overflow: ellipsis;
	white-space: nowrap;
	color: #919EAB;
	width:8.125rem;
}

.price {
	width: 6.25rem;
	text-align: right;
	float:right;
	margin-right:1.75rem;
	margin-bottom:0px;
}

.cntbtn {
	width: 2.5rem;
	height: 2.5rem;
	border: 0.06rem solid #DFE3E8;
	background: #FFFFFF;
	box-sizing: border-box;
	border-radius: 50%;
}

.cntbtn>img {
	width: 0.656rem;
}

.count {
	width: 3.75rem;
	color: #454F5B;
	display: inline-block;
	text-align: center;
}

.delete {
	color: #161C24;
	display: inline-block;
	height: 1.75rem;
	width: 1.875rem;
	float:right;
	margin-right:1.75rem;
	margin-top:0.575rem;
} 
	
.body2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;;
	line-height: 1.75rem;
	
}

#row1>div {
	padding-left: 0px;
	padding-right: 0px;
}
#productdetail>div {
	margin: auto;
	padding: 0px;
}

.chooseoption {
	color: #637381;
	flex: none;
	order: 0;
	flex-grow: 1;
}
#imgdiv {
	margin-bottom: 6.25rem;
	text-align:center;
}
@media ( min-width : 870px) {
	#goodscontainer {
	width: 80rem;
	padding-top:6.25rem;
}

.product-area {
	float: left;
	width: 45.353rem;
	padding: 0rem;
}

#container2{
padding-left:4rem;
}
#margin2 {
	margin-left: 6.26rem;
}

#title {
	/* Headline/H3 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	/* Gray/900 */
	color: #161C24;
	margin-bottom: 1rem;
	width: 23.5rem;
	
}

#price {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1rem;
	line-height: 1.875rem;
	color: #161C24;
	margin-bottom: 0.125rem;
	width: 23.5rem;
}
#point{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 0.875rem;
line-height: 1.125rem;
color: #637381;
margin-bottom: 2.5rem;
}
}

@media ( max-width : 871px) {
		#goodscontainer {
	width: 100%;
}
.g_contents{
width:36.375rem;
margin:auto;
padding:0px;
}
#btndiv{
padding-left:3rem;
}

.payment-area2{
width:36.375rem;
margin:auto;
margin-bottom:5rem;
}
#select, .select-ul, #purchasebtn, #cartbtn, .select-ul li, .choose, #totaldiv{
width:100%;
}

#title{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 36px;
line-height: 43px;
margin-bottom:2.7rem;
}
#price{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 25px;
line-height: 35px;
margin-bottom:0.5rem;
}
#point{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 15px;
line-height: 18px;
color:#637381;
margin-bottom:2.7rem;
}
.h4, .body2{
font-size:1.3rem;
}
.delete{
width:2.875rem;
}
.h3{
font-size:1.65rem;
}
#totalmoney{
width:22.5rem;
}
.select-ul li, #select{
font-size:1.3rem;
}
#select{
height:3.5rem;
line-height:2.65rem;
}
#purchasespan, #cartspan{
font-size:1.8rem;

}
#purchasebtn, #cartbtn{
 height:4.5rem; 
}
#productdetail{
}
}

.select-font {
font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.25rem;
	line-height: 1.5rem;
}
.select-font li{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;
	line-height: 1.5rem;
	padding-left:7.2px;
}
.g_contents{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.2rem;
	line-height: 1.8rem;
}
.row{
-bs-gutter-x:0rem;
}
/* footer */
#footer{
			margin-top:6.25rem;
            background: #F4F6F8;
            height: 13.25rem;
        }
#footer .h3{
padding-top:0px;
padding-bottom:0px;
}       
</style>
</head>
<body style="overflow-x: hidden">
		<div class="container-fluid" >
			<div class="container-fluid"
			style="background-color: white; ">
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

			<div class="container" id="goodscontainer">
			
			
				<div class=" payment-area" >
					<div class="row" id="margin2">
						<div class="col-12 margin1 payment-area2" >

							<!-- 데이터 들어올 곳 -->


							<div class="col-12" id="title">${dto.g_name }</div>
							<div class="col-12" id="price">${dto.g_price }</div>
							<script>
							price=$("#price").text();
							$("#price").text(price.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+"원");
							console.log(price.replace(/\B(?=(\d{3})+(?!\d))/g, ","))
							</script>
							
							<div class="col-12" id="point">${Math.round(dto.g_price*0.05) }p (5%) 적립</div>

							<!-- 옵션 리스트 -->
							<div id="select-wrap" style="position:relative;">
								<div id="select" class="select-font">상품옵션을 선택하세요</div>
								<ul class="select-ul select-font">
									
									<c:forEach var="i" items="${list }">
										<li class="li" value="${i.g_seq }">${i.g_option}</li>
								
									</c:forEach>
									
									
								</ul>
							</div>



							<!-- 옵션 선택 -->
<!-- 							<div class="col-12 choose"> -->
<!-- 								<input type="hidden" class='hidden_g_seq" value="g_num"> -->
<!-- 								<span class="h4 name">로맨틱데이즈</span>  -->
<!-- 								<span class="h4 price">7,900원</span><br> -->
<!-- 								<span><button class="cntbtn minus"> -->
<!-- 										<img src="/images/minus.png"> -->
<!-- 								</button></span>  -->
<!-- 								<span class="count body2">1</span>  -->
<!-- 								<span><button class="cntbtn plus"> -->
<!-- 										<img src="/images/plus.png"> -->
<!-- 								</button></span>  -->
<!-- 								<span class="delete body2" style="cursor:pointer">삭제</span> -->
<!-- 									<input type="hidden" class="hidden-totalprice" value=""> -->
<!-- 							</div> -->
					
<script>

$(".li").on("click", function () {
	result="false";
	let value= $(this).val();
		$(".choose").each(
				function (index, element){
					if ($(element).find(".hidden_g_seq").val()==value ) {
						alert("이미 담긴 상품입니다.")
						result=true;
					}
				})
	
		if(result==true){
			return false
		}
	
				
    let text = $(this).text();
    $("#select").text(text);
   
    
    let choosediv=$("<div>");
    choosediv.attr("class","col-12 choose");
    //상품명
    let namespan = $("<span class='h4 name'>");
    namespan.text(text);
    //상품가격
    let price = $("#price").text();
    let pricespan=$("<span class='h4 price'>");
    pricespan.text(price);
    
    
    //-버튼
    let minusbtnspan = $("<span>");
    let minusbtn=$("<button class='cntbtn minus'>");
    minusbtn.append("<img src='/images/minus.png'>");
	//수량
    let cnt = $("<span class='count body2'>");
    cnt.append(1);
    
    //+버튼
    let plusbtnspan = $("<span>");
    let plusbtn=$("<button class='cntbtn plus'>");
    plusbtn.append("<img src='/images/plus.png'>");
    
    //삭제
    let delete1 = $("<span class='delete body2'>");
    delete1.css("cursor","pointer");
    delete1.text("삭제");
    
    //hidden
    let hidden = $("<input type='hidden' class='hidden_g_seq'>");
    hidden.attr("value",$(this).val());
    
    minusbtnspan.append(minusbtn);
    plusbtnspan.append(plusbtn);
    
    choosediv.append(namespan);
    choosediv.append(pricespan);
    choosediv.append("<br>");
    
    choosediv.append(minusbtnspan);
    choosediv.append(cnt);
    choosediv.append(plusbtnspan);
    choosediv.append(delete1);
    choosediv.append(hidden);
    price = price.replace(",","");
    choosediv.append("<input type='hidden' class='hidden-totalprice' value="+price+">");
    
    $("#select-wrap").after(choosediv);
    $(".select-ul").toggle();
    
    
    //최종결제금액
    $("#totaldiv").css("display","block");
    setTotalPrice();
})

</script>


							<div class="col-12 " id="totaldiv" style="display:none">
								<div class="h3" id="tatal">총 결제 금액</div>
								<div class="h3" id="totalmoney">0원</div>
							</div>
							
							
							<button id="purchasebtn">
								<span id="purchasespan">구매하기</span>
							</button>
							<button id="cartbtn">
								<span id="cartspan">장바구니 담기</span>
							</button>
						</div>

					</div>
				</div>



				<div class="product-area">
					<div class="row " id="container2 row1">
					
					
					<!-- 상품 이미지 -->	
						<div class=" margin1" id="imgdiv">
							<img referrerpolicy="no-referrer" src="${dto.gp_sysname }" id="img">
						</div>
						
						
							<div class="row" id="small" style="display:none; padding-left:3rem;">
								<div class="col-12">	
<%-- 									<div class="col-12" id="sm-title">${dto.g_name }</div> --%>
<%-- 									<div class="col-12" id="sm-price">${dto.g_price }원</div> --%>
<%-- 									<div class="col-12" id="sm-point">${Math.round(dto.g_price*0.05) }p (5%) 적립</div> --%>
									
									
									
								</div>
							</div>
							
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
					<!-- 상품 상세 설명 -->
						<div class="row" id="productdetail">
							<div class="col-12 g_contents" >${dto.g_contents }</div>
						</div>


					</div>

				</div>


			</div>
	
		<!-- 푸터단 -->

	<div class="row" id="footer">
            <div class="container" >
                <div class="row">
                    <div class="col-12 h3" style = "color: #637381; margin-top:3.75rem;">(주)팔레트</div>
                    <div class="col-12 body2" style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2" style = "color: #637381;">3호선 경복궁역 지하 1층 | contact@palet.com</div>

                </div>
            </div>
        </div>
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
		if(windowWidth < 850) {      //창 가로 크기가 850 미만일 경우  
			$("#small").css({"display":"block"});
			$(".payment-area").css({"display":"none"});
			$("#small").append($("#margin2"));
		} else {      //창 가로 크기가 850 보다 클 경우  
			$("#small").css({"display":"none"});
			$(".payment-area").css({"display":"block"});
			$(".payment-area").append($("#margin2"));
		}
		}
	
	
	
	//구매버튼
	$("#purchasebtn").on("click",function(){
		if(${loginEmail ==null}){
			alert("로그인이 필요한 서비스입니다.");
			return false;
		}
		if($(".choose").length==0){
			alert("옵션을 선택하세요")
			return false;
		}
	})
	//장바구니버튼
	$("#cartbtn").on("click",function(){
		
		if(${loginEmail ==null}){
			alert("로그인이 필요한 서비스입니다.");
			return false;
		}
		if($(".choose").length==0){
			alert("옵션을 선택하세요")
			return false;
		}
		
		var data = [];
		var g_numArray =[];
		var cartstockArray=[];
		$(".choose").each(function(index,item){
			g_num=$(item).find($(".hidden_g_seq"));
			console.log(g_num.val());
			cartstock = $(item).find($(".count"));
			console.log(cartstock.text());
			g_numArray.push(g_num.val());
			cartstockArray.push(cartstock.text());
		})
		
		
		console.log(data);
		
		$.ajax({
			url:"/cart/isGoodsExist",
			data:{g_seq:g_numArray,cartstock:cartstockArray},
			dataType:"json",
			 traditional: true,
		}).done(function(resp){
			console.log(resp);
			if(resp==false){
				if(confirm("장바구니에 담았습니다. 장바구니로 가시겠습니까?")){
					location.href="/cart/cartlist"; 
				}
				
			}
		})
	})
	
	
	
	
	
	//선택박스 화살표 방향 이미지
	let click = false;
	$("#select").on("click",function(){
		if(click==false){
			$("#select").css({"background":"url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ","background-size": "0.796rem"});
			click = true;
		}else{
			$("#select").css({"background":"url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "0.796rem"});
			click = false;
		}
	});
	//선택박스누를 시 옵션 열기
	$("#select").on("click", function () {
	    $(".select-ul").toggle();
	})
	
	/* 셀렉트 박스 옵션 선택 */

	
// /* 셀렉트 박스 이외 선택시 보이지 않게 하기 */
$("body").on("click", function(e){
	if($(".select-ul").css("display") == "block"){
    	if($("#select-wrap").has(e.target).length == 0){
        	$(".select-ul").hide()
        }
    }

})
//옵션 선택 삭제/ 옵션 선택 없을 때 totaldiv 삭제 
$(document).on("click", ".delete", function(){
	$(this).parent().remove();
	console.log($(".choose").length);
	
	
	
	if($(".choose").length<1){
		$("#totaldiv").css("display","none");
	}
	 setTotalPrice();
});	
	
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

	//수량
	$(document).on("click", ".plus", function(){

			let result = $($(this).parent().siblings()[4]).text();
			number = parseInt(result) + 1;
			$($(this).parent().siblings()[4]).text(number);
			
			//가격변화
			let price = $("#price").text() ;
			price = price.replace(",","");
			
			let currentprice = $($(this).parent().siblings()[4]).text();
			totalprice =  parseInt(currentprice) *  parseInt(price);
			$($(this).parent().siblings()[7]).val(totalprice);
			console.log($(this).parent().siblings()[7]);
			
			setTotalPrice()
	
	
	
	});
	$(document).on("click", ".minus", function(){

			let result = $($(this).parent().siblings()[3]).text();
			number = parseInt(result) - 1;
			if (number == 0) {
				return false;
			}
			console.log(number);
			$($(this).parent().siblings()[3]).text(number);
			
			//가격변화
			let price = $("#price").text() ;
			price = price.replace(",","");
			
			let currentprice = $($(this).parent().siblings()[3]).text();
			totalprice =  parseInt(currentprice) *  parseInt(price);
			$($(this).parent().siblings()[7]).val(totalprice);
			console.log($(this).parent().siblings()[7]);
			
			
			setTotalPrice()
	
	
	
	});
	
	
	
	function setTotalPrice(){
		
		let realtotalprice =0; //총 결제금액
		
		
		
		$(".choose").each(
				function (index, element){
			
					
					
					console.log("총금액"+realtotalprice )
					total = $(element).find(".hidden-totalprice").val();
					console.log("total:"+total);
					
					realtotalprice  += parseInt(total) ;	
					console.log("total이랑 더한 값"+realtotalprice );
					
					price=realtotalprice.toLocaleString();
					$("#totalmoney").text(price +"원");
					
					

		
		
	})
		
	}
	
	

	
	

	
	</script>
</body>

</html>