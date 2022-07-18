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
                                <a href="/admin/adminGoods" class="nav-link text-black p-3 mb-2 current">
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
                    <!-- sidebar end -->

                    <!-- main navi 9 grid open -->
                    
                    <div class="col-xl-10 col-lg-9 bg-dark fixed-top py-2 top-navbar">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <div class="text-align text-uppercase mb-0 text-white h3">Goods</div>
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
						<div class="col-12 h3_1 px-5" style="text-align:left"> <img src="/images/minus.png"> Register Goods </div>
                		<div class="col-12 body2 colortext_gray600 px-5" >  : 상품을 등록 할 수 있는 페이지 입니다. </div>
                	</div>
                	<div class="row pt-3 px-5">
						<div class="col-12 mr-auto" id="goodsBtns">
							<button class="btn0 color_gray900 colortext_gray100" id="goodsAdded">상품 등록</button>
							<button class="btn0 " id="goodsList">재고 현황</button>
						</div>
                	</div>
                	<div class="row" style="margin-top: 1rem" id="roundboxParent">
                		<div class="col " style="align-item :center"" id="roundbox">
                			<div class="row pt-2 m-3 mb-4">
								<div class="h3_2">Input Goods</div>
							</div>
							<div class="row">
							<form action="/admin/goodsInsert" method="post" enctype="multipart/form-data">		
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
											<select id="e_num" name="e_num" class="select1"> 
												<c:forEach var="i" items="${list}">	
												<option value='${i.e_num}'>${i.e_name} </option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">제품 이름</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">제품 이름</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">제품 이름</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">제품 이름</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">제품 이름</div>
									</div>
									<div class="row" style="text-align:center">
										<div class="col-12 p-0" style="text-align:center">
											<input type="text" name="g_name" id="g_name" placeholder="Input Goods Name" >
											<input type="hidden" name="g_num" value="0">
										</div>
									</div>
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">제품 가격</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">제품 가격</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">제품 가격</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">제품 가격</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">제품 가격</div>
									</div>
									<div class="row" style="text-align:center;">
										<div class="col-12 p-0">
											<input type="text" name="g_price" id="g_price" 
											oninput="this.value = this.value.replace(/[^\d]/g, '').replace(/(\..*)\./g, '$1');"
											placeholder="Input Goods Price">
										</div>
									</div>
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">제품 옵션</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">제품 옵션</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">제품 옵션</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">제품 옵션</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">제품 옵션</div>
									</div>
									<div class="row" style="text-align:center">
										<div class="col-12 p-0">
											<input type="text" name="g_option" id="g_option" placeholder="Input Goods Options" >
										</div>
									</div>
									<div class="row">
										<div class="col-12 d-none d-xl-block p-0 body2 marg_left0">제품 사진</div>
										<div class="col-12 d-none d-lg-block d-xl-none p-0 body2 marg_left2">제품 사진</div>
										<div class="col-12 d-none d-md-block d-lg-none p-0 body2 marg_left3">제품 사진</div>
										<div class="col-12 d-none d-sm-block d-md-none p-0 body2 marg_left4">제품 사진</div>
										<div class="col-12 d-sm-none p-0 body2 marg_left5">제품 사진</div>
									</div>
									<div class="row" style="text-align:center">
										<div class="col-12 p-0 filebox">
											<input class="upload_view" value="" placeholder="Input Goods Images">
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
									<div class="row pt-5 pb-4" style="text-align:center">
										<div class="col p-0">
											<a href="/admin/adminGoods">
												<input class="btn1" type="button" id="return" value="초기화"></a> 
												<input class="btn2_1" type="submit" id="upload" value="등록">
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
    
    
    
<script>
	$("#goodsAdded").on("click", ()=>{
 		location.href = "/admin/adminGoods";
 	})
 	
 	$("#goodsList").on("click", ()=>{
 		location.href = "/admin/adminGoodsList?cpage=1";
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
    
</script>    
    
</body>
</html>