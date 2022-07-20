<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palet</title>
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
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<!-- 지도api -->

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

.H2 {
	/* Headline/H2 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 2.25rem;
	line-height: 2.688rem;
}

.h3 {
	margin-bottom:0.75rem;
	display: inline-block;
	/* Headline/H3 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 20px;
	line-height: 1.5rem;
	display: inline-block;
}

.h3_1 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	/* Gray/900 */
	color: #161C24;
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
	font-size: 16px;;
	line-height: 1.75rem;
}

.body2_1 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;
	line-height: 1.75rem;
	/* identical to box height, or 175% */
	margin-bottom: 0px;
	color: #000000;
}

/* footer */
#footer {
	background: #F4F6F8;
	height: 13.25rem;
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

.content1 {
	display: inline-block;
	width: 36.375rem;
}

.span_div {
	text-align: center;
}

.border {
	box-sizing: border-box;
	height: 22.5rem;
	background: #F9FAFB;
	border: 1px solid #DFE3E8;
	border-radius: 1.25rem;
	padding-top: 8rem;
	text-align: center;
}
#row1>div {
	padding-left: 0px;
	padding-right: 0px;
}
@media ( min-width : 992px) {
	.border-text {
		padding-top: 7rem;
	}
	.info, .border-text, .askinfo {
		padding-left: 2.25rem;
	}
	.askdiv img{
	height:13.125rem;
	}
	#odd1,#odd2,#odd3{
	padding-left:1.5rem;
	padding-right:1.5rem;
	}
	#even1,#even2,#even3{
	padding-left:1rem;
	padding-right:1.5rem;
	}
	.info-row{
	padding-left:2rem;
	}
	
}
@media ( max-width : 992px) {
.border-text, .info, .askinfo{
	padding-top:4rem;
}
.askinfo-row{
padding-left:2.5rem;
padding-right:2.5rem;
}
	

.mapdiv {
	box-sizing: border-box;
	height: 22.5rem;
	background: #F9FAFB;
	border: 1px solid #DFE3E8;
	border-radius: 1.25rem;
	text-align: center;
	padding:0px;
}
.askdiv{
padding:0px;
}
.askdiv img{
width:100%;
margin-bottom:2.25rem;

}
.input{
margin-top:0.5rem;
width:100%;
display: flex;
flex-direction: row;
align-items: center;
padding: 10px 12px;
gap: 10px;
background: #FFFFFF;
border: 1px solid #CFD4D9;
box-shadow: 0px 0px 0px #CBDAFC;
border-radius: 5px;
}
.askbtn{
border:0px;
display: flex;
flex-direction: row;
justify-content: center;
align-items: center;
padding: 18px 24px;
width:100%;
gap: 10px;
height: 60px;
background: #161C24;
border-radius: 20px;
color:white;
margin-top:2.5rem;
}
.askbtn:hover{
background-color : #454F5B;
gap: 10px;
border-radius: 20px;
}
</style>
</head>
<body>
		<div class="container-fluid" >
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
		<div class="container">
		<div class="row">
		<div class="col-12 H2" style="color: #161C24;margin-top:2.5rem; margin-bottom:2.5rem;">About</div>
		<div class="col-12" style="text-align: center">
		<img class="w-100" src="/images/about_picture1.png">
		</div>
		<div class="col-12 H2" style="text-align:center; margin-top:5rem; margin-bottom:1.25rem;">
		매일 타는 지하철,<br>
		지루한 일상 속에 즐거움을 전달합니다.
		</div>
		<div class="col-12 span_div" >
		<span class="body2 content1">
		팔레트는 3호선 경복궁역 지하1층에 위치해 있습니다. 지하철을 유동인구가 많은 장소입니다. 바꿔말하면, 많은 사람들의 일상에는 지하철이 있다는 것을 의미합니다. 팔레트는 역사 내 유휴공간을 미술관으로 바꾸어 일상과 예술을 연결하는 창구가 되고자 합니다.
		</span>
		</div>
		<div class="col-12">
			<div class="row"  id="row1" style="padding:0.8rem;margin-top:10rem; margin-bottom:10rem;">
				<div class="col-12 col-lg-6 border">
				<img src="/images/about_picture3.png" style="width:18.75rem">
				</div>
				<div class="col-12  col-lg-6 border-text  ">
					<div class="row info-row"  >
						<div class="col-12 h3" style="padding-left:0.8rem;">palette? pallet? palet!!</div>
						<div class="col-12 body2" style="padding-left:0.8rem;">그림을 그릴 때 사용하는 ‘palette’는 다양한 색을 가진 미술도구입니다.
‘palete’는 대형 화물을 옮길 때 사용되는 받침대입니다.
이 두 단어를 합성하여 만들어진 ‘palet’라는 이름는 ‘여러가지 색을 가진 다양한 작품, 다채로운 즐거움을 전달하자’는 의미를 담고있습니다.</div>
					
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="col-12">
			<div class="row" id="row1" style="padding:0.8rem;margin-top:10rem; margin-bottom:10rem;">
				<div class="col-12 col-lg-6 mapdiv" id="map">
				
				</div>
				<div class="col-12  col-lg-6  info ">
					<div class="row info-row"  >
						
					<div class="col-12 h3" style="margin-top:0.75rem;padding-left:0.8rem;">운영시간</div>
						<div class="col-12 body2" style="margin-bottom:2.5rem;padding-left:0.8rem;">화요일–일요일(월요일 휴관), 10:00–18:00<br>
미술관 전시장 내 관람객이 120명이 초과될 경우 입장이 제한될 수 있습니다.</div>
						<div class="col-12 h3" style="padding-left:0.8rem;">위치</div>
						<div class="col-12 body2" style="margin-bottom:2.5rem;padding-left:0.8rem;">지하철3호선 경복궁역 지하 1층</div>
						<div class="col-12 h3" style="padding-left:0.8rem;">주차 안내</div>
						<div class="col-12 body2" style="padding-left:0.8rem;">주차불가<br>
인근 유료 주차장 별도 이용(국립현대미술관 서울관 지하 주차장 및 경복궁 주차장 등)</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="col-12">
		
		
		<div class="row" id="row1" style="margin-top:10rem; margin-bottom:10rem;">
				<div class="col-12 col-lg-6 askdiv">
				<div class="row" >
				<div class="col-4 col-lg-6 " id="odd1">
					<img src="/images/ask1.png"  ></div>
				<div class="col-4 col-lg-6 " id="even1">
					<img src="/images/ask2.png" ></div>
				<div class="col-4 col-lg-6 " id="odd2">
				<img src="/images/ask3.png " ></div>
				<div class="col-4 col-lg-6 " id="even2">
				<img src="/images/ask4.png " ></div>
				<div class="col-4 col-lg-6 "id="odd3">
					<img src="/images/ask5.png" ></div>
				<div class="col-4 col-lg-6 " id="even3">
					<img src="/images/ask6.png" ></div>
			
			
				
				
			
			
				</div>
				</div>
				<div class="col-12  col-lg-6  askinfo ">
					<div class="row info-row askinfo-row" id="row1" style="margin-top:1rem;">
						<div class="col-12 h3" style="margin-bottom:2.5rem; height:1.5rem;">대관 문의</div>
						<div class="col-12 body2" >이메일</div>
						<div class="col-12">
						<input type="text" class="body2 input" id="email" placeholder="답변 받을 이메일을 입력해 주세요.">
						</div>
						<div class="col-12 body2" style="margin-top:1.5rem;">문의 제목</div>
						<div class="col-12">
						<input type="text" class="body2 input" id="title" placeholder="제목을 입력해 주세요.">
						</div>
						<div class="col-12 body2" style="margin-top:1.5rem;">문의 내용</div>
						<div class="col-12">
						<textarea class="body2 input" id="contents" placeholder="자세한 내용을 입력해 주세요." style="height:14.25rem; resize:none;"></textarea>
						</div>
						<div class="col-12">
						<button class="askbtn">문의하기</button>
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
                <div class="row">
                    <div class="col-12 h3_1" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
                    <div class="col-12 body2_1" style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2_1" style = "color: #637381;">3호선 경복궁역 지하 1층 | contact@palet.com</div>

                </div>
            </div>
        </div>

	</div>
<script>
//지도
// var container = document.getElementById('map');
// 		var options = {
// 			center: new kakao.maps.LatLng(33.450701, 126.570667),
// 			level: 3
// 		};

// 		var map = new kakao.maps.Map(container, options);
//대관 문의 이메일 버튼
$(".askbtn").on("click",function(){
	
	if($("#email").val()==''){
		alert("답변 받을 이메일을 입력해주세요.");
		return false;
	}else if($("#title").val()==''){
		alert("제목을 입력해주세요.");
		return false;
	}else if($("#contents").val()==''){
		alert("자세한 내용을 입력해주세요.")
		return false;
	}else{
	if(confirm("문의하시겠습니까?")){
		
		$.ajax({
			url:"/info/askEmail",
			data:{userEmail:$("#email").val(),title:$("#title").val(),contents:$("#contents").val()}
		}).done(function(resp){


			$("#email").val("");
			$("#title").val("");
			$("#contents").val("");
			alert("문의가 접수되었습니다");

		})
	}
		
	}

})


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

</body>

</html>