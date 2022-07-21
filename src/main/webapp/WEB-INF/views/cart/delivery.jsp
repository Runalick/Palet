<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<!-- 지도api -->
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<style>
@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);



@media ( min-width : 1650px) {
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


.H2 {
	/* Headline/H2 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 2.25rem;
	line-height: 2.688rem;
}
.body1{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 400;
font-size: 1.25rem;
line-height: 1.875rem;
}
.h3 {
	margin-bottom: 0.75rem;
	display: inline-block;
	/* Headline/H3 */
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 700;
	font-size: 1.25rem;
	line-height: 1.5rem;
	display: inline-block;
}
.H1{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 3.438rem;
line-height: 3.75rem;
}
/* <옵션 내용 */
.h4 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1rem;
	line-height: 1.875rem;
	display: inline-block;
}

.body2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 1rem;;
	line-height: 1.75rem;
}

<!--
-->
#mypage-area {
	position: absolute;
	left: 0rem;
	top: 5rem;
	margin: auto;
	border-radius: 0px;
	/* Rectangle 7 */
	box-sizing: border-box;
	background: #FFFFFF;
	/* Gray/300 */
}



.main-info{
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 600;

	line-height: 1.875rem;
	margin-bottom:1rem;
}
/* 네비 */

.content{
  
    margin-left:1.75rem;
}


.main-area{
margin-top:1rem; 
padding-bottom:1rem; 
border-bottom:1px solid #C4CDD5;
}
.list{
padding:1.2rem 0px; 
border-bottom:1px solid #C4CDD5;
}
.list .body3{
line-height:2rem;
}
.btnbtn{
font-family: 'Spoqa Han Sans Neo';
line-height:0px;
align-items: center;
padding: 1.125rem 1.5rem;
gap: 0.625rem;
border:0px;

color:white;
/* Gray/900 */
background: #161C24;
border-radius: 0.5rem;
}
.btnbtn:hover{
background: #454F5B;
color:white;
}

.container{
width:100%;
}
</style>
</head>
<body>	

			
				
				
				
				
				
				
				<div class="container" style="margin-top:1rem; width:100%;">
					<div class="row" style="margin-top:1rem; width:100%;">
						<div class="col-12 main-info">배송지 목록</div>
						
						<div class="col-12 h4" style="border-top:1px solid black;">
							<div class="row main-area" >
								<div class="col-2  body4" >배송지</div>
								<div class="col-5 body4">주소</div>
								<div class="col-3 col-md-2 body4">연락처</div>
								<div class="col-2 col-md-3 body4" style="text-align:center">선택</div>
								
							
							</div>
					<c:if test="${list.size() ==0 }">
						<div class="body3" style="margin-top:4rem; text-align:center">선택할 주소가 없습니다.</div>
					</c:if>	
					<c:forEach var="i" items="${list }">
                     <div class="row list" >
                        <div class="col-2 body3 receiver">${i.receiver }</div>
                        <div class="col-5 body3">${i.postcode }<br>${i.address1 } ${i.address2 }</div>
                        <input type="hidden" value="${i.postcode }">
                        <input type="hidden" value="${i.address1 }">
                        <input type="hidden" value="${i.address2 }">
                        <div class="col-3 col-md-2 body3">${i.phone }</div>
                        <div class="col-2 col-md-3 body3" style="text-align:center; margin:auto;">
                        <button class="btnbtn sm-btn body3 choose" style="line-height:0px;"value=${i.deliveryaddress_seq }>선택</button>
                        </div>
                     </div>
                     </c:forEach>
							
							
							
							
						</div>
					</div>
				
				</div>

			

			



	
	<script>
	$(".choose").on("click",function(){
		console.log($(this).parent().siblings()[0])
		console.log($(this).parent().siblings()[5])
		console.log($(this).parent().siblings()[2])
		console.log($(this).parent().siblings()[3])
		console.log($(this).parent().siblings()[4])
		//수령인
		window.opener.document.getElementById("buyer_name").value = $($(this).parent().siblings()[0]).text();
		window.opener.document.getElementById("buyer_name2").value = $($(this).parent().siblings()[0]).text();
 		//전화번호
		window.opener.document.getElementById("buyer_tel1").value = $($(this).parent().siblings()[5]).text();
		window.opener.document.getElementById("buyer_tel2").value = $($(this).parent().siblings()[5]).text();
// 		//배송지
		window.opener.document.getElementById("sample4_postcode").value = $($(this).parent().siblings()[2]).val();
		window.opener.document.getElementById("sample5_postcode").value = $($(this).parent().siblings()[2]).val();
// 		//주소
		window.opener.document.getElementById("sample4_roadAddress").value = $($(this).parent().siblings()[3]).val();
		window.opener.document.getElementById("sample5_roadAddress").value = $($(this).parent().siblings()[3]).val();
// 		//상세주소
		window.opener.document.getElementById("sample4_detailAddress").value = $($(this).parent().siblings()[4]).val();
		window.opener.document.getElementById("sample5_detailAddress").value = $($(this).parent().siblings()[4]).val();
		
		window.close();
	
	})
	
	


	</script>
</body>
</html>