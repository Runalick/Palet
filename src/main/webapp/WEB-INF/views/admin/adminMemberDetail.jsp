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
                                <a href="/admin/adminCoupon" class="nav-link text-black p-3 mb-2 sidebar-link">
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
    
    <!-- main contents -->
    
    <section>
        <div class="container-fluid">
            <div class="row">    
            	<div class="col-xl-10 col-lg-9 col-md-8 ml-auto" id="dashMain"> <!-- 추후CSS작업 시 바뀔이름 -->
            		<div class="row" style="margin-top: 5rem">
                		<div class="col-12 h3_1 px-5" style="text-align:left"> <img src="/images/minus.png"> Member Detail View </div>
                		<div class="col-12 body2 colortext_gray600 px-5" >  : '${mdto.name}' 님의 상세 페이지 입니다. </div>
                	</div>   
            		<div class="row" style="margin-top: 1rem" id="roundboxParent">
                		<div class="col-12" id="roundbox">
                			<div class="row pt-3">
                				<div class="col-12">
                					<img type=button class=leftbutton src="/images/leftbutton.png">
                				</div>
							</div>
                			
			            	<form action="/admin/adminMemberUpdate" method="post">
			            	<div class="row pt-4 m-3 mb-4">
			            		<div class="col-12 d-none d-lg-block h3_1 m-auto" style="width:60%" >Information</div>
			            		<div class="col-12 d-lg-none h3_1 m-auto" style="width:85%" >Information</div>
			            		
			            		<div class="col-12 d-none d-lg-block body2 m-auto memberBtns" style="width:60%; text-align:right" >
			            			<button class='btn0_1 color_yellow2' type="button" id='modifyMember' >수정</button>
<!-- 			            			<button class='btn0_1 color_red2' type="button" id='deleteMember' >삭제</button> -->
			            		</div>
			            		<div class="col-12 d-lg-none body2 m-auto memberBtns" style="width:85%; text-align:right" >
			            			<button class='btn0_2 color_yellow2' type="button" id='modifyMember2' >수정</button>
<!-- 			            			<button class='btn0_2 color_red2' type="button" id='deleteMember2' >삭제</button> -->
			            		</div>
			            	</div>
			            	
			            	<div class="row">
			            		<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left">ID(E-mail)</div>
			            		<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left">ID(E-mail)</div>
			            	</div>	
			           		<div class="row" style="text-align:center">
			           			<div class="col-12 d-none d-lg-block mt-3 body1 "><input type='text' value='${mdto.email }' disabled style="width:50%; text-align:center" ></div>
			           			<div class="col-12 d-lg-none mt-3 body1 "><input type='text' value='${mdto.email }' disabled style="width:70%; text-align:center" ></div>
			           			<input type='hidden' name='email' value='${mdto.email }'>
			           		</div>
			            	<div class="row" >
			            		<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left">Name </div>
			            		<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left">Name</div>
			            	</div>	
			           		<div class="row" style="text-align:center">
			           			<div class="col-12 d-none d-lg-block mt-3 body1" ><input type='text' name='name' class='edit' value='${mdto.name }' disabled style="width:50%; text-align:center"></div>
			           			<div class="col-12 d-lg-none mt-3 body1" ><input type='text' name='name' class='editable' value='${mdto.name }' disabled style="width:70%; text-align:center"></div>			           			
			           		</div>
			           		<div class="row">
			           			<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left"> Grade </div>
			           			<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left"> Grade </div>
			           		</div>
			           		<div class="row" style="text-align:center">
			           			<div class="col-12 d-none d-lg-block mt-3 body1 "><input type='text' name='grade' class='edit' value='${mdto.grade }' disabled style="width:50%; text-align:center"></div>
			           			<div class="col-12 d-lg-none mt-3 body1 "><input type='text' name='grade' class='editable' value='${mdto.grade }' disabled style="width:70%; text-align:center"></div>
			           		</div>
			           		<div class="row">
			           			<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left">Points </div>
			           			<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left">Points </div>
			           		</div>
			           		<div class="row" style="text-align:center">
			           			<div class="col-12 d-none d-lg-block mt-3 body1"><input type='text' name='point' class='edit' value='${mdto.point }' disabled style="width:50%; text-align:center"></div>
			           			<div class="col-12 d-lg-none mt-3 body1"><input type='text' name='point' class='editable' value='${mdto.point }' disabled style="width:70%; text-align:center"></div>
			           		</div>
			           		<c:if test='${mdto.phone != null}'>
			           			<div class="row">
			           				<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left"> Phone</div>
			           				<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left"> Phone</div>  
			           			</div>
			           			<div class="row" style="text-align:center">
			           				<div class="col-12 d-none d-lg-block mt-3 body1"><input type='text' name='phone' value='${mdto.phone }' disabled style="width:50%; text-align:center"></div>
			           				<div class="col-12 d-lg-none mt-3 body1"><input type='text' name='phone' value='${mdto.phone }' disabled style="width:70%; text-align:center"></div>
			           				<input type='hidden' name='phone' value='${mdto.phone }'>
			           			</div>
			           		</c:if>
			           		<c:if test='${mdto.address1 != null}'>
			           			<div class="row">
			           				<div class="col-12 d-none d-lg-block h3_3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left" > Address1</div>
			           				<div class="col-12 d-lg-none h3 m-auto" style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left" > Address1</div>
			           			</div>
			           			<div class="row" style="text-align:center">
			           				<div class="col-12 d-none d-lg-block mt-3 body1"><input type='text' name='address1' value='${mdto.address1 }' disabled style="width:50%; text-align:center"></div>
			           				<div class="col-12 d-lg-none mt-3 body1"><input type='text' name='address1' value='${mdto.address1 }' disabled style="width:70%; text-align:center"></div>
			           				<input type='hidden' name='address1' value='${mdto.address1 }'>
			           			</div>
			           		</c:if>
			           		<c:if test='${mdto.address2 != null }'>
			           			<div class="row">
			           				<div class='col-12 d-none d-lg-block h3_3 m-auto' style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left"> Address2 </div>
			           				<div class='col-12 d-lg-none h3 m-auto' style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left"> Address2 </div>
			           			</div>
			           			<div class="row" style="text-align:center">
			           				<div class='col-12 d-none d-lg-block mt-3 body1'><input typs='text' name='address2' value='${mdto.address2 }' disabled style="width:50%; text-align:center"></div>
			           				<div class='col-12 d-lg-none mt-3 body1'><input typs='text' name='address2' value='${mdto.address2 }' disabled style="width:70%; text-align:center"></div>
			           				<input type='hidden' name='address2' value='${mdto.address2 }'>
			           			</div>
			           		</c:if>
			           		<c:if test='${mdto.postcode != null }'>
			           			<div class="row">
			           				<div class='col-12 d-none d-lg-block h3_3 m-auto' style="border-bottom : 0.125rem solid #161C24; width:50%; text-align:left"> Postcode </div>
			           				<div class='col-12 d-lg-none h3 m-auto' style="border-bottom : 0.125rem solid #161C24; width:70%; text-align:left"> Postcode </div>
			           			</div>
			           			<div class="row" style="text-align:center">
			           				<div class='col-12 d-none d-lg-block mt-3 body1'><input typs='text' name='postcode' value='${mdto.postcode }' disabled style="width:50%; text-align:center"></div>
			           				<div class='col-12 d-lg-none mt-3 body1'><input typs='text' name='postcode' value='${mdto.postcode }' disabled style="width:70%; text-align:center"></div>
			           				<input type='hidden' name='postcode' value='${mdto.postcode }'>
			           			</div>
			           		</c:if>
			           		</form>
			           		
			           				
			           		<div class="row mt-5">
			           			<div class="col-12 m-auto" style="border-bottom : 0.5rem solid #161C24; width:65%;"></div>
			           		</div>
			           		
			           		<div class="row pt-4 m-3 mb-4">
			            		<div class="col-12 d-none d-lg-block h3_1 m-auto" style="width:60%" >Payment</div>    
			            		<div class="col-12 d-lg-none h3_1 m-auto" style="width:85%" >Payment</div>   
			            	<div>	
			            	
			            		
			         			           			
			                    <div class="col-12 p-3">
			                    	<div class="">
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
	$("#modifyMember").on("click", ()=>{
		$(".edit").removeAttr("disabled");
		$("#modifyMember").css("display", "none");
		$("#deleteMember").css("display", "none");
		let ok = $("<button>");
		ok.text("수정완료");
		ok.attr("class","btn0_1 color_yellow2");
		ok.attr("type", "submit");
		
		let cancel = $("<button>");
		cancel.text("취소");
		cancel.attr("type","button");
		cancel.attr("class","btn0_1 colre_gray400");
		cancel.on("click", ()=>{
			location.reload();
		})
		
		$(".memberBtns").append(ok);
		$(".memberBtns").append(cancel);
		
	});
	
	$("#modifyMember2").on("click", ()=>{
		$(".editable").removeAttr("disabled");
		$("#modifyMember2").css("display", "none");
		$("#deleteMember2").css("display", "none");
		let ok = $("<button>");
		ok.text("수정완료");
		ok.attr("class","btn0_1 color_yellow2");
		ok.attr("type", "submit");
		
		let cancel = $("<button>");
		cancel.text("취소");
		cancel.attr("type","button");
		cancel.attr("class","btn0_1 colre_gray400");
		cancel.on("click", ()=>{
			location.reload();
		})
		
		$(".memberBtns").append(ok);
		$(".memberBtns").append(cancel);
		
	});
	
	$(".leftbutton").on("click", function() {

		location.href = "/admin/adminMembers?cpage=1";
	})
	
	let cnt =0;
    $(".navbar-toggler").on("click",function(){
       cnt ++;
       if(cnt>1){
       $(".navbar-collapse").toggle();
       }
    })
	
// 	$("#deleteMember").on("click", ()=>{
// 		let ban = confirm("정말 삭제 하시겠습니까?");
// 		if(ban){
// 			$.ajax({
// 				url : "/admin/adminMemberDelete",
// 				data: {'email' : '${mdto.email}' }
// 			})	
// 		}else {
			
// 		}
// 	});
	
// 	$("#deleteMember2").on("click", ()=>{
// 		let ban = confirm("정말 삭제 하시겠습니까?");
// 		if(ban){
// 			$.ajax({
// 				url : "/admin/adminMemberDelete",
// 				data: {'email' : '${mdto.email}' }
// 			})	
// 		}else {
			
// 		}
// 	});

</script>
</body>
</html>