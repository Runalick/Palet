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
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
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
<body style="overflow-x:hidden;">
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
                        <a href="/" class="navbar-brand text-black text-center d-block mx-auto py-3 mb-4 bottom-border" > <img src="/images/Logo.svg"> </a> 
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
                                <a href="/admin/adminPayment?cpage=1" class="nav-link text-black p-3 mb-2 current">
                                    <i class="bi bi-cash-coin text-black fa-lg mr-3"></i> Payment
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminCoupon?cpage=1" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-ticket-perforated text-black fa-lg mr-3"></i> Coupons
                                </a>
                            </li>
                            <!-- <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-folder text-black fa-lg mr-3"></i> FNQ(QNA)
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-wrench-adjustable text-black fa-lg mr-3"></i> Settings
                                </a>
                            </li> -->

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
                                    <!-- <li class="nav-item icon-parent">
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
                		<div class="col-12 h3_1 px-5" style="text-align:left"> <img src="/images/minus.png"> Cancel Log </div>
                		<div class="col-12 body2 colortext_gray600 px-5" >  : 결제 취소 정보를 확인 할 수 있는 페이지 입니다. </div>
                	</div>
                	<div class="row pt-3 px-5">
						<div class="col-12 mr-auto" id="paymentBtns">
							<button class="btn0" id="paymentList">결제 현황</button>
							<button class="btn0 color_gray900 colortext_gray100" id="cancelList">취소 현황</button>
						</div>
                	</div>                	   
                	<div class="row" style="margin-top: 1rem" id="roundboxParent">
                		<div class="col-12" id="roundbox">  
                	    	<div class="row pt-4 p-4" style="text-align:right">
 								<div id="checkbtns">
                            		<button class="btn0_1 color_red2 d-none d-lg-block" onclick="checkboxCancel()">환불 처리</button>
                            		<button class="btn0_1 color_red2 d-lg-none" onclick="checkboxCancel2()">환불 처리</button>
 								</div>
 							</div>
                	    	
                	    	<div class="row pt-3 m-3 mb-4">	
            					<div class="col-4 d-none d-lg-block h3 " style="border-right : 0.125rem solid #DFE3E8"> <input type="checkbox" id="checkAll">UID  </div>
            					<div class="col-8 d-lg-none h3_4 p-0" style="padding-right: 0px; border-right : 0.125rem solid #DFE3E8"> <input type="checkbox" id="checkAll2">UID  </div>
			            		<div class="col-4 d-none d-lg-block h3 " style="border-right : 0.125rem solid #DFE3E8">Comment</div>
			            		<!-- <div class="col-4 d-lg-none p-0 h3_4 " style="border-right : 0.125rem solid #DFE3E8">Comment</div> -->
			            		<div class="col-2 d-none d-xl-block h3 " style="border-right : 0.125rem solid #DFE3E8">Category</div>
			            		<div class="col-4 col-xl-2 d-none d-lg-block h3 " >Cancel_Date </div>
			            		<div class="col-4 col-xl-2 d-lg-none h3_4" >Date </div>
			            		
			            		<div class="col-12 px-3">
			            			<div class="card2"></div>
			            		</div>        		
          						<div class="col-12 pt-2 p-3">
                            		<div class="">
										<hr>
                            			<c:forEach var="i" items="${list}">
                            			<div class="row" id="row1">
	                            			<div class="col-4 px-4 d-none d-lg-block body2 ellipsis"> <input type="checkbox" name="checkbox" value="${i.booknumber}"> <a href="/admin/adminPaymentDetail?category=${i.category }&merchant_uid=${i.booknumber}" class="colortext_gray900"> <b>${i.booknumber}</b> </a></div>
	                            			<div class="col-8 d-lg-none body2_1 ellipsis"> <input type="checkbox" name="checkbox2" value="${i.booknumber}"> <a href="/admin/adminPaymentDetail?category=${i.category }&merchant_uid=${i.booknumber}" class="colortext_gray900"> <b>${i.booknumber}</b> </a></div>
	                            			<input type="hidden" value="${i.booknumber }">
	                            			<div class="col-4 px-4 d-none d-lg-block body2 ellipsis1">${i.content } </div>
	                            			<%-- <div class="col-4 d-lg-none body2_1 body2 ellipsis1">${i.content } </div> --%>
				                        	<div class="col-2 d-none d-xl-block px-4 body2 ellipsis" >${i.category }</div>
				                        	<div class="col-4 col-xl-2 d-none d-lg-block px-4 body2 ellipsis" >${i.cancel_date} </div>
				                        	<div class="col-4 col-xl-2 d-lg-none body2_1 ellipsis" >${i.cancel_date} </div>
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

    $("#checkAll").change(function (){
    	let checked = $(this).prop('checked');
    	$('input[name="checkbox"]').prop('checked', checked);
    });
    
    $("#checkAll2").change(function (){
    	let checked = $(this).prop('checked');
    	$('input[name="checkbox2"]').prop('checked', checked);
    });
    
    $("#paymentList").on("click", ()=>{
 		location.href = "/admin/adminPayment?cpage=1";
 	})
 	
 	$("#cancelList").on("click", ()=>{
 		location.href = "/admin/adminCancelPayment?cpage=1";
 	})
 	
 	$('input[name="checkbox"]').change(function () {

    	let selectAll = ($('input[name="checkbox"]').length == $('input[name="checkbox"]:checked').length);

    	$("#checkAll").prop('checked', selectAll);

    });	
    
    $('input[name="checkbox2"]').change(function () {

    	let selectAll = ($('input[name="checkbox2"]').length == $('input[name="checkbox2"]:checked').length);

    	$("#checkAll2").prop('checked', selectAll);

    });	
    
    function checkboxCancel(){
    	let checkboxArr = [];
    	$('input[name="checkbox"]:checked').each(function() {
    		checkboxArr.push($(this).val()); //Array에 push로 체크된 것들만 넣기
//     		console.log(checkboxArr)
    	})
    	
    	$.ajax({
    		type : "POST",
    		url : "/admin/cancelPaymentCheckDelete",
    		data : {
    			checkboxArr : checkboxArr
    			
    		},
    		success : function (result){
    			console.log(result);
    			alert("delete ok!");
    			location.reload();
    		}
    	});
    }
    
    function checkboxCancel2(){
    	let checkboxArr = [];
    	$('input[name="checkbox2"]:checked').each(function() {
    		checkboxArr.push($(this).val()); //Array에 push로 체크된 것들만 넣기
//     		console.log(checkboxArr)
    	})
    	
    	$.ajax({
    		type : "POST",
    		url : "/admin/cancelPaymentCheckDelete",
    		data : {
    			checkboxArr : checkboxArr
    			
    		},
    		success : function (result){
//     			console.log(result);
    			alert("delete ok!");
    			location.reload();
    		}
    	});
    }
 	
 </script>       
</body>
</html>