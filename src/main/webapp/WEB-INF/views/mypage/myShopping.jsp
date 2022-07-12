<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopping List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- <link rel="stylesheet" href="/css/member/join.css">  -->
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

.H2 {
	/* Headline/H2 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 2.25rem;
	line-height: 2.688rem;
}
.body1{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 400;
font-size: 1.25rem;
line-height: 1.875rem;
}
.H3 {
	margin-bottom: 0.75rem;
	display: inline-block;
	/* Headline/H3 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	display: inline-block;
}
.H1{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 3.438rem;
line-height: 3.75rem;
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

.body2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;;
	line-height: 1.75rem;
}
/* footer */
#footer {
	background: #F4F6F8;
	height: 13.25rem;
}

<!--
-->
#mypage-area {
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





@media ( min-width : 992px) {
	.content{
	  width: calc(100% - 13.625rem);
	}
	.navi{
	width:11.875rem;
	padding:0rem;
	display:block;
	}
	.body3{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;;
	line-height: 1.75rem;
	}
	.body4{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1.25rem;
	line-height: 1.875rem;
	}
}

@media ( max-width : 991px) {
	.main{
	display:none;
	}
	.navi-menu{
	display:none;
	}
	
	.content{
	  width: calc(100% - 1.625rem);
	}
	.navi{
	padding:0rem;
	}
	.body3{
	font-size:1.625rem;
	}
	.body4{
	font-size:1.875rem;
	}
}

/* 네비 */

.content{
  
    margin-left:1.75rem;
}
.mypage-wrap{
margin:4.625rem auto 9.375rem;
}
body li{
    list-style-type: none;
    
}
body ul{
padding:0px;
}
body a{
text-decoration:none;
}
.menu-title{
display:block;
color:black;
border-bottom:1px solid black;
padding:1rem;
}

li div{
background:#212B36;
color:white;
padding: 0.125rem 1rem;
}

.navi-ul li ul li a{
color:#919EAB;
}
.navi-ul li ul li a:hover{
color:#212B36;
font-weight:700;
}
.small-navi{
margin:1.25rem 0rem ;
}
#select{
width:100%;
border:0px;
background:url('/images/downarrow.png') no-repeat 97% 50%/15px auto ;
background-size: 01.596rem;
text-align:left;
}
.body3 a{
display:block;
padding: 0.3rem 1rem;
}
<!-- 버튼 -->
        .btn1 {

            /* padding:  1.12rem 1.5rem; */
            gap: 0.625rem;

            /* width: 12.5rem; */
			width: 100%;
            height: 3.125rem;
            
            /* Gray/900 */
            color:#FFFFFF;
            background: #161C24;
            border-radius: 0.313rem;
            /* Button/Button */

            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 500;
            font-size: 1.0rem;
            line-height: 1.2rem;
            cursor: pointer;

        }
        
        .btn1:disabled {
        	color:#FFFFFF;
            background: #C4CDD5;
            cursor: default;
        }
		
		/* join 버튼 */
        .btn2 {

            padding: 1.125rem 1.5rem;
            gap: 0.625rem;


            /* width: 18.813rem; */
            width: 10rem;
            height: 1rem;


            color: #FFFFFF;
            border-radius: 1.25rem;
            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 500;
            font-size: 1.25rem;
            line-height: 0.5rem;
            /* identical to box height */

            text-align: center;

            /* Gray/900 */

            background: #161C24;
            cursor: pointer;

        }
        
        .btn2:disabled {
        	color:#FFFFFF;
            background: #C4CDD5;
            cursor: default;
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
             font-size: 1.23rem;
            line-height: 1.5rem;
                        /* identical to box height */

            text-align: center;

                color: #FFFFFF;




        }
</style>
</head>
<body>
<div class="container-fluid">
	<div class="container">
		<div class="row">
		<c:forEach var="i" items="${list }">
			<div class="col">${merchant_uid }</div>
			<div class="col">${name }</div>
			<div class="col">${i.email }</div>
			<div class="col">${i.phone }</div>
			<div class="col">${i.address1 }</div>
			<div class="col">${i.address2 }</div>
			<div class="col">${i.zipcode }</div>
			<div class="col">${i.card_name }</div>
			<div class="col">${i.card_number }</div>
			<div class="col">${i.card_quota }</div>
			<div class="col">${i.totalprice }</div>
			<div class="col">${i.delivery_text }</div>
			<div class="col">${i.pay_time }</div>
		</c:forEach>
		</div>
	</div>

<div class="container-fluid" id="mypage-area">
		<div class="container" style="padding-left:2.5rem;">
			<div class="row mypage-wrap"  >
			
			<div class="col-12 d-block d-lg-none H1 small-navi" >
			<button id="select" >MY PAGE</button>
			</div>
			
			
				<div class="navi" >
				<a href="/mypage/main" style=" font-size:1.625rem;" class="main" >
				<strong class="menu-title">My Page</strong>
				</a>
				<div class="navi-menu">
					<ul class="navi-ul">
					<li>
						<div class="body4">My Tickets</div>
						<ul>
							<li class="body3"><a href="/mypage/myTicket">티켓예매 목록</a></li>
						</ul>
					</li>
					<li>
						<div class="body4">My Shopping</a></div>
						<ul>
							<li class="body3"><a href="/mypage/myShopping">주문내역</a></li>
							<li class="body3"><a href="#">취소/반품 내역</a></li>
							<li class="body3"><a href="/delivery/selectAllAddress">배송지 관리</a></li>
						</ul>
					</li>
					<li>
						<div class="body4">My Info</div>
						<ul>
							<li class="body3"><a href="#">나의 회원등급</a></li>
							<li class="body3"><a href="#">나의 쿠폰</a></li>
							<li class="body3"><a href="#" id="registration">쿠폰등록</a></li>
							<li class="body3"><a href="#">개인정보 변경/탈퇴</a></li>
						</ul>
					</li>
					</ul>
				</div>
				</div>
				
				
				
				
				
				
				<div class="content" style="border:1px solid black">
					<div class="row" id="row1">
						<div class="col-12">
							<div class="h2" style="text-align: center; margin-left: auto; margin-bottom: 20px;"> <b>Shopping List</b></div>
						</div>
						<div class="col-12">
							<div class="content">
								<div class="row">
									<div class="col-1.5">
									fdgfgfdfgfgfgfgfg
									</div>
									<div class="col-1.5">
									fdgfgfdfgfgfgfgfgfgf
									</div>
									<div class="col-6">
									fdgfgfdgfgfgfgfgfgf
									</div>
									<div class="col-1.5">
									fdgfgfdgfgfgfgfgf
									</div>
									<div class="col-1.5">
									fdgfgfdfgfgf
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			

			





			</div>
		</div>








		<!-- 푸터단 -->

		<div class="row" id="footer">
            <div class="container">
                <div class="row" id="row1">
                    <div class="col-12 h3" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
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
	
	function open_chatroom(){ 
		var windowWidth = $( window ).width();
		if(windowWidth < 992) {      //창 가로 크기가 500 미만일 경우  
			$(".navi-menu").css({"display":"none"});
		} else {      //창 가로 크기가 500보다 클 경우  
			$(".navi-menu").css({"display":"block"});
		}
		}
	
	//선택박스 화살표 방향 이미지
		$("#registration").on("click",function(){
		window.open("/coupon/toregistration", "",
		"top=100,left=200,width=700,height=500");
		})
	let click = true;
	$("#select").on("click",function(){
		if(click==false){
			$("#select").css({"background":"url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ","background-size": "1.596rem"});
			$(".navi-menu").css({"display":"none"});
			
			click = true;
		}else{
			$("#select").css({"background":"url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "01.596rem"});
			$(".navi-menu").css({"display":"block"});
			click = false;
		}
	});
// 		$("#make").on("click",function(){
// 			$.ajax({
// 				url:"/coupon/make",
// 				data:{number:$("#number").val(),
// 					dc:$("#dc").val(),
// 					category:$("#category").val()}
// 			}).done(function(resp){
// 				console.log(resp);
// 			})
// 		})
	
	</script>
</body>
</html>