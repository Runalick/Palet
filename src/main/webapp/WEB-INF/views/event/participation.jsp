<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Event Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style>
@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);


        @media (min-width: 375px) {
            .container {
                max-width: 1280px;

                min-width: 390px;
                
                height: 100%;
            }

            html {
                font-size: 12px;
            }

        }

    
        @media (min-width: 1650px) {
            .container {
                max-width: 1280px;

                min-width: 390px;
                
                
            }

            html {
                font-size: 16px;
            }

        }


        * {
            box-sizing: border-box;
        }

        .container-fluid {
            padding: 0px;
        }

        .navbar-brand {
            margin: 0px;
            padding: 0px;
            height: 1.875rem;
        }
		
		/*오른쪽 여백 없애기*/
		.container, .container-fluid, .container-lg, .container-md, 
		.container-sm, .container-xl, .container-xxl{
			overflow-x: hidden;
		}
        #navparent {
            position: fixed;
            font-size: 0;
            /* padding-left: 2.5rem; */
            padding-right: 2.5rem;
            height: 5rem;
            background-color: white;

        }

        .navbar {

            height: 5rem;
            padding: 0px;

        }
        
        .navrow{
        	height: 100%;
        }
        
        .row>div {
            padding-left: 2.5rem;
            padding-right: 2.5rem;
        }
        
        #row1>div {

            padding-left: 10px;
            padding-right: 0px;
        }
        


        .nav-item {

            padding-left: 20px;
            padding-right: 20px;
        }

        .nav-link {
            padding: 0px;
            padding-right: 0px;
            padding-left: 0px;

            width: 3.625rem;
            height: 1.5rem;

            /* Button/Button1 */

            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 500;
            font-size: 1.25rem;
            line-height: 1.5rem;
            /* identical to box height */

            text-align: center;

            /* Gray/500 */

            color: #919EAB;


            /* Inside auto layout */

            flex: none;
            order: 0;
            flex-grow: 0;

        } 
 
 	.btn1 {
            padding: 1.0rem 1.4rem;
            gap: 0.625rem;
			margin-left: 5px;

            width: 10.5rem;
            height: 3.75rem;


            background: #FFFFFF;
            border-radius: 1.25rem;
            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 500;
            font-size: 1.25rem;
            line-height: 1.5rem;
            /* identical to box height */

            text-align: center;

            /* Gray/900 */

            color: #161C24;
			margin-top: 10px;

            /* Inside auto layout */

        }  
        
        .btn1_1 {
            /* padding: 1.0rem 1.4rem; */
            gap: 0.625rem;
			margin-left: 5px;

            width: 7.5rem;
            height: 3.75rem;


            background: #FFFFFF;
            border-radius: 1.25rem;
            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 500;
            font-size: 1.25rem;
            line-height: 1.5rem;
            /* identical to box height */

            text-align: center;

            /* Gray/900 */

            color: #161C24;
			margin-top: 10px;

            /* Inside auto layout */

        }  
        
       .btn3 {
            gap: 0.625rem;
            width: 6rem;
            height: 2.75rem;
            background: #FFFFFF;
            border-radius: 1rem;
            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 500;
            font-size: 1.25rem;
            line-height: 1.5rem;
            margin-top: 5px;
            /* identical to box height */

            text-align: center;

            /* Gray/900 */

            color: #161C24;


            /* Inside auto layout */
			}
        
        .h2 {

            /* width: 10.375rem;
            height: 2.688rem; */



            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 700;
            font-size: 2.25rem;
            line-height: 2.688rem;
            text-align: center;

            /* Gray/900 */

            color: #161C24;

        }
        
        .h3 {

            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 700;
            font-size: 1.25rem;
            line-height: 1.5rem;
            /* identical to box height */


            /* Gray/900 */

            color: #161C24;
        }
        
        .body2 {


            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 400;
            font-size: 1rem;
            line-height: 1.75rem;
            /* identical to box height, or 175% */

            margin-bottom: 0px;
            color: #000000;


        }
        
    .body2_1 {


            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 400;
            font-size: 1rem;
            line-height: 1.75rem;
            /* identical to box height, or 175% */

            margin-bottom: 0px;
            color: #637381;


        }
             
    button {
    	font-size: initial;
    }           
    
    #footer{
            background: #F4F6F8;
            height: 13.25rem;
    }
    
    .ellipsis {
	  white-space: nowrap;
	  overflow: hidden;
	  text-overflow: ellipsis;  /* 말줄임 적용 */
	}
        
	/* div {
		border: 1px solid black;
	} */
</style>
</head>
<body>
<div class="container-fluid">
	<div class="row">
	<div class="container">
		<div class="row navrow" style="align-items: center;">
			<div class="col-3">
				<a class="navbar-brand" href="/" style="padding :0px;">
                	<img src="/images/Logo.svg" border=0 style="margin-top: 10px;">
                </a>
			</div>
			<div class="col-9 d-none d-sm-block">
				<button id="back" class="btn1" style="float:right;">돌아가기</button>
				<button id="paint" class="btn1" style="float:right;">참여하기</button>
			</div>
			<div class="col-9 d-block d-sm-none">
				<button id="sback" class="btn1_1" style="float:right;">돌아가기</button>
				<button id="spaint" class="btn1_1" style="float:right;">참여하기</button>
			</div>
		</div>
	</div>
	</div>


	<div class="row">
		<div class="container">
			<div class="row" style="padding-top: 120px;" align=center>
				<div class="col h2">
					오늘의 상상일기를 그림으로 표현해보세요.
				</div>
			</div>
			<div class="row" align=center>
				<div class="col body2_1">
					· 본 이벤트는 1 계정당 1회만 참여 가능합니다.<br>
					· 그림은 관리자 승인 후 업데이트 됩니다.<br>
					· 이벤트 참여시 추첨을 통해 'Palet' 할인쿠폰을 지급해드립니다.
				</div>
			</div>
			
		<div class="row" style="padding-top: 50px; padding-bottom: 50px;" id="container">
		</div>	
		
		
		</div>
	</div>
	
	<div class="row" id="footer" style=margin-top: 50px;">
	        <div class="container" style="width: 80%;">
	        	<div class="row" id="row1">
	        		<div class="col-12 h3" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
	                <div class="col-12 body2" style = "color: #637381; padding-right: 60px;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
	                <div class="col-12 body2" style = "color: #637381; ">3호선 경복궁역 지하 1층 | contact@palet.com</div>
	        	</div>
	    	</div>
	</div>
</div>		
	<%-- <c:choose>
		<c:when test="${loginEmail == 'admin@palet.com'}"> -
			<div class="row" style="padding-top: 50px; padding-bottom: 50px;" id="container">
			</div>
			 <c:forEach var="i" items="${all}">
				<div class="col-12 col-md-6 col-lg-3">
					<div class="row" align=center style="padding-top: 50px;">
						
						<div class="col-12 p-0" style="align-items: center;">
							<img src="${i.d_file }" style="width:200px; height:200px;">
						</div>
						<div class="col-12 ellipsis">
							글번호 : ${i.draw_seq }
						</div>
						<div class="col-12 ellipsis">
							제목 : ${i.d_title }
						</div>
						<div class="col-12 ellipsis">
							그린이 : ${i.painter }
						</div>
						<div class="col-12 ellipsis">
							참여자 : ${i.email }
						</div>
						<div class="col">
							<c:if test="${i.admin_ok == 'N'}">
								<button class="ok btn3">승인</button>
							</c:if>
							<button class="delete btn3">삭제</button>
							<input type="hidden" name="draw_seq" value=${i.draw_seq }>
						</div>
						
					</div>
				</div>
			</c:forEach> 
			</div>
		</c:when>
		
		<c:otherwise>
			<div class="row" style="padding-top: 50px; padding-bottom: 50px;" id="container">
			<%-- <c:forEach var="i" items="${okconfirm}">
				<div class="col-12 col-md-6 col-lg-3">
					<div class="row" align=center style="padding-top: 50px;">
						<div class="col-12 p-0" style="align-items: center;">
							<img src="${i.d_file }" style="width:200px; height:200px;">
						</div>
						<div class="col-12 ellipsis">
							제목 : ${i.d_title }
						</div>
						<div class="col-12 ellipsis">
							그린이 : ${i.painter }
						</div>
						
					</div>
				</div>
			</c:forEach> 
			</div>
		</c:otherwise>
	</c:choose> --%>


	
	<script>
	AOS.init();
	window.onload = function(){
		$.ajax({
			url:"/event/contents",
			data:{limit : 1},
			async: false,
			dataType:"json", // == JSON.parse(resp);
			success: function (resp) {
				for(let i = 0 ; i < resp.length; i++) {
					let text_html = 
						"<div class='col-12 col-md-6 col-lg-3'>"
						+ "<div class='row' align=center style='padding-top: 50px;'>"
						+	"<div class='col-12 p-0' style='align-items: center;'>"
						+		"<img src=" + resp[i].d_file + " class='imgopen' style='width:200px; height:200px;'>"
						+		"<input type='hidden' value="+ resp[i].d_file +">"
						+	"</div>"
						+	"<div class='col-12 ellipsis'>"
						+		"제목 : " + resp[i].d_title 
						+	"</div>"
						+	"<div class='col-12 ellipsis'>"
						+		"그린이 : " + resp[i].painter 
						+	"</div>"
						+"</div>"
						+"</div>";
					
					console.log(text_html);
			    	$("#container").append(text_html); 
			    	console.log("resp.length : " + resp.length);
				}
			},
		});	
	
	 	let limit = 12;
		
		
	  	$(document).scroll(function() {
	    let maxHeight = $(document).height();
	    let currentScroll = $(window).scrollTop() + $(window).height();
		   
		   
		    if (maxHeight <= currentScroll+100) {
		    	console.log("origin limit : " + limit);
		    	$.ajax({
					url:"/event/contents",
					data:{limit : limit},
					async: false,
					dataType:"json", // == JSON.parse(resp);
					success: function (resp) {
						for(let i = 0 ; i < resp.length; i++) {
							let text_html = 
								"<div class='col-12 col-md-6 col-lg-3'>"
								+ "<div class='row' align=center style='padding-top: 50px;'>"
								+	"<div class='col-12 p-0' style='align-items: center;'>"
								+		"<img src=" + resp[i].d_file + " class='imgopen' style='width:200px; height:200px;'>"
								+		"<input type='hidden' value="+ resp[i].d_file +">"
								+	"</div>"
								+	"<div class='col-12 ellipsis'>"
								+		"제목 : " + resp[i].d_title 
								+	"</div>"
								+	"<div class='col-12 ellipsis'>"
								+		"그린이 : " + resp[i].painter 
								+	"</div>"
								+"</div>"
								+"</div>";
							
							//console.log(text_html);
					    	$("#container").append(text_html); 
					    	console.log(text_html);
						}
						limit = limit + resp.length;
				    	console.log("change limit : " + limit);	
					},
					});
		    	} 
		      })  
		}
	

	$("#paint").on("click", function(){
		location.href="/event/paint";
	})
	
	$("#back").on("click", function(){
		location.href="/event/eventPage";
	})
	
	$("#spaint").on("click", function(){
		location.href="/event/paint";
	})
	
	$("#sback").on("click", function(){
		location.href="/event/eventPage";
	})
	
	$(".ok").on("click", function(){
		console.log($(this).siblings().eq(1).val());
		$.ajax({
			url:"/event/confirmation",
			data: {draw_seq:$(this).siblings().eq(1).val()}
		}).done(function(resp){
			alert(resp);
			location.reload();
		})
	})
	
	$(".delete").on("click", function(){
		console.log($(this).siblings("input").val())
		$.ajax({
			url:"/event/deleteDraw",
			data: {draw_seq:$(this).siblings("input").val()}
		}).done(function(resp){
			alert(resp);
			location.reload();
		})
	})
	
		$("#container").on("click", ".imgopen", function(){
	  	let imgurl = $(this).siblings().val();
	  	console.log(imgurl);
	  	let bigimg = window.open("",'Palet',"_blank");
	  	bigimg.document.write("<img src='" + imgurl + "'>");
	})
	
	
	
	</script>

</body>
</html>