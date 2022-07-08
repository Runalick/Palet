<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coupon List</title>
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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="/css/member/mypage.css">
</head>
<body>
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
	
			<div class="container-fluid" style="min-width: 600px;">
			<div class="row" style="padding-top: 100px;">
				<div class="container">
					<div class="row" id="row1">
						<div class="h2"
							style="text-align: left; margin-left: 100px; margin-bottom: 20px;">Coupon List</div>
					</div>
					<c:forEach items="${list }" var="i">
						<div class="col-12">
							쿠폰 번호 ${i.serial }
						</div>
						<div class="col-12">
							쿠폰 할인금 ${i.dc }
						</div>
						<div class="col-12">
							쿠폰 종류 ${i.category }
						</div>
						<div class="col-12">
							사용여부 
							<c:if test="${(i.use == null)||(i.use=='N') }">
								미사용 쿠폰입니다.
							</c:if>
							<c:if test="${i.use=='Y' }">
								사용한 쿠폰입니다.
							</c:if>							
							
						</div>
					</c:forEach>
					
					<!-- 테스트용 -->
					<div class="col-12">
						<input type="text" placeholder="발급숫자" name="number" id="number"><br>
						<input type="text" placeholder="할인금액" name="dc" id="dc"><br>
						<input type="text" placeholder="종류" naem="category" id="category">
					</div>
					<div class="col-12">
							<button type="button" id="make">테스트용 쿠폰 만들기</button>
						</div>
										
				
				</div>
			</div>
		</div>
	
	
		<div class="row" id="footer" style="margin-top: 10px;">
		<div class="container">
			<div class="row" id="row1">
				<div class="col-12 h3 d-none d-sm-block"
					style="color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
				<div class="col-12 body2 d-none d-sm-block" style="color: #637381;">사업자
					등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div>
				<br>
				<div class="col-12 body2 d-none d-sm-block"
					style="color: #637381; margin-bottom: 3.75rem;">3호선 경복궁역 지하
					1층 | contact@palet.com</div>

			</div>
		</div>
	</div>
	<script type="text/javascript">
		$("#make").on("click",function(){
			$.ajax({
				url:"/coupon/make",
				data:{number:$("#number").val(),
					dc:$("#dc").val(),
					category:$("#category").val()}
			}).done(function(resp){
				console.log(resp);
			})
		})
	
	</script>
</body>
</html>