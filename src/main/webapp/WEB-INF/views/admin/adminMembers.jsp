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
	<div class="navbar navbar-expand-md navbar-light"> 
        <button class="navbar-toggler"  data-bs-toggle="collapse" data-bs-target="#sidebar" >
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
                            <a href="/member/mypage" class="text-black body1 py-2">ADMIN</a>
                        </div>
                        <!-- 하위 메뉴 구성 -->
                        <ul class="navbar-nav flex-column mt-4">
                            <li class="nav-item">
                                <a href="/admin/adminMain" class="nav-link text-black p-3 mb-2 sidebar-link"> <!-- 선택된 효과 -->
                                    <i class="bi bi-palette text-black "></i> Dashboard
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/adminMembers?cpage=1" class="nav-link text-black p-3 mb-2 current">
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
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-columns-gap text-black fa-lg mr-3"></i> Class
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-cash-coin text-black fa-lg mr-3"></i> Payment
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-wrench-adjustable text-black fa-lg mr-3"></i> Settings
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link text-black p-3 mb-2 sidebar-link">
                                    <i class="bi bi-folder text-black fa-lg mr-3"></i> Documentation
                                </a>
                            </li>
                        
                        </ul>
                        
                    </div>
                    <!-- sidebar close -->
                    
                    <!-- main navi 9 grid open -->
                    
                    <div class="col-xl-10 col-lg-9 top-navbar color_gray900 fixed-top py-2 ms-auto">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <div class="text-align text-uppercase mb-0 text-white h3">Members Analytics</div>
                            </div>
                            <div class="col-md-5">
                                <form action="">
                                    <div class="searchBox">
                                        <input type="text" class="searchInput" placeholder="Search">
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
    
    <!-- main contents open-->
    <section>
        <div class="container-fluid">
            <div class="row">    
            	<div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="dashMain"> <!-- 추후CSS작업 시 바뀔이름 -->
            		<div class="row" style="margin-top: 5rem">
                		<div class="col-12 h3_1 px-5" style="text-align:left"> <img src="/images/minus.png"> Member List </div>
                		<div class="col-12 body2 colortext_gray600 px-5" >  : 가입된 회원들의 정보를 확인 할 수 있는 페이지 입니다. </div>
                	</div>   
            		<div class="row" style="margin-top: 1rem" id="roundboxParent">
                		<div class="col-12" id="roundbox">
                			<div class="row pt-4 p-4" style="text-align:right">
 								<div class="col-12 d-none d-md-block" id="checkbtns" style="text-align:right">
 									<!-- 추후 join을 통해 받아오는 값으로 꾸려질 예정 (전시이름) 일괄수정 -->
 									<select class="body2 select0 color_gray100 " name="grade" id="grade">
										<option value='White'>White</option>	
										<option value='Gray'>Gray </option>
										<option value='Black'>Black</option>
										<option value='Admin'>Admin</option>
									</select>
                            		<button class="btn0_1 color_yellow2 " onclick="checkboxUpdate()">등급 수정</button>
                            		<button class="btn0_1 color_red2 " onclick="checkboxDelete()">삭제</button>
                            	</div>
                            	<div class="col-12 d-md-none" id="checkbtns2" style="text-align:right">
                            		<select class="body2 select0 color_gray100 " name="grade" id="grade2">
										<option value='White'>White</option>	
										<option value='Gray'>Gray </option>
										<option value='Black'>Black</option>
										<option value='Admin'>Admin</option>
									</select>
                            		<button class="btn0_1 color_yellow2" onclick="checkboxUpdate2()">등급 수정</button>
                            		<button class="btn0_1 color_red2" onclick="checkboxDelete2()">삭제</button>
 								</div>
 							</div>
                		
			            	<div class="row pt-4 m-3 mb-4">
			            		<div class="col-6 col-lg-5 d-none d-lg-block h3 " style="border-right : 0.125rem solid #DFE3E8"><input type="checkbox" id="checkAll">ID(E-mail).</div>
			            		<div class="col-6 col-lg-5 d-lg-none h3_4" style="border-right : 0.125rem solid #DFE3E8"><input type="checkbox" id="checkAll2">ID(E-mail).</div>
			            		<div class="col-3 d-none d-lg-block h3 " style="border-right : 0.125rem solid #DFE3E8">Name.</div>
			            		<div class="col-3 col-lg-2 d-none d-lg-block h3 " style="border-right : 0.125rem solid #DFE3E8">Grade.</div>
			            		<div class="col-3 col-lg-2 d-lg-none h3_4 " style="border-right : 0.125rem solid #DFE3E8; padding-left: 0.25rem; padding-right: 0px;">Grade.</div>
			           			<div class="col-3 col-lg-2 d-none d-lg-block h3 ">Points.</div>
			           			<div class="col-3 col-lg-2 d-lg-none h3_4 " style="padding-left: 0.25rem; padding-right: 0px;">Points.</div>
			           			<div class="col-12 px-3" >
			           				<div class="card2"></div>
			           			</div>
			                    <div class="col-12 p-3">
			                    	<div class="">
			                        <hr>
			                        <c:forEach var="i" items="${list}">
			                        <div class="row" id="row1">
			                        	<div class="col-6 col-lg-5 d-none d-lg-block px-4 body2 ellipsis" ><input type="checkbox" name="checkbox" value="${i.email }"><a href="/admin/adminMemberDetail?email=${i.email}" class="colortext_gray900"><b>${i.email }</b></a> </div>
			                        	<div class="col-6 col-lg-5 d-lg-none px-4 body2_1 ellipsis" ><input type="checkbox" name="checkbox2" value="${i.email }"><a href="/admin/adminMemberDetail?email=${i.email}" class="colortext_gray900"><b>${i.email }</b></a> </div> 
			                        	<div class="col-3 d-none d-lg-block px-5 body2" >${i.name } </div>
			                        	<div class="col-3 col-lg-2 d-none d-lg-block body2" style="text-align : center" >${i.grade } </div>
			                        	<div class="col-3 col-lg-2 d-lg-none body2_1" style="text-align : center" >${i.grade } </div>
		                            	<div class="col-3 col-lg-2 d-none d-lg-block body2" style="text-align : center" >${i.point } </div>
		                            	<div class="col-3 col-lg-2 d-lg-none body2_1" style="text-align : center" >${i.point } </div>
		                            </div>
		                            <hr>			                            	
		                            </c:forEach>
			                        </div>	
			                    </div>    
			                    <div class="col-12 p-3 body1 colortext_gray400" style="text-align:center">
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
$("#checkAll").change(function (){
	let checked = $(this).prop('checked');
	$('input[name="checkbox"]').prop('checked', checked);
});

$("#checkAll2").change(function (){
	let checked = $(this).prop('checked');
	$('input[name="checkbox2"]').prop('checked', checked);
});

$('input[name="checkbox"]').change(function () {

	let selectAll = ($('input[name="checkbox"]').length == $('input[name="checkbox"]:checked').length);

	$("#checkAll").prop('checked', selectAll);

});	

$('input[name="checkbox2"]').change(function () {

	let selectAll = ($('input[name="checkbox2"]').length == $('input[name="checkbox2"]:checked').length);

	$("#checkAll2").prop('checked', selectAll);

});	

function checkboxDelete(){
	let checkboxArr = [];
	$('input[name="checkbox"]:checked').each(function() {
		checkboxArr.push($(this).val()); //Array에 push로 체크된 것들만 넣기
		console.log(checkboxArr)
	})
	
	$.ajax({
		type : "POST",
		url : "/admin/memberCheckDelete",
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
	let grade = $("#grade").val();
	$('input[name="checkbox"]:checked').each(function() {
		checkboxArr2.push($(this).val()); //Array에 push로 체크된 것들만 넣기
		console.log(checkboxArr2)
	})
	
	$.ajax({
		type : "POST",
		url : "/admin/memberCheckUpdate",
		data : {
			checkboxArr2 : checkboxArr2,
			grade : grade
		},
		success : function (result){
			console.log(result);
			alert("update ok!");
			location.reload();
		}
	});
}

function checkboxDelete2(){
	let checkboxArr = [];
	$('input[name="checkbox2"]:checked').each(function() {
		checkboxArr.push($(this).val()); //Array에 push로 체크된 것들만 넣기
		console.log(checkboxArr)
	})
	
	$.ajax({
		type : "POST",
		url : "/admin/memberCheckDelete",
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

function checkboxUpdate2(){
	let checkboxArr2 = [];
	let grade = $("#grade2").val();
	$('input[name="checkbox2"]:checked').each(function() {
		checkboxArr2.push($(this).val()); //Array에 push로 체크된 것들만 넣기
		console.log(checkboxArr2)
	})
	
	$.ajax({
		type : "POST",
		url : "/admin/memberCheckUpdate",
		data : {
			checkboxArr2 : checkboxArr2,
			grade : grade
		},
		success : function (result){
			console.log(result);
			alert("update ok!");
			location.reload();
		}
	});
}

</script>                  	      
</body>
</html>