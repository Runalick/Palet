<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
                    <div class="col-xl-2 col-lg-3 sidebar ml-auto fixed-top">
                        <!-- 최상단 로고 위치 텍스트/이미지 형태 -->
                        <a href="/" class="navbar-brand text-black text-center d-block mx-auto py-3 mb-4 bottom-border" > PALET </a> 
                        <!-- admin 계정정보 나타내는 모습 -->
                        <div class="bottom-border pb-3 text-center"> <!-- 중앙정렬 시킴-->
                            <img src="/images/sample.png" alt="" width="50" class="rounded-circle mr-3" > <!-- 이미지 라운드효과-->
                            <a href="#" class="text-black ">ADMIN Accounts</a>
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
                                    <i class="bi bi-people text-black fa-lg mr-3"></i> Users
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminExhibitions" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-ticket-perforated text-black fa-lg mr-3"></i> Exhibitions
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminGoods" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-basket text-black fa-lg mr-3"></i> Goods
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-graph-up-arrow text-black fa-lg mr-3"></i> Analytics
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-bar-chart-line text-black fa-lg mr-3"></i> Totals
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-wrench text-black fa-lg mr-3"></i> Settings
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-folder text-black fa-lg mr-3"></i> Documentation
                                </a>
                            </li>
                        </ul>
                        
                    </div>
                    <!-- sidebar end -->

                    <!-- main navi 9 grid open -->
                    
                    <div class="col-xl-10 col-lg-9 bg-dark fixed-top py-2 top-navbar">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <h4 class="text-align text-uppercase mb-0 text-white">Dashboard</h4>
                            </div>
                            <div class="col-md-5">
                                <form action="">
                                    <div class="searchBox">
                                        <input type="text" class="searchInput" placeholder="Search..">
                                        <button type="button" class="btn btn-light searchBtn">
                                            <i class="bi bi-search"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-3">
                                <ul class="navbar-nav">
                                    <li class="nav-item icon-parent">
                                        <a href="#" class="nav-link icon-bullet text-white">
                                            <i class="bi bi-house"></i>
                                        </a>
                                    </li>
                                    <li class="nav-item icon-parent">
                                        <a href="#" class="nav-link icon-bullet text-white">
                                            <i class="bi bi-bell"></i>
                                        </a>
                                    </li>
                                    <li class="nav-item icon-parent ml-md-auto">
                                        <a href="#" class="nav-link icon-bullet text-warning">
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

    <!-- card section open-->
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="dashMain">
                    <div class="row pt-md-5 mt-md-3 mb-5">
                        <div class="col-xl-3 col-sm-6 p-2">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between">
                                        <!-- <i class="bi bi-gift-fill text-warning cardIcon" ></i> -->
                                        <img src="/images/sample.png" class="cardImage">
                                        <div class="text-right text-secondary">
                                            <h5>Members</h5>
                                            <h3>37</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer text-secondary">
                                    <i class="bi bi-arrow-repeat mr-3"></i>
                                    <span>Update Now</span>
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
                                            <h5>Vistor</h5>
                                            <h3>324</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer text-secondary">
                                    <i class="bi bi-arrow-repeat mr-3"></i>
                                    <span>Update Now</span>
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
                                            <h5>Best Seller</h5>
                                            <h3>00전시</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer text-secondary">
                                    <i class="bi bi-arrow-repeat mr-3"></i>
                                    <span>Update Now</span>
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
                                            <h5>어쩌고저쩌고</h5>
                                            <h3>$1000</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer text-secondary">
                                    <i class="bi bi-arrow-repeat mr-3"></i>
                                    <span>Update Now</span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- card section close-->
            
            <!--  graph section open -->
            <div class="row" id="graphMain">
            	<div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="graphBody">
            		<div class="col-xl-6 col-lg-5">
		            	<div class="card shadow mb-4  ">
			                <div class="card-header py-3">
			                	<h6 class="m-0 font-weight-bold text-warning">Area Chart</h6>
			                </div>
			                <div class="card-body">
			            		<div class="" >
									<canvas class="my-4 w-100 ml-auto" id="myChart" ></canvas>
			           			</div>
			           			<hr>
			           			<div class="card-footer text-secondary">
	                            <i class="bi bi-arrow-repeat mr-3"></i>
	                            <span>updated 3 minutes ago</span>
	                            </div>
			           			
			           			
			           		</div>
			           	</div>
			        </div>

		           	<div class="col-xl-4 col-lg-5">
                    	<div class="card shadow mb-4">
                        	<div class="card-header py-3">
                            	<h6 class="m-0 font-weight-bold text-warning">Donut Chart</h6>
                            </div>
                                <!-- Card Body -->
                            <div class="card-body">
                            	<div class="chart-pie pt-4">
                            		<canvas id="myPieChart"></canvas>
                            	</div>
                            	<hr>
                            	<div class="card-footer text-secondary">
	                        		<i class="bi bi-arrow-repeat mr-3"></i>
	                        		<span>update Now</span>
	                        	</div>
                            </div>
                      	</div>
                    </div>
                    
                    <div class="col-6">
			           	<div class="card shadow mb-4 ">
			                <div class="card-header py-3">
			                	<h6 class="m-0 font-weight-bold text-warning">bar Chart</h6>
			                </div>
			                <div class="card-body">
			            		<div class="" >
									<canvas class="my-4 w-100 ml-auto" id="myBarChart" ></canvas>
			           			</div>
			           			<hr>
			           			<div class="card-footer text-secondary">
	                            	<i class="bi bi-arrow-repeat mr-3"></i>
	                            	<span>update Now</span>
	                            </div>
			           		</div>
			           	</div>	
		           	</div>
                    
            	</div>
            </div>
            <!-- graph section close -->
            
            
            
            </div>
    </section>
<!-- </div>     -->
    
    
<!-- 	<script src="/js/bootstrap.bundle.min.js"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" ></script>
	<script src="/js/dashboard.js"></script>
<!-- 	<script src="/js/chart-bar-demo.js"></script> -->
	<script src="/js/chart-pie-demo.js"></script>

	
</body>
</html>