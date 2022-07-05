<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<div class="navbar navbar-expand-md navbar-light"> 
        <button class="navbar-toggler ml-auto mb-2 bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#sidebar" aria-expanded="false">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="sidebar">
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
                                <a href="/admin/adminMain" class="nav-link text-black p-3 mb-2 sidebar-link"> <!-- 선택된 효과 -->
                                    <i class="bi bi-palette text-black "></i> Dashboard
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminMembers?cpage=1" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-people text-black fa-lg mr-3"></i> Users
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminExhibitions" class="nav-link text-black p-3 mb-2 current">
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
                    
                    <div class="col-xl-10 col-lg-9 top-navbar bg-dark fixed-top py-2">
                        <div class="row">
                            <div class="col-md-4">
                                <h4 class="text-align text-uppercase mb-0 text-white">Exhibitions</h4>
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
                                    <li class="nav-item icon-parent m-auto">
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
    </div>
    <!-- navibar close -->
    <!-- main contents -->
    <section>
        <div class="container-fluid">
            <div class="row">    
            	<div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="dashMain">  <!-- 추후CSS작업 시 바뀔이름 -->
            		<div class="row pt-md-5 mt-md-3 mb-5">
                        <div class="col-xl-9 col-sm-6 p-2">
                            <div class="row w-100 m-0">
								<div class="col-12" id="exhibitionBtns">
									<button id="exhibitionAdded">전시 등록</button>
									<button id="exhibitionList">전시회 목록</button>
								</div>
							</div>
							<hr>
                            <div class="cc">
                            	<input type="checkbox" id="checkAll">checkAll
                            	<input type="button" value="삭제" onclick="checkboxDelete()">
								<select name="e_period" id="e_period">
									<option value='F'>예정전시 </option>
									<option value='N'>현재전시 </option>
									<option value='P'>지난전시 </option>
								</select>
                            	<input type="button" value="카테고리수정" onclick="checkboxUpdate()">
                            	<br>
                            	전시번호 : 전시명 : 기간 : 가격 : 전시 현황
                            	<hr>
                            	<c:forEach var="i" items="${list}">
                            		<input type="checkbox" name="checkbox" value="${i.e_num}">
                            		${i.e_num } 
                            		${i.e_name } 
                            		${i.start_date } ~ ${i.end_date } 
                            		${i.e_price } 
                            		 
                            		<c:choose> 
                            			<c:when test="${i.e_period eq 'N'}"> 현재전시</c:when> 
                            			<c:when test="${i.e_period eq 'F'}"> 예정전시</c:when>
                            			<c:when test="${i.e_period eq 'P'}"> 지난전시</c:when>
                            		</c:choose>
                            		<br>
                            		
                            	</c:forEach>
                            	
                            	${navi}
            				</div>
            			</div>
            		</div>
            	</div>
            </div>
        </div>
    </section>
    
    <script>
	
    $("#checkAll").change(function (){
    	let checked = $(this).prop('checked');
    	$('input[name="checkbox"]').prop('checked', checked);
    });
    
    $('input[name="checkbox"]').change(function () {

    	let selectAll = ($('input[name="checkbox"]').length == $('input[name="checkbox"]:checked').length);

    	$("#checkAll").prop('checked', selectAll);

    });	
    
    function checkboxDelete(){
    	let checkboxArr = [];
    	$('input[name="checkbox"]:checked').each(function() {
    		checkboxArr.push($(this).val()); //Array에 push로 체크된 것들만 넣기
    		console.log(checkboxArr)
    	})
    	
    	$.ajax({
    		type : "POST",
    		url : "/admin/exhibitionCheckDelete",
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
    
    function checkboxUpdate(){
    	let checkboxArr2 = [];
    	let e_period = $("#e_period").val();
    	$('input[name="checkbox"]:checked').each(function() {
    		checkboxArr2.push($(this).val()); //Array에 push로 체크된 것들만 넣기
    		console.log(checkboxArr2)
    	})
    	
    	$.ajax({
    		type : "POST",
    		url : "/admin/exhibitionCheckUpdate",
    		data : {
    			checkboxArr2 : checkboxArr2,
    			e_period : e_period
    		},
    		success : function (result){
    			console.log(result);
    			alert("update ok!");
    			location.reload();
    		}
    	});
    }
    
    
    
 	$("#exhibitionAdded").on("click", ()=>{
 		location.href = "/admin/adminExhibitions";
 	})
 	
 	$("#exhibitionList").on("click", ()=>{
 		location.href = "/admin/adminExhibitionList?cpage=1";
 	})
 	
    
    </script>
</body>
</html>