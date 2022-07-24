<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Page</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/admin/admin.css">

<style>
    @media (max-width : 768px){
		.sidebar {
			position : static;
			height : auto;
		}
		
		.top-navbar {
			position : static;
		}
	}
</style>
</head>
<body>
<!-- <div class="container "> -->
    <nav class="navbar navbar-expand-md  navbar-light"> 
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#sidebar"
        		aria-controls="sidebar" aria-expanded="false"
							aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="sidebar">
            <div class="container-fluid">
                <div class="row">
                    <!-- sidebar 3grid open -->
                    <!-- sidebar class name for css, fixed-->
                    <div class="col-xl-2 col-lg-3 col-md-3 col-12 sidebar ml-auto fixed-top">
                        <!-- 최상단 로고 위치 텍스트/이미지 형태 -->
                        <a href="/" class="navbar-brand text-black text-center d-block mx-auto py-3 mb-4 bottom-border" ><img src="/images/Logo.svg"> </a> 
                        <!-- admin 계정정보 나타내는 모습 -->
                        <div class="bottom-border pb-3 text-center"> <!-- 중앙정렬 시킴-->
                            <img src="/images/sample.png" alt="" width="50" class="rounded-circle mr-3" > <!-- 이미지 라운드효과-->
                            <a href="#" class="text-black body1 py-2">ADMIN</a>
                        </div>
                        <!-- 하위 메뉴 구성 -->
                        <ul class="navbar-nav flex-column mt-4">
                            <li class="nav-item">
                                <a href="/admin/adminMain" class="nav-link text-black p-3 mb-2 sidebar-link"> <!-- 선택된 효과 -->
                                    <i class="bi bi-palette text-black "></i> Dashboard
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminMembers?cpage=1" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-people text-black fa-lg mr-3"></i> Members
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminExhibitions" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-easel text-black fa-lg mr-3"></i> Exhibitions
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminGoods" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-gift text-black fa-lg mr-3"></i> Goods
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminProgram" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-columns-gap text-black fa-lg mr-3"></i> Programs
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminPayment?cpage=1" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-cash-coin text-black fa-lg mr-3"></i> Payment
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminCoupon?cpage=1" class="nav-link text-black p-3 mb-2 current">
                                    <i class="bi bi-ticket-perforated text-black fa-lg mr-3"></i> Coupons
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-folder text-black fa-lg mr-3"></i> FNQ(QNA)
                                </a>
                            </li>                          
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-wrench-adjustable text-black fa-lg mr-3"></i> Settings
                                </a>
                            </li>

                        </ul>
                        
                    </div>
                    <!-- sidebar end -->

                    <!-- main navi 9 grid open -->
                    
                    <div class="col-xl-10 col-lg-9 bg-dark fixed-top py-2 top-navbar">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <div class="text-align text-uppercase mb-0 text-white h3">Coupons</div>
                            </div>
                            <div class="col-md-5">
                                <!-- <form action="">
                                    <div class="searchBox">
                                        <input type="text" class="searchInput" placeholder="Search">
                                        <button type="button" class="btn btn-light searchBtn">
                                            <i class="bi bi-search"></i>
                                        </button>
                                    </div>
                                </form> -->
                            </div>
                            <div class="col-md-3">
                                <ul class="navbar-nav">
                                  <!--   <li class="nav-item icon-parent">
                                        <a href="#" class="nav-link icon-bullet text-white">
                                            <i class="bi bi-house"></i>
                                        </a>
                                    </li>
                                    <li class="nav-item icon-parent">
                                        <a href="#" class="nav-link icon-bullet text-white">
                                            <i class="bi bi-bell"></i>
                                        </a>
                                    </li> -->
                                    <li class="nav-item icon-parent ml-md-auto">
                                        <a href="/" class="nav-link icon-bullet text-warning">
                                            <i class="bi bi-box-arrow-up-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- navibar close -->
    
    <!-- main contents -->
    <section>
        <div class="container-fluid">
            <div class="row">    
            	<div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="dashMain"> <!-- 추후CSS작업 시 바뀔이름 -->
            		<div class="row" style="margin-top: 5rem">
						<div class="col-12 h3_1 px-5" style="text-align:left"> <img src="/images/minus.png"> Register Coupon </div>
                		<div class="col-12 body2 colortext_gray600 px-5" >  : 쿠폰을 등록 할 수 있는 페이지 입니다. </div>
                	</div>    
					<div class="row" style="margin-top: 1rem" id="roundboxParent">
                		<div class="col " style="align-item :center" id="roundbox">
                			<div class="row pt-2 m-3 mb-4">
								<div class="h3_2">Make Coupon</div>
							</div>
							<div class="row">	
								<div class="col">
	
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">발급 매수</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">발급 매수</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">발급 매수</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">발급 매수</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">발급 매수</div>
									</div>
									<div class="row" style="text-align:center">
										<div class="col-12 p-0" style="text-align:center">
											<input type="text" name="number" id="cp_number" placeholder="발행매수 최대:99매" maxlength="2"
											oninput="this.value = this.value.replace(/[^\d]/g, '').replace(/(\..*)\./g, '$1');" >
										</div>
									</div>
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">할인 금액</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">할인 금액</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">할인 금액</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">할인 금액</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">할인 금액</div>
									</div>
										<div class="col-12 p-0" style="text-align:center">
											<input type="text"  placeholder="할인 금액 최대금액:9999" name="dc" id="cp_dc" maxlength="4">
										</div>
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">종류</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">종류</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">종류</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">종류</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">종류</div>
									</div>
										<div class="col-12 p-0" style="text-align:center">
											<input type="text" placeholder="쿠폰종류 최대:15자" name="category" id="cp_category" maxlength="15">
										</div>
									</div>

									<div class="row pt-5 pb-4" style="text-align:center">
										<div class="col p-0">
											<a href="/admin/adminCoupon">
												<input class="btn1" type="button" id="return" value="초기화"></a> 
												<input class="btn2_1" type="button" id="make" value="발행">
										</div>
									</div>
                				</div>
                				<div class="row mt-5">
			           				<div class="col-12 m-auto" style="border-bottom : 0.3rem solid #161C24; width:85%;"></div>
			           			</div>
            			
								<div class="row pt-5 m-3 mb-4">
									<div class="h3_2">CouponList</div>
								</div>
								<div class="row pt-3 m-3 mb-4">	
									<div class="col-1 col-xl-1 d-none d-xl-block h3" style="border-right : 0.125rem solid #DFE3E8">No</div>
	            					<div class="col-4 d-none d-lg-block col-lg-4 col-xl-3 h3" style="border-right : 0.125rem solid #DFE3E8">Email</div>
	            					<div class="col-4 col-lg-4 d-lg-none h3_4" style="border-right : 0.125rem solid #DFE3E8; padding: 0px; text-align :center;">Email</div>
				            		<div class="col-4 col-lg-2 d-none d-lg-block h3" style="border-right : 0.125rem solid #DFE3E8">Serial </div>
				            		<div class="col-4 d-lg-none h3_4" style="border-right : 0.125rem solid #DFE3E8; padding: 0px; text-align :center;">Serial </div>
				            		<div class="col-2 d-none d-lg-block h3" style="border-right : 0.125rem solid #DFE3E8">할인금</div>
				            		<div class="col-2 d-none d-lg-block h3" style="border-right : 0.125rem solid #DFE3E8">종류</div>
				            		<div class="col-2 d-none d-lg-block h3">사용여부</div>
				            		<div class="col-4 d-lg-none h3_4" style="padding:0px; text-align :center;">사용여부</div>
				            		<div class="col-12 px-3">
				            			<div class="card2"></div>
				            		</div>        		
	          						<div class="col-12 pt-2 p-3">
	                            		<div class="">
											<hr>
	                            			<c:forEach var="i" items="${list}">
	                            			<div class="row">
		                            			<div class="col-1 col-xl-1 d-none d-xl-block px-4 body2">${i.key }</div>
		                            			<div class="col-4 d-none d-lg-block col-lg-4 col-xl-3 px-4 body2">${i.email }</div>
		                            			<div class="col-4 col-lg-4 d-lg-none px-4 body2_1 ellipsis">${i.email }</div>
					                        	<div class="col-4 col-lg-2 d-none d-lg-block px-4 body2" >${i.serial }</div>
					                        	<div class="col-4 d-lg-none px-4 body2_1" >${i.serial }</div>
					                        	<div class="col-2 d-none d-lg-block px-4 body2" >${i.dc }</div>
				                            	<div class="col-2 d-none d-lg-block px-4 body2 ellipsis" >${i.category }</div>
				                            	<div class="col-2 d-none d-lg-block px-4 body2">${i.used }</div>
				                            	<div class="col-4 d-lg-none px-4 body2_1">${i.used }</div>
				                            </div>
			                            	<hr>
		                            		</c:forEach>
	                            		</div>
	                            	</div>	
				                    <div class="col-12 p-3 colortext_gray200" style="text-align:center">
				                    	${navi}
				                    </div>
	            				</div>
			              	</div>
            			</div>      
            		</div>
            	</div>
            </div>
    </section>
    
    <!-- main contents close-->
    
    <!-- footer open -->
    <section>
		<div class="container-fluid">
			<div class="row ml-auto" id="footerbox" style="margin-top: 8rem;">
	            <div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="footMain1">
	                <div class="row ml-auto">
	                    <div class="col-12 h3 " style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
	                    <div class="col-12 body2 " style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
	                    <div class="col-12 body2 " style = "color: #637381; margin-bottom: 3.75rem;">3호선 경복궁역 지하 1층 | contact@palet.com</div>
	
	                </div>
	            </div>
	        </div>
		</div>
	</section>
	
	<!-- footer close -->	
	
<script>

let cnt =0;
$(".navbar-toggler").on("click",function(){
   cnt ++;
   if(cnt>1){
   $(".navbar-collapse").toggle();
   }
})


$("#make").on("click",function(){
	$.ajax({
		url:"/coupon/make",
		data:{number:$("#cp_number").val(),
		dc:$("#cp_dc").val(),
		category:$("#cp_category").val()}
	}).done(function(resp){
		alert("쿠폰 "+resp+"매가 발행되었습니다.");
	})
})
</script>	
</body>
</html>