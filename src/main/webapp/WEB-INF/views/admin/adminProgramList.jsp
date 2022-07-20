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

 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script src="http://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/admin/admin.css">

<!-- DatePicker -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js"  -->
<!-- integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

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
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#sidebar" 
       			aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
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
                                <a href="#" class="nav-link text-black p-3 mb-2 current">
                                    <i class="bi bi-columns-gap text-black fa-lg mr-3"></i> Program
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
                    <!-- side bar end -->
                    
                    <!-- main navi 9 grid open -->
                    
                    <div class="col-xl-10 col-lg-9 top-navbar bg-dark fixed-top py-2">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <div class="text-align text-uppercase mb-0 text-white h3">Programs</div>
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
                                    <li class="nav-item icon-parent m-auto">
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
            	<div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="dashMain">  <!-- 추후CSS작업 시 바뀔이름 -->
            		<div class="row" style="margin-top: 5rem">
						<div class="col-12 h3_1 px-5" style="text-align:left"> <img src="/images/minus.png"> Programs List </div>
                		<div class="col-12 body2 colortext_gray600 px-5" >  : 프로그램 관련 정보를 확인 할 수 있는 페이지 입니다. </div>
                	</div>
                	<div class="row pt-3 px-5">
						<div class="col-12 mr-auto" id="programBtns">
							<button class="btn0 " id="programAdded">프로그램 등록</button>
							<button class="btn0 color_gray900 colortext_gray100" id="programList">프로그램 목록</button>
						</div>
                	</div>
                	<div class="row" style="margin-top: 1rem" id="roundboxParent">
                		<div class="col-12" id="roundbox">  
 							<div class="row pt-4 p-4" style="text-align:right">
 								<div id="checkbtns">
 									<select class="body2 select0 color_gray100" name="p_period" id="p_period">
										<option value='F'>예정 프로그램 </option>
										<option value='N'>현재 프로그램 </option>
										<option value='P'>지난 프로그램 </option>
									</select>
                            		<button class="btn0_1 color_yellow2" onclick="checkboxUpdate()">기간 수정</button>
                            		<button class="btn0_1 color_red2" onclick="checkboxDelete()">삭제</button>
 								</div>
 							</div>
            				<div class="row pt-3 m-3 mb-4">
            					
            					<div class="col-8 col-lg-4 h3" style="border-right : 0.125rem solid #DFE3E8"> <input type="checkbox" id="checkAll"> Programs Name  <a href="/admin/adminProgramList?value=p_name&cpage=1" ><i class="bi bi-arrow-down-square colortext_gray900"></i></a></div>
			            		<div class="col-4 d-none d-lg-block h3" style="border-right : 0.125rem solid #DFE3E8">Period  <a href="/admin/adminProgramList?value=p_date&cpage=1" ><i class="bi bi-arrow-down-square colortext_gray900"></i></a></div>
			            		<div class="col-2 d-none d-xl-block h3 " style="border-right : 0.125rem solid #DFE3E8">Price  <a href="/admin/adminProgramList?value=p_price&cpage=1" ><i class="bi bi-arrow-down-square colortext_gray900"></i></a></div>
			            		<div class="col-4 col-lg-2 h3 ">Condition  <a href="/admin/adminExhibitionList?value=p_period&cpage=1" ><i class="bi bi-arrow-down-square colortext_gray900"></i></a></div>
			            		<div class="col-12 px-3">
			            			<div class="card2"></div>
			            		</div>
                        		<div class="col-12 pt-2 px-3">
                            		<div class="">
										<hr>
                            			<c:forEach var="i" items="${list}">
                            			<div class="row">
	                            			<div class="col-8 col-lg-4 px-4 body2"> <input type="checkbox" name="checkbox" value="${i.p_num}"> <a href="/admin/adminProgramDetail?p_num=${i.p_num}" class="colortext_gray900"><b>${i.p_name }</b></a> </div> 
	                            			<div class="col-4 d-none d-lg-block px-4 body2">${i.start_date } <b> ~ </b> ${i.end_date } </div> 
	                            			<div class="col-2 d-none d-xl-block px-4 body2">${i.p_price } </div> 
		                            		<c:choose> 
		                            			<c:when test="${i.p_period eq 'N'}"> <div class="col-4 col-lg-2 px-4 body2">현재 프로그램</div></c:when> 
		                            			<c:when test="${i.p_period eq 'F'}"> <div class="col-4 col-lg-2 px-4 body2">예정 프로그램</div></c:when>
		                            			<c:when test="${i.p_period eq 'P'}"> <div class="col-4 col-lg-2 px-4 body2">지난 프로그램</div></c:when>
		                            		</c:choose>
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
		url : "/admin/programCheckDelete",
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
	let p_period = $("#p_period").val();
	$('input[name="checkbox"]:checked').each(function() {
		checkboxArr2.push($(this).val()); //Array에 push로 체크된 것들만 넣기
		console.log(checkboxArr2)
	})
	
	$.ajax({
		type : "POST",
		url : "/admin/programCheckUpdate",
		data : {
			checkboxArr2 : checkboxArr2,
			p_period : p_period
		},
		success : function (result){
			console.log(result);
			alert("update ok!");
			location.reload();
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

	$("#programAdded").on("click", ()=>{
		location.href = "/admin/adminProgram";
	})
	
	$("#programList").on("click", ()=>{
		location.href = "/admin/adminProgramList?cpage=1";
	})

</script>

</body>
</html>