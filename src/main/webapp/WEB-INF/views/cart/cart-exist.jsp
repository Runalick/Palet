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
</head>
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
	text-align: left;
	padding-left: 2.5rem;
	padding-bottom:2.5rem;
}

#mainparent {
	padding-left: 2.5rem;
	padding-right: 2.5rem;
}
.hug{
width:3.938rem;
height:1.75rem;
padding:0px;
cursor:pointer;
}
.bar{
width:1.063rem;
padding:0px;
}
.checkdiv{
width:1.5rem;
padding:0px;
text-align:left;
}

input.checkbox{
 accent-color: black;
 width:1rem;
 height:1rem;
}
.checkbox2{
accent-color: black;
 width:1rem;
 height:1rem;
position:absolute;
left:1.188rem;
top:1.25rem;
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
.delete{
position:absolute;
right:1.5rem;
top:1.25rem;
cursor:pointer;
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
margin-bottom:1.5rem;
margin-top:3.313rem;

}
.cnt{
width:3.75rem;
height:1.75rem;
position: absolute;
top:6.375rem;
right:4.25rem;

}
/* 결제부분 */

#payment-area{
width:23.5rem;
height:20.688rem;
float:right;
}
#total-area{
box-sizing: border-box;
width: 23.5rem;
height: 12.625rem;
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
.minus{
position:absolute;
top:6rem;
right:8.25rem;
}
.plus{
position:absolute;
top:6rem;
right:1.5rem;

}
</style>
<body>
	<!-- 네비단 -->
	<div class="container-fluid" id=navparent>
		<div class="container">
			<div class="row" id="container1" >
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
			<div class="row" style="padding-top: 7.5rem; text-align: center;width:80rem;margin:auto;">
				<div class="col-12 h2" id="cart">Cart( ${totalList.total_num } )</div>


				<c:choose>
					<c:when test="${totalList.total_num ==0}">
						<!-- 지우는거아님	조건문 들어올 곳 -->
						<div class="col-12">
							<div class="row">
								<div class="col-12 body1"
									style="padding-top: 15.5rem; color: #637381;">장바구니에 담긴
									상품이 없습니다.</div>
							</div>
						</div>
						<div class="col-12">
							<button class="btn1">쇼핑하러 가기</button>
						</div>
					</c:when>
					<c:otherwise>


					</c:otherwise>
				</c:choose>

				<c:choose>
			<c:when test="${totalList.total_num ==0}">
				
			</c:when>
			<c:otherwise>

				<div class="col-12" style="margin-bottom:1.25rem;">
					<div class="row" style="padding-left:2.5rem;">
						<div class="col-1 checkdiv">
						<input type="checkbox" class="checkbox" checked="checked" id="checkall" style="margin-top:0.375rem;">
						</div>
						<div class="col-2 body2 hug" id="allcheck">전체 선택</div>
						<div class="col-1 bar"><img src="/images/bar.png"></div>
						<div class="col-2 body2 hug" id="choosedel">선택 삭제</div>
					</div>
				</div>
				</c:otherwise>	
			</c:choose>	
			<div class=container style="min-width:80rem; min-height:40rem;">	
<!-- 			결제 부분 -->

			<c:choose>
			<c:when test="${totalList.total_num ==0}">
				
			</c:when>
			<c:otherwise>
				<div  id="payment-area">
				
					<div class="row" id="total-area">
						<div class="col-12" style="padding:1.75rem;">
							<span class="H4" id="span1" style="color:#919EAB">총 상품 금액</span>
							<span class="H4 totalprice" id="span4"></span>
							<span class="H4" id="span2" style="color:#919EAB">배송비</span>
							<span class="H4 deliveryprice" id="span5"></span>
							<span class="H3" id="span3" >총 결제 금액</span>
							<span class="H3 finalTotalPrice" id="span6"></span>
							<span class="Caption" id="span7" style="color: #919EAB;">적립예정 포인트</span>
							<span class="Caption totalPoint" id="span8" style="color: #919EAB;"></span>
						</div>
					</div>
					
					<button id="paybtn">선택상품 주문하기</button>
					
					
				</div>
			
			</c:otherwise>	
			</c:choose>	
				
				
				
				
<!-- 			장바구니 부분	forEach			 -->
				<div id="product-area" >
				
				
				
				<c:forEach var="i" items="${list }">
					<div class="row list" style="padding:0px; margin-bottom:1.25rem">
						<div class="col-3 p-0 productimg" style="background-color:pink;">
							<input type="checkbox" class="checkbox2" checked="checked" id="check1" value="${i.g_num }" style="margin-top:0.375rem;">
							<input type="hidden" class="hidden-cart_seq" value="${i.cart_seq }">
						</div>
						<div class="col-9 productInfo" style="width:38rem">
							<div class="body1 title">${i.g_name} -${i.g_option }</div>
							<div class="H3 price" id="${i.g_num }"> </div>
							<script>
							price = ${i.g_price} ;
							price = price.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
							$("#${i.g_num}").text(price+"원");
							</script>
							<input class="hidden-price" type="hidden" value="${i.g_price }">
							<input class="hidden-point" type="hidden" value="${i.point}">
							<span>
							<button class="cntbtn minus"> 
 										<img src="/images/minus.png"> 
 							</button>
 							</span>  
							<div class="body2 cnt" style="color: #919EAB; margin:0px; text-align:center;">${i.cartstock }</div>
							<span>
							<button class="cntbtn plus"> 
										<img src="/images/plus.png"> 
							</button>
							</span> 
								
							<input class="hidden-cnt" type="hidden" value="${i.cartstock }">
							<span class="delete body2">삭제
							<input class="hidden-g_num" type="hidden" value="${i.g_num }">
							</span>	
						
						</div>
					</div>
				</c:forEach>


					
					
					
				</div>

<script>
//결제버튼
$("#paybtn").on("click",function(){
	
	var cart_seq=[];
	$("input:checkbox[class=checkbox2]:checked").each(function(e,item){

					console.log($(this).siblings().val());
					cart_seq.push($(this).siblings().val());
			})
	console.log(cart_seq);
	location.href="/cart/order?cart_seq="+cart_seq;
})


$(document).ready(function() {
	setTotalInfo();
});
//체크 여부에 따른 변화
$(".checkbox2").on("change", function() {
	setTotalInfo($("cartInfo"))
})

function setTotalInfo() {

			let totalPrice = 0; // 총 가격
			let totalCount = 0; // 총 갯수
			let totalPoint = 0; // 총 포인트
			let deliveryPrice = 3000; // 배송비
			let finalTotalPrice = 0; // 최종 가격(총 가격 + 배송비)

			$(".list").each(
					function(index, element) {

						if ($(element).find(".checkbox2").is(":checked") === true) {
							// 총 갯수
							let cnt =$(element).find(".cnt").text();
							
							totalCount += parseInt(cnt);
							// 총 가격
							
							let price = $(element).find(".price").text();
							price = price.replace(",","");
							totalPrice += parseInt(price)*parseInt(cnt);
							// 총 포인트
							totalPoint += parseInt($(element).find(
									".hidden-point").val()*cnt);

							finalTotalPrice = totalPrice + deliveryPrice;
						}

						// 총 가격
						$(".totalprice").text(totalPrice.toLocaleString());
						// 총 갯수
// 						$(".totalCount").text(totalCount);
						// 총 포인트
						$(".totalPoint").text(totalPoint.toLocaleString()+"p");
						// 배송비
						$(".deliveryprice").text("+"+deliveryPrice+"원");
						// 최종 가격(총 가격 + 배송비)
						$(".finalTotalPrice").text(
								finalTotalPrice.toLocaleString());

					});

		}
</script>




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
	//쇼핑하러 가기
	$(".btn1").on("click",function(){
		location.href="/shop/toShop";
	})
	//수량
	
	$(document).on("click", ".plus", function(){

			let result = $($(this).parent().siblings()[6]).text();
			console.log("d"+result);
			number = parseInt(result) + 1;
			
			$($(this).parent().siblings()[6]).text(number);
			
			//가격변화
			
// 			let price= $($(this).parent().siblings()[3]).val();
// 			console.log(price);
// 			price2 = price.replace(",","");
			
// 			let currentprice = $($(this).parent().siblings()[1]).text();
// 			currentprice=currentprice.replace(",","");
// 			totalprice =  parseInt(currentprice) +  parseInt(price2);
// 			$($(this).parent().siblings()[1]).text(totalprice.toLocaleString()+"원");
	
			setTotalInfo();
			
			g_num=$($(this).parent().siblings()[8]).children().val();
			$.ajax({
				url:"/cart/cartModi",
				dataType:"json",
				data:{g_num:g_num,cartstock:number}
			}).done(function(resp){
				console.log(resp)
			})
	
	
	});
	$(document).on("click", ".minus", function(){

			let result = $($(this).parent().siblings()[5]).text();
			number = parseInt(result) - 1;
			if (number == 0) {
				return false;
			}
			console.log(number);
			$($(this).parent().siblings()[5]).text(number);
			
			//가격변화
// 			let price = $($(this).parent().siblings()[3]).val() ;
// 			console.log("price"+price)
// 			price2 = price.replace(",","");
			
// 			let currentprice = $($(this).parent().siblings()[1]).text();
// 			currentprice=currentprice.replace(",","");
			
// 			console.log(price2 + " : " + currentprice);
// 			totalprice =  parseInt(currentprice) -  parseInt(price2);
// 			$($(this).parent().siblings()[1]).text(totalprice.toLocaleString()+"원");

			setTotalInfo();
	
			g_num=$($(this).parent().siblings()[8]).children().val();
			$.ajax({
				url:"/cart/cartModi",
				dataType:"json",
				data:{g_num:g_num,cartstock:number}
			}).done(function(resp){
				console.log(resp)
			})
	
	});
	
	
	
// 	//전체선택 누를 때 이벤트
	$("#allcheck").on("click",function(){
		
		
		if ($("#checkall").prop("checked")) {
			$("#checkall").prop("checked",false);
			$(".checkbox2").prop("checked", false);
			$(".checkbox2").attr("del",false);
		} else {
			$("#checkall").prop("checked",true);
			$(".checkbox2").prop("checked", true);
			$(".checkbox2").attr("del",true);
		}
		setTotalInfo($(".cartInfo"));
	})
	//전체선택 체크버튼 누를 때 이벤트
	$("#checkall").on("click", function() {
		if ($("#checkall").prop("checked")) {
			$(".checkbox2").prop("checked", true);
			$(".checkbox2").attr("del",true);
		} else {
			$(".checkbox2").prop("checked", false);
			$(".checkbox2").attr("del",false);
			
		}
		
		
		
		setTotalInfo();
	})
	//체크박스 개별 이벤트
	$(".checkbox2").on("click", function() {
		
		
		if($(this).prop("checked")){
		$(this).attr("del",true);
		}else{
			$(this).attr("del",false);
		}
		
		if ($("input[class=checkbox2]:checked").length == $(".checkbox2").length) {
			$("#checkall").prop("checked", true);
		} else {
			$("#checkall").prop("checked", false);
		}
	})
	
	//장바구니 삭제
	$(".delete").on("click",function(){
	$(this).parent().parent().remove();
	value = $(this).children().val();
	location.href="/cart/cartDel?g_num="+value;
	
})
	//선택 삭제
	$("#choosedel").on("click",function(){
		var del=[];
	$("input:checkbox[class=checkbox2]:checked").each(function(e,item){
		
		
		del.push($(this).val());
		console.log(del);
		$(item).parent().parent().remove();
		location.href="/cart/choosedel?g_num="+del;
	})
});
	</script>
</body>
</html>