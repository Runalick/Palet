<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Palet</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="/css/home.css">
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>



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

		<div class="row" id="mainphoto">
			<div class="container">
				<div class="row" id="row1">


					<!-- <div class="col-12" id=word1>
                    </div> -->

					<div class="col-12 h1 d-block d-sm-none"
						style="text-align: center; margin-top: 12.5rem;">Romantic
						Days</div>
					<br>
					<div class="col-12 h1 d-block d-sm-none"
						style="text-align: center;">어쨋든 사랑</div>


					<div class="col-12 h1 d-none d-sm-block"
						style="margin-top: 12.5rem; padding-left: 0.5rem;">Romantic
						Days</div>
					<br>
					<div class="col-12 h1 d-none d-sm-block"
						style="padding-left: 0.5rem;">어쨋든 사랑</div>
					<div class=col-12>
						<div class="col-12 body1 d-block d-sm-none"
							style="text-align: center; margin-top: 2.5rem;">2022.03.16
							~ 2022.10.30</div>
						<div class="col-12 body1 d-none d-sm-block"
							style="margin-top: 2.5rem; padding-left: 0.5rem;">2022.03.16
							~ 2022.10.30</div>
					</div>



					<div class="col-12  d-none d-sm-block"
						style="margin-bottom: 14.75rem; margin-top: 5rem; padding-left: 0.5rem;">
						<button class="btn1" onclick="location.href='/Exhibition/toCurdetail'">자세히 보기</button>
						<button class="btn2" onclick="location.href='/Exhibition/toBook'";>예매 하기</button>
					</div>
					<div class="col-12 d-block d-sm-none"
						style="margin-bottom: 14.75rem; text-align: center; margin-top: 5rem;">

						<button class="btn1" onclick="location.href='/Exhibition/toCurdetail'"
							style="margin: auto; margin-bottom: 1rem; text-align: center;">자세히
							보기</button>
						<br>
						<button class="btn2" onclick="location.href='/Exhibition/toBook'" style="text-align: center;">예매 하기</button>
					</div>

				</div>
			</div>
		</div>
		<div class="row hcon" style="background: #F4F6F8; margin: 0px;">

			<div class="container">
				<div class="row hcon" id="row1">
					<div class="col-md-1  d-none d-sm-block h4"
						style="margin-left: 0px;">운영시간</div>
					<div class="col-md-4 d-none d-sm-block body2">화요일–일요일(월요일
						휴관), 10:00–18:00</div>
					<div class="col-md-1 d-none d-sm-block h4">전시장소</div>
					<div class="col-md-6 d-none d-sm-block body2">지하철3호선 경복궁역 지하
						1층</div>
					<div class="col-md-1  d-block d-sm-none h4"
						style="text-align: center;">운영시간</div>
					<div class="col-md-4 d-block d-sm-none body2"
						style="text-align: center;">화요일–일요일(월요일 휴관), 10:00–18:00</div>
					<div class="col-md-1 d-block d-sm-none h4"
						style="text-align: center;">전시장소</div>
					<div class="col-md-6 d-block d-sm-none body2"
						style="text-align: center;">지하철3호선 경복궁역 지하 1층</div>
				</div>

			</div>

		</div>



		<div class=row style="margin-top: 10rem;">
			<div class="col h2" style="text-align: center;">베스트 셀러</div>
		</div>

		<div class="container" style="margin-top: 3.75rem;">



			<div class="row " id="row1">
				<div class="col-xl-4 col-sm-6 " style="text-align: center;">
					<img src="/images/image 21.png" class="w-100 p-5"
						style="padding-left: 0px;">
				</div>
				<div class="col-xl-4 col-sm-6" style="text-align: center;">
					<img src="/images/BestGoods-1.png" class="w-100 p-5">
				</div>
				<div class="col-xl-4 col-sm-6" style="text-align: center;">
					<img src="/images/BestGoods-2.png" class="w-100 p-5">
				</div>
				<div class="col-xl-4 col-sm-6" style="text-align: center;">
					<img src="/images/BestGoods-3.png" class="w-100 p-5">
				</div>
				<div class="col-xl-4 col-sm-6" style="text-align: center;">
					<img src="/images/BestGoods-4.png" class="w-100 p-5">
				</div>
				<div class="col-xl-4 col-sm-6" style="text-align: center;">
					<img src="/images/BestGoods.png" class="w-100 p-5">
				</div>
			</div>

		</div>


		<div class="container">
			<div class="row " style="margin-top: 3.75rem; text-align: center;"
				id="row1">
				<div class="col-12" style="text-align: center;">
					<button class="btn3 btn" onclick="location.href='/shop/toShop'" >전시 굿즈 더보기</button>
				</div>


			</div>
		</div>


		<div class="row" id="mainphoto2" style="margin-top: 12.5rem;">
			<div class="container">
				<div class="row" id="row1">


					<div class="col-12 h2_1 d-block d-sm-none"
						style="text-align: center; margin-top: 10rem;">곧 시작합니다</div>
					<div class="col-12 h1 d-block d-sm-none"
						style="text-align: center; margin-top: 2.5rem;">과천프로젝트 2022:</div>
					<br>
					<div class="col-12 h1 d-block d-sm-none"
						style="text-align: center;">옥상정원_시간의 정원</div>


					<div class="col-12 h2_1 d-none d-sm-block"
						style="margin-top: 10rem; padding-left: 0.5rem;">곧 시작합니다</div>
					<div class="col-12 h1 d-none d-sm-block"
						style="margin-top: 2.5rem; padding-left: 0.5rem;">과천프로젝트
						2022:</div>
					<br>
					<div class="col-12 h1 d-none d-sm-block"
						style="padding-left: 0.5rem;">옥상정원_시간의 정원</div>



					<div class=col-12>
						<div class="col-12 body1 d-block d-sm-none"
							style="text-align: center; margin-top: 2.5rem;">
							2022-06-29~2023-06-25</div>
						<div class="col-12 body1 d-none d-sm-block"
							style="margin-top: 2.5rem; padding-left: 0.5rem;">2022-06-29~2023-06-25</div>
					</div>


					<div class="col-12  d-none d-sm-block"
						style="margin-top: 5rem; padding-left: 0.5rem;">
						<button class="btn1" onclick="location.href='/Exhibition/toUpcommingExhibition'">자세히 보기</button>
					</div>


					<div class="col-12 d-block d-sm-none"
						style="margin-top: 5rem; text-align: center;">

						<button class="btn1"
							style="margin: auto; margin-bottom: 1rem; text-align: center;">자세히
							보기</button>

					</div>


				</div>
			</div>
		</div>
		<!-- 	<div class="container">
			<div class="row " style="margin-top: 10rem; text-align: center;"
				id="row1">
				<div class="col-12 h2" style="text-align: center;">지난 전시들</div>


			</div>
		</div> -->
		<div class=row style="margin-top: 10rem;">
			<div class="col h2" style="text-align: center;">지난 전시</div>
		</div>


		<div class="container"
			style="margin-top: 3.75rem; padding-left: 0px; padding-right: 0px;">

			<div class="container" id=" flow">
				<div class="row overflow-auto" style="margin-top: 3.75rem;">
					<div class="col-xl-4 col-sm-6 " style="text-align: center;">
						<img src="/images/preex1.png" class="w-100 "
							style="text-align: center;">
						<div class=h3>카로 악포키에르 «분실된 그림들»</div>
						<div class=caption>2022-03-03~2022-03-10</div>
					</div>
					<div class="col-xl-4 col-sm-6 " style="text-align: center;">
						<img src="/images/preex2.png" class="w-100 ">
						<div class=h3>MMCA 국제미술 소장품 기획전 «미술로, 세계로»</div>
						<div class=caption>2022-01-20~2022-06-12</div>
					</div>
					<div class="col-xl-4 col-sm-6 " style="text-align: center;">
						<img src="/images/preex3.png" class="w-100 ">
						<div class=h3>아이 웨이웨이</div>
						<div class=caption>2021-12-11~2022-04-17</div>
					</div>
					<!-- <div class="col-xl-4 col-sm-6 overflow-auto " style="text-align: center; ">
                    <img src="preex1.png" class="w-100 p-3" style="padding-left: 0px;">
                </div>
                <div class="col-xl-4 col-sm-6 overflow-auto" style="text-align: center;">
                    <img src="preex2.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6 overflow-auto" style="text-align: center;">
                    <img src="preex3.png" class="w-100 p-3">
                </div> -->

				</div>

			</div>
		</div>

		<div class="row " style="margin-top: 2.5rem; text-align: center;"
			id="row1">
			<div class="col-12 h2" style="text-align: center; margin: auto;">
				<img type=button src="/images/btn4_1.png"
					style="margin-right: 1.25rem;"><img type=button
					src="/images/btn4_2.png">
			</div>


		</div>

		<div class="row" id="main3" style="margin-top: 12.5rem;">

			<div class="col-md-12 h2" style="margin-top: 10rem;">지루한 지하철?
				NO!</div>

			<div class="col-md-12 h2" style="margin-top: 0.75rem;">팔레트는 매일
				새로운 즐거움을 전달합니다.</div>

			<div class="col-12 body1"
				style="text-align: center; margin-top: 2.5rem; color: #161C24;">
				일상과 예술의 연결,</div>

			<div class="col-12 body1"
				style="text-align: center; margin-top: 0.25rem; color: #161C24;">
				팔레트와 함께 다양한 색을 만들어 보세요.</div>

			<div class="col-12 body1"
				style="text-align: center; margin-bottom: 12.063rem; margin-top: 3.75rem; color: #161C24;">
				<button class="btn5">팔레트와 새로운 전시 기획하기</button>
			</div>
		</div>


		<div class="row" id="footer">
			<div class="container">
				<div class="row" id="row1">
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
	<script>
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




<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Palet</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<link rel="stylesheet" href="/css/home.css">

</head>

<body>
<div class="container-fluid">
<c:choose>
	<c:when test="${loginEmail =='admin@palet.com'}">
		<div class="row" id="container1">
			<nav class="navbar navbar-expand-md navbar-light">
				<div class="container" id="navparent">
					<a class="navbar-brand" href="/" id="container"
						style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
					<ul class="navbar-nav">
						<li class="nav-item"> <a id="About" class="nav-link" href="about"
	                        style="padding-left:0px; padding-right:0px;">About</a> </li>
		                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
		                        style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
		                <li class="nav-item"> <a id="Class" class="nav-link" href="/event/eventPage"
	                        style="padding-left:0px; padding-right:0px;">Class</a> </li> 
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
			<nav class="navbar navbar-expand-md navbar-light">
				<div class="container" id="navparent">
					<a class="navbar-brand" href="/" id="container"
						style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
					<ul class="navbar-nav">
						<li class="nav-item"> <a id="About" class="nav-link" href="about"
                        style="padding-left:0px; padding-right:0px;">About</a> </li>
		                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
		                        style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
		                <li class="nav-item"> <a id="Class" class="nav-link" href="/event/eventPage"
		                        style="padding-left:0px; padding-right:0px;">Class</a> </li> 
		                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
		                        style="padding-left:0px; padding-right:0px;">Shop</a> </li>
		                <li class="nav-item"> <a id="Cart" class="nav-link" href="/cart/cartlist"
			                        style="padding-left:0px; padding-right:0px;">Cart</a> </li>
		                <li class="nav-item"> <a id="Logout" class="nav-link" href="/member/loginPage" onclick="return logout();"
		                        style="padding-left:0px; padding-right:0px;">Logout</a> </li>
		                <li class="nav-item"> <a id="Mypage" class="nav-link" href="/member/mypage"
		                        style="padding-left:0px; padding-right:0px;">mypage</a> </li>
					</ul>
					</div>
				</div>
			</nav>
		</div>

	</c:when>
	
	<c:otherwise>
		<div class="row" id="container1">
			<nav class="navbar navbar-expand-md navbar-light">
				<div class="container" id="navparent">
					<a class="navbar-brand" href="/" id="container"
						style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
					<ul class="navbar-nav">
						<li class="nav-item"><a id="About" class="nav-link"
							href="about" style="padding-left: 0px; padding-right: 0px;">About</a>
						</li>
						<li class="nav-item"> <a id="About" class="nav-link" href="about"
		                    style="padding-left:0px; padding-right:0px;">About</a> </li>
		                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
		                    style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
		                <li class="nav-item"> <a id="Class" class="nav-link" href="/event/eventPage"
		                    style="padding-left:0px; padding-right:0px;">Class</a> </li>        
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

	
		<div class="row" id="mainphoto">
			<div class="container">
				<div class="row" id="row1">


					<!-- <div class="col-12" id=word1>
                    </div> -->

                    <div class="col-12 h1 d-block d-sm-none" style="text-align: center; margin-top : 12.5rem;">Romantic Days</div><br>
                    <div class="col-12 h1 d-block d-sm-none" style="text-align: center;">어쨋든 사랑</div>
                    <div class="col-12 h1 d-none d-sm-block" style = "margin-top : 12.5rem;">Romantic Days</div><br>
                    <div class="col-12 h1 d-none d-sm-block">어쨋든 사랑</div>
                    <div class=col-12>
                        <div class="col-12 body1 d-block d-sm-none" style="text-align: center; margin-top : 2.5rem;"> 2022.03.16 ~ 2022.10.30
                        </div>
                        <div class="col-12 body1 d-none d-sm-block" style = "margin-top : 2.5rem;"> 2022.03.16 ~ 2022.10.30</div>
                    </div>
                   


                    <div class="col-12  d-none d-sm-block" style = "margin-bottom: 14.75rem; margin-top : 5rem; " >
                        <button class="btn1">자세히 보기</button>
                        <button class="btn2">예매 하기</button>
                    </div>
                    <div class="col-12 d-block d-sm-none" style="margin-bottom: 14.75rem; text-align: center; margin-top : 5rem;">

                        <button class="btn1" style="margin: auto; margin-bottom: 1rem; text-align: center;">자세히
                            보기</button><br>
                        <button class="btn2" style="  text-align: center;">예매 하기</button>
                    </div>

                </div>
            </div>
        </div>
        <div class="row hcon" style="background: #F4F6F8; margin: 0px;">

            <div class="container">
                <div class="row hcon" id="row1">
                    <div class="col-md-1  d-none d-sm-block h4">
                        운영시간
                    </div>
                    <div class="col-md-4 d-none d-sm-block body2">
                        화요일–일요일(월요일 휴관), 10:00–18:00
                    </div>
                    <div class="col-md-1 d-none d-sm-block h4">
                        전시장소
                    </div>
                    <div class="col-md-6 d-none d-sm-block body2">
                        지하철3호선 경복궁역 지하 1층
                    </div>
                    <div class="col-md-1  d-block d-sm-none h4" style="text-align: center; ">
                        운영시간
                    </div>
                    <div class="col-md-4 d-block d-sm-none body2" style="text-align: center;">
                        화요일–일요일(월요일 휴관), 10:00–18:00
                    </div>
                    <div class="col-md-1 d-block d-sm-none h4" style="text-align: center;">
                        전시장소
                    </div>
                    <div class="col-md-6 d-block d-sm-none body2" style="text-align: center;">
                        지하철3호선 경복궁역 지하 1층
                    </div>
                </div>

            </div>
            
        </div>



        <div class="container">
        	<div class="row" style="margin-top: 10rem;">
                <div class="col-12 h2">
                    베스트 셀러
                </div>
            </div>
            <div class="row " style="margin-top: 3.75rem;" id="row1">
                <div class="col-xl-4 col-sm-6 " style="text-align: center; ">
                    <img src="/images/image 21.png" class="w-100 p-3" style="padding-left: 0px;">
                </div>
                <div class="col-xl-4 col-sm-6" style="text-align: center;">
                    <img src="/images/BestGoods-1.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6" style="text-align: center;">
                    <img src="/images/BestGoods-2.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6" style="text-align: center;">
                    <img src="/images/BestGoods-3.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6" style="text-align: center;">
                    <img src="/images/BestGoods-4.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6" style="text-align: center;">
                    <img src="/images/BestGoods.png" class="w-100 p-3">
                </div>
            </div>

		</div>

		<div class="container">
			<div class="row " style="margin-top: 3.75rem; text-align: center;"
				id="row1">
				<div class="col-12" style="text-align: center;">
					<button class="btn3 btn">전시 굿즈 더보기</button>
				</div>


			</div>
		</div>


		<div class="row" id="mainphoto2" style="margin-top: 12.5rem;">
			<div class="container">
				<div class="row" id="row1">


					<div class="col-12 h2_1 d-block d-sm-none"
						style="text-align: center; margin-top: 10rem;">곧 시작합니다</div>
					<div class="col-12 h1 d-block d-sm-none"
						style="text-align: center; margin-top: 2.5rem;">과천프로젝트 2022:</div>
					<br>
					<div class="col-12 h1 d-block d-sm-none"
						style="text-align: center;">옥상정원_시간의 정원</div>


					<div class="col-12 h2_1 d-none d-sm-block"
						style="margin-top: 10rem;">곧 시작합니다</div>
					<div class="col-12 h1 d-none d-sm-block"
						style="margin-top: 2.5rem;">과천프로젝트 2022:</div>
					<br>
					<div class="col-12 h1 d-none d-sm-block">옥상정원_시간의 정원</div>



					<div class=col-12>
						<div class="col-12 body1 d-block d-sm-none"
							style="text-align: center; margin-top: 2.5rem;">
							2022-06-29~2023-06-25</div>
						<div class="col-12 body1 d-none d-sm-block"
							style="margin-top: 2.5rem;">2022-06-29~2023-06-25</div>
					</div>


					<div class="col-12  d-none d-sm-block" style="margin-top: 5rem;">
						<button class="btn1">자세히 보기</button>
					</div>


					<div class="col-12 d-block d-sm-none"
						style="margin-top: 5rem; text-align: center;">

						<button class="btn1"
							style="margin: auto; margin-bottom: 1rem; text-align: center;">자세히
							보기</button>

					</div>


				</div>
			</div>
		</div>
		<div class="container">
			<div class="row " style="margin-top: 10rem; text-align: center;"
				id="row1">
				<div class="col-12 h2" style="text-align: center;">지난 전시들</div>


			</div>
		</div>

		<div class="container" id=" flow">
			<div class="row overflow-auto" style="margin-top: 3.75rem;">
				<div class="col-xl-4 col-sm-6 " style="text-align: center;">
					<img src="/images/preex1.png" class="w-100 p-3"
						style="text-align: center;">
					<div class=h3>카로 악포키에르 «분실된 그림들»</div>
					<div class=caption>2022-03-03~2022-03-10</div>
				</div>
				<div class="col-xl-4 col-sm-6 " style="text-align: center;">
					<img src="/images/preex2.png" class="w-100 p-3">
					<div class=h3>MMCA 국제미술 소장품 기획전 «미술로, 세계로»</div>
					<div class=caption>2022-01-20~2022-06-12</div>
				</div>
				<div class="col-xl-4 col-sm-6 " style="text-align: center;">
					<img src="/images/preex3.png" class="w-100 p-3">
					<div class=h3>아이 웨이웨이</div>
					<div class=caption>2021-12-11~2022-04-17</div>
				</div>
				<!-- <div class="col-xl-4 col-sm-6 overflow-auto " style="text-align: center; ">
                    <img src="preex1.png" class="w-100 p-3" style="padding-left: 0px;">
                </div>
                <div class="col-xl-4 col-sm-6 overflow-auto" style="text-align: center;">
                    <img src="preex2.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6 overflow-auto" style="text-align: center;">
                    <img src="preex3.png" class="w-100 p-3">
                </div> -->

			</div>

		</div>

		<div class="container">
			<div class="row " style="margin-top: 2.5rem; text-align: center;"
				id="row1">
				<div class="col-12 h2" style="text-align: center;">
					<img type=button src="/images/btn4_1.png"
						style="margin-right: 1.25rem;"><img type=button
						src="/images/btn4_2.png">
				</div>


			</div>
		</div>
		<div class="row" id="main3" style="margin-top: 12.5rem;">
			<div class="container">
				<div class="row" id="row1">
					<div class="col-12 h2"
						style="text-align: center; margin-top: 10rem;">지루한 지하철? NO!
					</div>
					<div class="col-12 h2"
						style="text-align: center; margin-top: 0.75rem;">팔레트는 매일 새로운
						즐거움을 전달합니다.</div>
					<div class="col-12 body1"
						style="text-align: center; margin-top: 2.5rem; color: #161C24;">
						일상과 예술의 연결,</div>
					<div class="col-12 body1"
						style="text-align: center; margin-top: 0.25rem; color: #161C24;">
						팔레트와 함께 다양한 색을 만들어 보세요.</div>
					<div class="col-12 body1"
						style="text-align: center; margin-bottom: 12.063rem; margin-top: 3.75rem; color: #161C24;">
						<button class="btn5">팔레트와 새로운 전시 기획하기</button>
					</div>
				</div>
			</div>
		</div>
		<div class="row" id="footer">
			<div class="container">
				<div class="row" id="row1">
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
</div>
<script>

//카카오 초기화 및 토큰 받아오기
Kakao.init('b956cab5ef7dbe5bc1f861614a4b2061');
//sessionStorage에 저장된 사용자 엑세스 토큰 받아온다.
window.Kakao.Auth.setAccessToken(JSON.parse(sessionStorage.getItem('AccessKEY')));

function logout() {
	console.log(Kakao.Auth.getAccessToken())
	if (Kakao.Auth.getAccessToken()) {
		Kakao.Auth.logout(function() {
  			alert("로그아웃 되었습니다.");
		 })
	}
	location.href="/member/logout";
	return true;
}
</script>    


</body>
</html>



 --%>