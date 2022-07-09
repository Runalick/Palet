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

        #navparent {
            position: fixed;
            font-size: 0;
            padding-left: 2.5rem;
            padding-right: 2.5rem;
            height: 5rem;
            background-color: white;

        }

        .navbar {

            height: 5rem;
            padding: 0px;

        }
        
        .row{
        	height: 100%;
        }
        
        .row>div {
            padding-left: 2.5rem;
            padding-right: 2.5rem;
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
             padding: 1.125rem 1.5rem;
            gap: 0.625rem;


            width: 12.5rem;
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
	/* div {
		border: 1px solid black;
	} */
</style>
</head>
<body>
<div class="container-fluid" id="navparent">
	<div class="container">
		<div class="row" style="align-items: center;">
			<div class="col-6">
				<a class="navbar-brand" href="/" id="container" style="padding :0px;">
                	<img src="/images/Logo.svg" border=0>
                </a>
			</div>
			<div class="col-6">
				<button id="paint" class="btn1" style="float:right;">이벤트 참여하기</button>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid"">
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
	<c:choose>
		<c:when test="${loginEmail == 'admin@palet.com'}">
			<div class="row">
			<c:forEach var="i" items="${all}">
				<div class="col-3">
					<div class="row" align=center>
						<div class="col">
							<c:if test="${i.admin_ok == 'N'}">
								<button class="ok">승인</button>
							</c:if>
							<button class="delete">삭제</button>
							<input type="hidden" name="draw_seq" value=${i.draw_seq }>
						</div>
						<div class="col-12 p-0" style="align-items: center;">
							<img src="${i.d_file }" style="width:200px; height:200px;">
						</div>
						<div class="col-12">
							글번호 : ${i.draw_seq }
						</div>
						<div class="col-12">
							제목 : ${i.d_title }
						</div>
						<div class="col-12">
							그린이 : ${i.painter }
						</div>
						<div class="col-12">
							참여자 : ${i.email }
						</div>
						<div class="col">
							${i.admin_ok }
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
		</c:when>
		
		<c:otherwise>
			<div class="row">
			<c:forEach var="i" items="${all}">
				<div class="col-3">
					<div class="row" align=center>
						<div class="col-12 p-0" style="align-items: center;">
							<img src="${i.d_file }" style="width:200px; height:200px;">
						</div>
						<div class="col-12">
							제목 : ${i.d_title }
						</div>
						<div class="col-12">
							그린이 : ${i.painter }
						</div>
						<div class="col">
							${i.admin_ok }
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
		</c:otherwise>
	</c:choose>
	</div>
</div>

	
	<script>
	window.onload = function(){
		console.log("${loginEmail}");
	}

	$("#paint").on("click", function(){
		location.href="/event/paint";
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
			data: {draw_seq:$(this).siblings("input").eq(1).val()}
		}).done(function(resp){
			alert(resp);
			location.reload();
		})
	})
	
	</script>

</body>
</html>