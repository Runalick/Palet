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
                                <a href="/admin/adminExhibitions" class="nav-link text-black p-3 mb-2 current">
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
                    <!-- side bar end -->
                    
                    <!-- main navi 9 grid open -->
                    
                    <div class="col-xl-10 col-lg-9 top-navbar bg-dark fixed-top py-2">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <div class="text-align text-uppercase mb-0 text-white h3">Exhibitions</div>
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
    </nav>
    <!-- navibar close -->
    
    <!-- main contents -->
    <section>
        <div class="container-fluid">
            <div class="row">    
            	<div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="dashMain"> <!-- 추후CSS작업 시 바뀔이름 -->
            		<div class="row" style="margin-top: 5rem">
						<div class="col-12 h3_1 px-5" style="text-align:left"> <img src="/images/minus.png"> Register Exhibitions </div>
                		<div class="col-12 body2 colortext_gray600 px-5" >  : 전시 정보를 등록 할 수 있는 페이지 입니다. </div>
                	</div>
                	<div class="row pt-3 px-5">
						<div class="col-12 mr-auto" id="exhibitionBtns">
							<button class="btn0 color_gray900 colortext_gray100" id="exhibitionAdded">전시 등록</button>
							<button class="btn0 " id="exhibitionList">전시회 목록</button>
						</div>
                	</div>            		
            		<div class="row" style="margin-top: 1rem" id="roundboxParent">
                		<div class="col " style="align-item :center"" id="roundbox">
            				<div class="row pt-2 m-3 mb-4">
								<div class="h3_2">Input Exhibition</div>
							</div>
							<div class="row">
                            	<form action="/admin/exhibitionsInsert" method="post" enctype="multipart/form-data">
								<div class="col">
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">전시 카테고리</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">전시 카테고리</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">전시 카테고리</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">전시 카테고리</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">전시 카테고리</div>
									</div>
									<div class="row" style="text-align:center">
										<div class="col-12 p-0">
											<select name="e_period" id="e_period" class="select1">
												<option value='F'>예정전시 </option>
												<option value='N'>현재전시 </option>
												<option value='P'>지난전시 </option>
											</select>
										</div>
									</div>
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">전시 이름</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">전시 이름</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">전시 이름</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">전시 이름</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">전시 이름</div>
									</div>
									<div class="row" style="text-align:center">
										<div class="col-12 p-0" style="text-align:center">
											<input type="text" name="e_name" id="e_name" placeholder="Input Exhibition Name" >
										</div>
									</div>
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">전시 시작일</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">전시 시작일</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">전시 시작일</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">전시 시작일</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">전시 시작일</div>
									</div>
									<div class="row" style="text-align:center;">
										<div class="col-12 p-0">
											<input type="text" name="start_date" id="start_date" placeholder="Input Start Day">
											<input type="hidden" id="start_date_value">
										</div>
									</div>
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">전시 마감일</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">전시 마감일</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">전시 마감일</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">전시 마감일</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">전시 마감일</div>
									</div>
									<div class="row" style="text-align:center;">
										<div class="col-12 p-0">
											<input type="text" name="end_date" id="end_date" placeholder="Input End Day">
											<input type="hidden" id="end_date_value">
										</div>
									</div>
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">전시 가격</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">전시 가격</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">전시 가격</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">전시 가격</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">전시 가격</div>
									</div>
									<div class="row" style="text-align:center">
										<div class="col-12 p-0">
											<input type="text" name="e_price" id="e_price" 
											oninput="this.value = this.value.replace(/[^\d]/g, '').replace(/(\..*)\./g, '$1');" placeholder="Just Number">
										</div>
									</div>

									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">전시 사진</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">전시 사진</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">전시 사진</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">전시 사진</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">전시 사진</div>
									</div>
									<div class="row" style="text-align:center">
										<div class="col-12 p-0 ">
											<input class="upload_view" value="첨부파일" placeholder="Input Exhibition Images">
											<span>	
												<label class="btn1_2 " for="file"> <i class="bi bi-upload"></i> </label>	
												<input id="file" type="file" name="file" style="display:none" accept="image/*" onchange=isFileImg(this)>
											</span>
										</div>
										
									</div>  
									<div class="row" style="text-align:center">
										<div class="col-12 p-0">
											<img src="" id="img_section" value="N">
											<input class="btn1_0 mrg_left1" type="button" id="cancel_Btn" onclick="img_cancel()" style="display: none" value="첨부 취소">
										</div>
									</div>
									
									
									<div class="row pt-4 pb-4" style="text-align:center">
										<div class="col-12 p-0">
											<a href="/admin/adminExhibitions">
											<input class="btn1" type="button" id="return" value="초기화"></a> 
											<input class="btn2_1" type="submit" id="upload" value="등록" disabled>
										</div>
									</div>
								</div>
								</form>
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
    
    
    
    
<!-- DatePicker Script -->  
 
<script>
let isE_name = false;
let isE_price = false;
let isStart_date = false;
let isEnd_date = false;
let start_date;
let end_date;

	$(function (){           
		$.datepicker.setDefaults($.datepicker.regional['ko']); 
			         
			$("#start_date").datepicker({                 
				changeMonth: true,                  
				changeYear: true,
				showOn : "both",
				buttonImage : "/images/calendar1.png",
				buttonImageOnly : true,
				nextText: '다음 달',                 
				prevText: '이전 달',                  
				dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
				dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
				monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
				monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
				dateFormat: "yymmdd",
				maxDate: 60, // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
				onClose: function( selectedDate ) {	//시작일(startDate) datepicker가 닫힐때, 종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
					$("#end_date").datepicker( "option", "minDate", selectedDate );
					
					let date =  $.datepicker.formatDate("yymmdd", $(this).datepicker('getDate'));
					$('input[name="start_date"]').attr('value', date);
					
					$("#start_date_value").val(date);
					start_date = this.date;
				}
			});
		
			$( "#end_date" ).datepicker({
				changeMonth: true,
			    changeYear: true,
				showOn : "both",
				buttonImage : "/images/calendar1.png",
				buttonImageOnly : true,
			    nextText: '다음 달',
			    prevText: '이전 달',
			    dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
			    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			    dateFormat: "yymmdd",
			    maxDate: 365, // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
			    onClose: function( selectedDate ) { // 종료일(endDate) datepicker가 닫힐때, 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
					$("#start_date").datepicker( "option", "maxDate", selectedDate );
					let date =  $.datepicker.formatDate("yymmdd", $(this).datepicker('getDate'));
					$("#end_date_value").val(date);
					end_date = this.date;
				}
			});
 		});	
	
	
	


	
	$("#e_name").on("keyup",function(){
		let e_name = $("#e_name").val();
		console.log(e_name);
		if(e_name == ""){
			isE_name = false;
			
		}else {
			isE_name = true;
		}
		
		if(isE_name && isE_price && isStart_date && isEnd_date){
			$("#upload").removeAttr("disabled");
		}
	})
	
// 	console.log($("#start_date").val());
// 	console.log($("#end_date").val());
// 	if(start_date == $("#start_date_value").val()) {
// 		alert("!!");
// 	}
	
// 	console.log($("#start_date_value").val());
// 	console.log($("#end_date_value").val());
	$("#start_date").on("focusout", function(){
		let start_date_value = $("#start_date_value").val();
		console.log(start_date_value);
		if (start_date_value == null){
			isStart_date = false;
		}else {
			isStart_date = true;
		}
		
		if(isE_name && isE_price && isStart_date && isEnd_date){
			$("#upload").removeAttr("disabled");
			
		}
	})
	
	$("#end_date").on("focusout", function(){
		let end_date_value = $("#end_date_value").val();
		console.log(end_date_value);
		if (end_date_value == null ){
			isEnd_date = false;
		}else {
			isEnd_date = true;
		}
		
		if(isE_name && isE_price && isStart_date && isEnd_date){
			$("#upload").removeAttr("disabled");
			
		}
	})

	$("#e_price").on("keyup",function(){
		let e_price = $("#e_price").val();
		console.log(e_price);
		if(e_price == ""){
			isE_price = false;
			
		}else {
			isE_price = true;
		}
		
		if(isE_name && isE_price && isStart_date && isEnd_date){
			$("#upload").removeAttr("disabled");
			
		}
	})
	

	$("#return").on("click", ()=>{
		location.reload();
	})
	
	$("#upload").on("click", ()=>{
		
		alert("Exhibition Added Success");
	})
	
	 $("#file").on('change',function(){
  		let fileName = $("#file").val();
 	 	$(".upload_view").val(fileName);
	});
	
 	const reader = new FileReader();
 	reader.onload = (readerEvent) =>{
 		document.querySelector("#img_section").setAttribute("src",readerEvent.target.result);
 		console.log(readerEvent.target.result);
 	}
     document.querySelector("#file").addEventListener("change",(changeEvent) => {
       const imgFile = changeEvent.target.files[0];
       reader.readAsDataURL(imgFile);
     })
     
    function isFileImg(obj){
			  pathPoint = obj.value.lastIndexOf('.');
			  filePoint = obj.value.substring(pathPoint+1,obj.length);
			  fileType=filePoint.toLowerCase();
			  if(fileType!='jpg'&&fileType!='png'&&fileType!='jpeg'){				
				 alert("이미지 파일만 등록이 가능합니다.");
// 				 parentObj = obj.parentNode;
// 				 node = parentObj.replaceChild(obj.cloneNode(true),obj);
					$("#file").val("");
					$(".upload_view").val("");
			  }
			  $("#cancel_Btn").css("display","inline-block");
	}
     
    function img_cancel(){
    	$("#img_section").attr("src","");
    	$("#file").val("");
    	$(".upload_view").val("");
    	$("#cancel_Btn").css("display","none");
    }

    let cnt =0;
    $(".navbar-toggler").on("click",function(){
       cnt ++;
       if(cnt>1){
       $(".navbar-collapse").toggle();
       }
    })


 	
 	
 	$("#exhibitionAdded").on("click", ()=>{
 		location.href = "/admin/adminExhibitions";
 	})
 	
 	$("#exhibitionList").on("click", ()=>{
 		location.href = "/admin/adminExhibitionList?cpage=1";
 	})
 	
 	
</script>

</body>
</html>