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
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" ></script> -->
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
    <nav class="navbar navbar-expand-md navbar-light"> 
    	<div class="container" id="navparent" style = "overflow: visible;">
        	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#sidebar">        		
            	<span class="navbar-toggler-icon"></span>
        	</button>

        <div class="collapse navbar-collapse justify-content-end" id="sidebar">
            <div class="container-fluid">
                <div class="row">
                    <!-- sidebar 3grid open -->                 
                    <!-- sidebar class name for css, fixed-->
                    <div class="col-xl-2 col-lg-3 col-md-3 col-12 sidebar ml-auto fixed-top">
                        <!-- 최상단 로고 위치 텍스트/이미지 형태 -->
                        <a href="/" class="navbar-brand text-center d-block mx-auto py-3 mb-4 bottom-border" > <img src="/images/Logo.svg"> </a> 
                        <!-- admin 계정정보 나타내는 모습 -->
                        <div class="bottom-border pb-3 text-center"> <!-- 중앙정렬 시킴-->
                            <img src="/images/sample.png" alt="" width="50" class="rounded-circle mr-3" > <!-- 이미지 라운드효과-->
                            <a href="/member/mypage" class="text-black body1 py-2">ADMIN</a>
                        </div>
                        <!-- 하위 메뉴 구성 -->
                        <ul class="navbar-nav flex-column mt-4">
                            <li class="nav-item">
                                <a href="/admin/adminMain" class="nav-link text-black p-3 mb-2 current"> <!-- 선택된 효과 -->
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
                                <a href="/admin/adminCoupon?cpage=1" class="nav-link text-black p-3 mb-2 sidebar-link">
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
                    <!-- sidebar close -->

                    <!-- main navi 9 grid open -->
                    
                    <div class="col-xl-10 col-lg-9 color_gray900 fixed-top py-2 top-navbar">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <div class="text-align text-uppercase mb-0 text-white h3">Dashboard</div>
                            </div>
                            <div class="col-md-5">
                               <!--  <form action="">
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
        </div>
    </nav>

    <!-- navibar close -->

    <!-- card section open-->
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="dashMain">
                	<div class="row" style="margin-top: 5rem">
                		<div class="col-12 h3_1 px-5" style="text-align:left"> <img src="/images/minus.png"> Site Condition </div>
                		<div class="col-12 body2 colortext_gray600 px-5" >  : 주요 현황을 확인 할 수 있는 카드섹션 입니다. </div>
                	</div>                	
                	<div class="row" id="roundboxParent">
                		<div class="col-12" id="roundbox">
                    <div class="row pt-md-1 pb-md-1 mt-md-1 mb-md-1" >
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                       <!--   <i class="bi bi-gift-fill text-warning cardIcon" ></i>  -->
                                       <img src="/images/sample.png" class="cardImage">
                                        <div class="text-right text-secondary">
                                            <div class="h3" style="text-align:right">BestExhibition</div>
                                            <div class="body1 ellipsis2" style="text-align:right">${ExhibitionBestSeller.e_name}</div>
                                            <div class="h2" style="text-align:right">${ExhibitionBestSeller.sales_count}</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <a href="/admin/adminMain" class="body2">
                                    <i class="bi bi-arrow-repeat mr-3"></i>
                                    <span>Update Now</span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <!-- <i class="bi bi-gift-fill text-warning cardIcon" ></i> -->
                                        <img src="/images/sample.png" class="cardImage">
                                        <div class="text-right text-secondary">
                                            <div class="h3" style="text-align:right">BestSeller</div>
                                            <div class="body1 ellipsis2" style="text-align:right">${GoodsBestSeller.g_name}</div>
                                            <div class="h2" style="text-align:right">${GoodsBestSeller.sales_count}</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <a href="/admin/adminMain" class="body2">
                                    <i class="bi bi-arrow-repeat mr-3"></i>
                                    <span>Update Now</span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <!-- <i class="bi bi-gift-fill text-warning cardIcon" ></i> -->
                                        <img src="/images/sample.png" class="cardImage">
                                        <div class="text-right text-secondary">
                                            <div class="h3" style="text-align:right">BestProgram</div>
                                            <div class="body1 ellipsis2" style="text-align:right">${ProgramBestSeller.p_name }</div>
                                            <div class="h2" style="text-align:right">${ProgramBestSeller.sales_count }</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <a href="/admin/adminMain" class="body2">
                                    <i class="bi bi-arrow-repeat mr-3"></i>
                                    <span>Update Now</span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <!-- <i class="bi bi-gift-fill text-warning cardIcon" ></i> -->
                                        <img src="/images/sample.png" class="cardImage">
                                        <div class="text-right text-secondary">
                                            <div class="h3" style="text-align:right">Total</div>
                                            <div class="body1 ellipsis2" style="text-align:right">Members</div>
                                            <div class="h2" style="text-align:right">${totalMembers}</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                	<a href="/admin/adminMain" class="body2">
                                    <i class="bi bi-arrow-repeat mr-3"></i>
                                    <span >Update Now</span></a>
                                </div>
                            </div>
                        </div>	
                    </div>
                    </div>
                    </div>
                </div>
            </div>
      	</div>
    
	</section>  
            <!-- card section close-->
            
            <!-- Graph section open-->
            
    <section>
        <div class="container-fluid">                	

            <!--  graph section open -->
            <div class="row">
            	<div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="graphMain">
            		<div class="row" style="margin-top: 2rem">
	                	<div class="col-12 h3_1 px-5" style="text-align:left"> <img src="/images/minus.png"> Graph Area </div>
	                	<div class="col-12 body2 colortext_gray600 px-5" >  : 주요 현황을 확인 할 수 있는 그래프 입니다. </div>
	            	</div>
	            	
	            	<div class="row" id="roundboxParent">
                		<div class="col-12" id="roundbox">
		                    <div class="row pt-md-1 pb-md-1 mt-md-1 mb-md-1" >
			            		<div class="col-xl-6 p-3">
					            	<div class="card shadow mb-1  ">
						                <div class="card-header py-3">
						                	<div class="m-0 h3">Sales Graph last week</div>
						                </div>
						                <div class="card-body">
						            		<div class="" >
												<canvas class="my-4 w-100 ml-auto" id="myChart" ></canvas>
						           			</div>
						           			<hr>
						           			<div class="card-footer">
						           			<a href="/admin/adminMain" class="body2">
					                            <i class="bi bi-arrow-repeat mr-3"></i>
					                            <span>Updated Now</span></a>
				                            </div>
						           		</div>
						           	</div>
						        </div>
			
					           	<div class="col-xl-6 p-3" >
			                    	<div class="card shadow mb-1">
			                        	<div class="card-header py-3">
			                            	<div class="m-0 h3">Sales Total Count</div>
			                            </div>
										<!-- Card Body -->
			                            <div class="card-body">
			                            	<div class="">
			                            		<canvas class="my-4 w-100 ml-auto" id="myChart2"></canvas>
			                            	</div>
			                            	<hr>
						           			<div class="card-footer">
						           			<a href="/admin/adminMain" class="body2">
					                            <i class="bi bi-arrow-repeat mr-3"></i>
					                            <span>Updated Now</span></a>
				                            </div>
			                            </div>
			                      	</div>
			                    </div>
		                    
		<!--                     <div class="col-6"> -->
		<!-- 			           	<div class="card shadow mb-4 "> -->
		<!-- 			                <div class="card-header py-3"> -->
		<!-- 			                	<h6 class="m-0 font-weight-bold text-warning">bar Chart</h6> -->
		<!-- 			                </div> -->
		<!-- 			                <div class="card-body"> -->
		<!-- 			            		<div class="" > -->
		<%-- 									<canvas class="my-4 w-100 ml-auto" id="myBarChart" ></canvas> --%>
		<!-- 			           			</div> -->
		<!-- 			           			<hr> -->
		<!-- 			           			<div class="card-footer text-secondary"> -->
		<!-- 	                            	<i class="bi bi-arrow-repeat mr-3"></i> -->
		<!-- 	                            	<span>update Now</span> -->
		<!-- 	                            </div> -->
		<!-- 			           		</div> -->
		<!-- 			           	</div>	 -->
		<!-- 		           	</div> -->		                    
		            		</div>
            			</div>
            		</div>
            	</div>
            </div>
            <!-- graph section close -->
			<c:forEach var="i" items="${weekSales }" varStatus="status">
				<input type="hidden" id="salessum${status.count}" value="${i.salessum }">		
				<input type="hidden" id="salesdate${status.count}" value="${i.salesdate }">
			</c:forEach>   
			<c:forEach var="i" items="${weekCount }" varStatus="status">
				<input type="hidden" id="countsum${status.count}" value="${i.salescount }">		
				<input type="hidden" id="countdate${status.count}" value="${i.salesdate }">
			</c:forEach>      
    	</div>
    </section>
    <!-- Graph section close-->
    
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



    
    
<!-- 	<script src="/js/bootstrap.bundle.min.js"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
<!-- 	<script src="/js/dashboard.js"></script> -->
<!-- 	<script src="/js/chart-bar-demo.js"></script> -->
<!-- 	<script src="/js/chart-pie-demo.js"></script> -->

	
<script>
// 	let result = '<c:out value="${weekSales}"/>';
// 	console.log(result);
	let arr1 = [];
	let arr2 = [];
	for (let i = 1; i < 8; i++){
		arr1.push($("#salessum"+i).val());
		arr2.push($("#salesdate"+i).val());
	}
	console.log(arr1);
	console.log(arr2);
	
	$(document).ready(function(){
		getGraph();
		getBarGraph();
	})	
	
	function getGraph(){
		let sumList = [];
		let dayList = [];
		for (let i = 7; i > 0; i--){
			sumList.push($("#salessum"+i).val());
			dayList.push($("#salesdate"+i).val());
		}
		console.log(sumList);
		console.log(dayList);
		
		new Chart(document.getElementById("myChart"), {
			type: 'line',
			data: {
				responsive : true,
				labels: dayList,
				datasets: [{
					data: sumList,
					label: "판매 금액 추이",
					borderColor: "#FFC107",
					fill : false,
					borderWidth : 5
					
				  }
// 				, {
// 					data:[282,350,411,502,635,809,947,1402,3700,5267],
// 					label: "Asia",
// 					borderColor: "#8e5ea2",
// 					fill : false
// 				  }, {
// 					data:[168,170,178,190,203,276,408,547,675,734],
// 					label: "Europe",
// 					borderColor: "#3cba9f",
// 					fill : false
// 				  }, {
// 					data:[40,20,10,16,24,38,74,167,508,784],
// 					label: "Latin America",
// 					borderColor: "#e8c3b9",
// 					fill : false
// 				  }, {
// 					data:[6,3,2,2,7,26,82,172,312,433],
// 					label: "North America",
// 					borderColor: "#c45850",
// 					fill : false
// 				  }
				]
			},
			option: {
				title: {
					display: true,
					text: 'Total Sales per Week'
				}
			}
		});	
		
		
	}
	
	function getBarGraph(){
		let cntList = [];
		let dayList = [];
		for (let i = 7; i > 0; i--){
			cntList.push($("#countsum"+i).val());
			dayList.push($("#countdate"+i).val());
		}
		console.log(cntList);
		console.log(dayList);
		
		new Chart(document.getElementById("myChart2"), {
			type: 'bar',
			data: {
				labels: dayList,
				datasets: [{
					data: cntList,
					label: "판매 갯수 추이",
					backgroundColor: "#B72136",

					fill : false
				  }
				]
			},
			option: {
				title: {
					display: true,
					text: 'Total SalesCount per Week'
				}
			}
		});	
		
		
	}
	
	let cnt =0;
	$(".navbar-toggler").on("click",function(){
	   cnt ++;
	   if(cnt>1){
	   $(".navbar-collapse").toggle();
	   }
	})
	
	
</script>
	
	
</body>
</html>