<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palet</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!--    <link rel="stylesheet" href="/css/member/mypage.css"> -->
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<style>
@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);

@charset "UTF-8";


@media ( min-width : 375px) {

.container {

max-width: 1280px;

}

html {

font-size: 12px;

}

}

@media ( min-width : 1280px) {

.container {

max-width: 1280px;

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

.navbar-nav>li {
   text-align: right;
   background: white;
   padding-top: 1rem;
   padding-bottom: 1rem;
}

.navbar {
   height: 5rem;
   padding: 0px;
}

#navparent {
   position: fixed;
   font-size: 0;
   padding-left: 2.5rem;
   padding-right: 2.5rem;
   height: 5rem;
   background-color: white;
}


.nav-item {
 margin: auto;

      padding-left: 33px;
}


/*         오른쪽 여백 없애기
      .container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl{
         overflow: hidden;
      }
      
      .overflow-auto{
         overflow: hidden;
      } */
.row>div {
   padding-left: 2.5rem;
   padding-right: 2.5rem;
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
 
   /* Inside auto layout */
   flex: none;
   order: 0;
   flex-grow: 0;
}
#row1>div {
   padding-left: 0px;
   padding-right: 0px;
}
#Exhibition {
   width: 5.938rem;
   height: 1.5rem;
}

#Mypage {
   width: 5rem;
   height: 1.5rem;
}

#Logout {
   width: 4.5rem;
   height: 1.5rem;
}

#Program {
   width: 5.5rem;
   height: 1.5rem;
}


#Shop, #Login {
   width: 3.313rem;
   height: 1.5rem;
}


#Cart {
   width: 3rem;
   height: 1.5rem;
}


#Signup {
   width: 4.438rem;
   height: 1.5rem;
}
.main-info{
    font-family: 'Spoqa Han Sans Neo';
    font-style: normal;
    font-weight: 600;
    line-height: 1.875rem;
    margin-bottom: 1rem;
}
.H2 {
   /* Headline/H2 */
   font-family: 'Spoqa Han Sans Neo';
   font-style: normal;
   font-weight: 700;
   font-size: 2.25rem;
   line-height: 2.688rem;
}

.body1 {
   font-family: 'Spoqa Han Sans Neo';
   font-style: normal;
   font-weight: 400;
   font-size: 1.25rem;
   line-height: 1.875rem;
}

.H3 {
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

.H1 {
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
   font-weight: 700;
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
/* footer */
#footer {
   background: #F4F6F8;
   height: 13.25rem;
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

@media ( min-width : 992px) {
   .content {
      width: calc(100% - 13.625rem);
   }
   .navi {
      width: 11.875rem;
      padding: 0rem;
      display: block;
   }
   .body3 {
      font-family: 'Spoqa Han Sans Neo';
      font-style: normal;
      font-weight: 400;
      font-size: 1rem;;
      line-height: 1.75rem;
   }
   .body4 {
      font-family: 'Spoqa Han Sans Neo';
      font-style: normal;
      font-weight: 400;
      font-size: 1.25rem;
      line-height: 1.875rem;
   }
   .main-info{
   font-size:1.625rem;
   }
}

@media ( max-width : 991px) {
.main-info{
   font-size:1.875rem;
   }
   .main {
      display: none;
   }
   .navi-menu {
      display: none;
   }
   .content {
      width: calc(100% - 1.625rem);
   }
   .navi {
      padding: 0rem;
   }
   .body3 {
      font-size: 1.625rem;
   }
   .body4 {
      font-size: 1.875rem;
   }
 
}

/* 네비 */
.content {
   margin-left: 1.75rem;
}

.mypage-wrap {
   margin: 4.625rem auto 9.375rem;
}

body li {
   list-style-type: none;
}

body ul {
   padding: 0px;
}

body a {
   text-decoration: none;
}

.menu-title {
   display: block;
   color: black;
   border-bottom: 1px solid black;
   padding: 1rem;
}

li div {
   background: #212B36;
   color: white;
   padding: 0.125rem 1rem;
}

.navi-ul li ul li a {
   color: #919EAB;
   line-height: 2rem;
}

.navi-ul li ul li a:hover {
   color: #212B36;
   font-weight: 700;
}

.small-navi {
   margin: 1.25rem 0rem;
}

#select {
   width: 100%;
   border: 0px;
   background: url('/images/downarrow.png') no-repeat 97% 50%/15px auto;
   background-size: 01.596rem;
   text-align: left;
}

.body3 a {
   display: block;
   padding: 0.3rem 1rem;
}

<!--
버튼 -->.btn1 {
   /* padding:  1.12rem 1.5rem; */
   gap: 0.625rem;
   /* width: 12.5rem; */
   width: 100%;
   height: 3.125rem;
   /* Gray/900 */
   color: #FFFFFF;
   background: #161C24;
   border-radius: 0.313rem;
   /* Button/Button */
   font-family: 'Spoqa Han Sans Neo';
   font-style: normal;
   font-weight: 500;
   font-size: 1.0rem;
   line-height: 1.2rem;
   cursor: pointer;
}

.btn1:disabled {
   color: #FFFFFF;
   background: #C4CDD5;
   cursor: default;
}

/* join 버튼 */
.btn2 {
   padding: 1.125rem 1.5rem;
   gap: 0.625rem;
   /* width: 18.813rem; */
   color: #FFFFFF;
   font-family: 'Spoqa Han Sans Neo';
   font-style: normal;
   font-weight: 500;
   line-height: 0.5rem;
   /* identical to box height */
   text-align: center;
   /* Gray/900 */
   background: #161C24;

    line-height: 0px;
    align-items: center;
    border: 0px;
    border-radius: 0.75rem;
    transition: 0.3s;
}

.btn2:disabled {
   color: #FFFFFF;
   background: #C4CDD5;
   cursor: default;
}

.btn2:hover{
	background: #454F5B;
	color:white;
}

.btn3 {
   /* display: block; */
   /* flex-direction: row;
justify-content: center;
align-items: center; */
   padding: 1.125rem 1.5rem;
   gap: 0.625rem;
   width: 11.625rem;
   height: 3.75rem;
   background: #161C24;
   border-radius: 1.25rem;
   font-family: 'Spoqa Han Sans Neo';
   font-style: normal;
   font-weight: 500;
   font-size: 1.2rem;
   line-height: 1.5rem;
   text-align: center;
   color: #FFFFFF;
}

.btn5 {
   padding: 1.125rem 1.5rem;
   gap: 0.625rem;
   width: 18.813rem;
   height: 3.75rem;
   /* Gray/900 */
   background: #161C24;
   border-radius: 1.25rem;
   font-family: 'Spoqa Han Sans Neo';
   font-style: normal;
   font-weight: 500;
   font-size: 1.23rem;
   line-height: 1.5rem;
   /* identical to box height */
   text-align: center;
   color: #FFFFFF;
}

.container, .container-fluid, .container-lg, .container-md,
   .container-sm, .container-xl, .container-xxl {
   overflow-x: hidden;
}

input{
flex-direction: row;
align-items: center;
padding: 10px 12px;
gap: 10px;



/* bs-white */

background: #FFFFFF;
border: 1px solid #CFD4D9;
box-shadow: 0px 0px 0px #CBDAFC;
border-radius: 0.75rem;
min-width: 28.125rem;
}

.modal-body {
   text-align: center;
}
.h3_2{
      margin-bottom: 0.75rem;
   display: inline-block;
   /* Headline/H3 */
   font-family: 'Spoqa Han Sans Neo';
   font-style: normal;
   font-weight: 400;
   font-size: 1.25rem;
   line-height: 1.25rem;
   display: inline-block;
}
.password{
width: 28.125rem;
}
.kakaopw{
color:#febd1a;
}
.kakaopw:hover{
color:#f9e000;
}
</style>
</head>
<body style="overflow-x: hidden;  ">

      <div class="container-fluid"
         style="background-color: white; ">
         <div class="container">
            <c:choose>
            <c:when test="${loginEmail =='admin@palet.com'}">
            <div class="row" id="container1">
               <nav class="navbar navbar-expand-md bg-light navbar-light">
                  <div class="container" id="navparent" style = "overflow:visible;">
                     <a class="navbar-brand" href="/" id="container"
                        style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>

                     <div style="height: 5rem;">
                        <button class="navbar-toggler" type="button"
                           data-bs-toggle="collapse" style="margin-top: 15px;"
                           data-bs-target="#collapsibleNavbar">
                           <span class="navbar-toggler-icon"></span>
                        </button>
                     </div>

                     <div class="collapse navbar-collapse justify-content-end"
                        id="collapsibleNavbar">
                        <ul class="navbar-nav" style="background: white;">
                           <li class="nav-item"> <a id="About" class="nav-link" href="/about"
                                    style="padding-left:0px; padding-right:0px;">About</a> </li>
                                    
                               <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
                                       style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
                                       
                               <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
                                   style="padding-left:0px; padding-right:0px;">Program</a> </li> 
                                   
                               <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
                                       style="padding-left:0px; padding-right:0px;">Shop</a> </li>
                                       
                               <li class="nav-item"> <a id="Logout" class="nav-link logout"
                                       style="padding-left:0px; padding-right:0px;" href="#">Logout</a> </li>
                                       
                               <li class="nav-item"> <a id="Admin" class="nav-link" href="/admin/adminMain"
                                       style="padding-left:0px; padding-right:0px;">Admin</a> </li>
                        
                        </ul>
                     </div>
                  </div>
               </nav>
            </div>
            </c:when>
            
            <c:when test="${loginEmail != null}">
            <div class="row" id="container1">
               <nav class="navbar navbar-expand-md bg-light navbar-light">
                  <div class="container" id="navparent" style = "overflow:visible;">
                     <a class="navbar-brand" href="/" id="container"
                        style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>

                     <div style="height: 5rem;">
                        <button class="navbar-toggler" type="button"
                           data-bs-toggle="collapse" style="margin-top: 15px;"
                           data-bs-target="#collapsibleNavbar">
                           <span class="navbar-toggler-icon"></span>
                        </button>
                     </div>

                     <div class="collapse navbar-collapse justify-content-end"
                        id="collapsibleNavbar">
                        <ul class="navbar-nav" style="background: white;">
                           <li class="nav-item"> <a id="About" class="nav-link" href="/about"
                                 style="padding-left:0px; padding-right:0px;">About</a> </li>
                                 
                               <li class="nav-item"> <a id="Exhibition" class="nav-link" href="/Exhibition/toCurExhibition"
                                       style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
                                       
                               <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
                                   style="padding-left:0px; padding-right:0px;">Program</a> </li> 
                                   
                               <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
                                       style="padding-left:0px; padding-right:0px;">Shop</a> </li>
                                       
                               <li class="nav-item"> <a id="Cart" class="nav-link" href="/cart/cartlist"
                                          style="padding-left:0px; padding-right:0px;">Cart</a> </li>
                                          
                               <li class="nav-item"> <a id="Logout" class="nav-link logout"
                                       style="padding-left:0px; padding-right:0px;"href="#">Logout</a> </li>
                                       
                               <li class="nav-item"> <a id="Mypage" class="nav-link" href="/mypage/main"
                                       style="padding-left:0px; padding-right:0px;">Mypage</a> </li>
                        
                        </ul>
                     </div>
                  </div>
               </nav>
            </div>
            </c:when>
            
            <c:otherwise>
            <div class="row" id="container1">
               <nav class="navbar navbar-expand-md bg-light navbar-light">
                  <div class="container" id="navparent" style = "overflow:visible;">
                     <a class="navbar-brand" href="/" id="container"
                        style="padding: 0px;"><img src="/images/Logo.svg" border=0></a>

                     <div style="height: 5rem;">
                        <button class="navbar-toggler" type="button"
                           data-bs-toggle="collapse" style="margin-top: 15px;"
                           data-bs-target="#collapsibleNavbar">
                           <span class="navbar-toggler-icon"></span>
                        </button>
                     </div>

                     <div class="collapse navbar-collapse justify-content-end"
                        id="collapsibleNavbar">
                        <ul class="navbar-nav" style="background: white;">
                           <li class="nav-item"><a id="About" class="nav-link"
                              href="/about" style="padding-left: 0px; padding-right: 0px;">About</a>
                           </li>
                        
                               <li class="nav-item"> <a id="Exhibition" class="nav-link" 
                               href="/Exhibition/toCurExhibition"
                                   style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
                                   
                               <li class="nav-item"> <a id="Program" class="nav-link" href="/program/toProgram"
                                   style="padding-left:0px; padding-right:0px;">Program</a> </li> 
                                          
                               <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
                                   style="padding-left:0px; padding-right:0px;">Shop</a> </li>
                                   
                               <li class="nav-item"> <a id="Login" class="nav-link" href="/member/loginPage"
                                   style="padding-left:0px; padding-right:0px;">Login</a> </li>
                                   
                               <li class="nav-item"> <a id="Signup" class="nav-link" href="/member/join"
                                   style="padding-left:0px; padding-right:0px;">Sign up</a> </li>
                        
                        </ul>
                     </div>
                  </div>
               </nav>
            </div>
            </c:otherwise>
            </c:choose>
         </div>
         </div>
      <div class="container">
         <div class="row mypage-wrap">
            <div class="row" id="row1">

            <div class="col-12 d-block d-lg-none H1 small-navi">
               <button id="select">MY PAGE</button>
            </div>


            <div class="navi">
               <a href="/mypage/main" style="font-size: 1.625rem;" class="main"> <strong
                  class="menu-title">My Page</strong>
               </a>
               <div class="navi-menu">
                  <ul class="navi-ul">
                     <li>
                        <div class="body4">My Tickets</div>
                        <ul>
                           <li class="body3"><a href="/mypage/myTicket">티켓예매 목록</a></li>
                        </ul>
                     </li>
                     <li>
                        <div class="body4">My Shopping</div>
                        <ul>
                           <li class="body3"><a href="/mypage/myShopping">주문내역</a></li>
                           <li class="body3"><a href="/mypage/refund">취소/반품 내역</a></li>
                           <li class="body3"><a href="/delivery/selectAllAddress">배송지
                                 관리</a></li>
                        </ul>
                     </li>
                     <li>
                        <div class="body4">My Info</div>
                        <ul>
                           <li class="body3"><a href="/member/rating">나의 회원등급</a></li>
                           <li class="body3"><a href="/coupon/couponlist">나의 쿠폰</a></li>
                           <li class="body3"><a href="/member/mypage">개인정보 변경/탈퇴</a></li>
                        </ul>
                     </li>
                  </ul>
               </div>
            </div>






            <div class="content" style="padding-left: 50px;">
               <div class="row" id="row1" style="padding:1rem; padding-bottom:0px;">
                  <div class="col-sm-12 main-info">
                     개인정보 변경/탈퇴
                  </div>
               </div>


<!--                개인정보 수정 -->
               <div class="row check" id="row1" style="padding:1rem; padding-top:0px;">
               <div class="col-2 h3_2" style="padding-top: 10px;">이메일  </div>
               <div class="col-9 h3_2"  style="padding-top: 10px;">  ${dto.email } </div>
                 

				  <div class="col-2 h3_2"  style=" padding-top: 10px; ">이름  </div>
                  <div class="col-3 rp-0 h3_2"
                     style=" padding-top: 10px; ">
                     ${dto.name }
                     <c:if test="${dto.name==null }">이름을 입력해주세요.</c:if>
                  </div>
                 
                  <!-- Modal -->
                  <form action="/member/modiname" method="post"
                     accept-charset="utf-8">
                     <div class="modal fade" id="staticBackdrop1"
                        data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                        aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                           <div class="modal-content">
                              <div class="modal-header">
                                 <h5 class="modal-title" id="staticBackdropLabel">이름변경</h5>
                                 <button type="button" class="btn-close"
                                    data-bs-dismiss="modal" aria-label="Close"></button>
                              </div>
                              <div class="modal-body">
                                 <input type="text" id="name" maxlength="5" name="name"
                                    placeholder="이름을 작성해주세요"><br> <div style="text-align:left;text-align:center;padding-left:0.75rem;padding-top:0.25rem;">이름은
                                    최대 5글자까지 입니다.</div>
                              </div>
                              <div class="modal-footer">
                                 <button type="submit" id="namebtn" class="btn2" disabled="disabled">확인</button>
                                 <button type="button" class="btn2 cancel" data-bs-dismiss="modal">닫기</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </form>

                  
                  
            
                <div class="col-sm-12"
                     style="margin-bottom: 5px; margin-top:1rem;">
                       <button type="button" data-bs-toggle="modal" class="btn2"
                        style="width: 25%; min-width: 100px; max-width: 100px; height:2.7rem;"
                        data-bs-target="#staticBackdrop1">수정</button>
                     <button type="button" data-bs-toggle="modal" class="btn2"
                        style="height: 2.7rem; width: 11rem;"
                        data-bs-target="#staticBackdrop">비밀번호 변경</button>
                  </div>
                  <div class="col-sm-12">
                     <!-- Modal -->
                     <form action="/member/modipw" method="post"
                        accept-charset="utf-8">
                        <div class="modal fade" id="staticBackdrop"
                           data-bs-backdrop="static" data-bs-keyboard="false"
                           tabindex="-1" aria-labelledby="staticBackdropLabel"
                           aria-hidden="true">
                           <div class="modal-dialog modal-dialog-centered">
                              <div class="modal-content">
                                 <div class="modal-header">
                                    <h5 class="modal-title" class="h2" id="staticBackdropLabel">비밀번호
                                       변경</h5>
                                    <button type="button" class="btn-close"
                                       data-bs-dismiss="modal" aria-label="Close"></button>
                                 </div>
                                 <div class="modal-body">
                                    <input type="password" id="newpw" maxlength="12" name="pw"
                                       placeholder="비밀번호를 입력해주세요" ><br>
                                    <span id="pwck" style="display: none">비밀번호 확인중</span><br>
                                    <input type="password" id="newpwck" maxlength="12"
                                       placeholder="비밀번호를 다시 입력해주세요"><br>
                                        <span id="pwck2" style="display: none">비밀번호 확인중</span><br>
                                     <a class="kakaopw" href="https://accounts.kakao.com/weblogin/account/security/change_password">카카오 로그인시 비밀번호 변경은 여기를 눌러주세요</a>
                                 </div>
                                 <div class="modal-footer">
                                    <button type="submit" class="btn2" id="pwbtn"
                                       disabled="disabled">확인</button>
                                    <button type="button" class="btn2 cancel" data-bs-dismiss="modal">닫기</button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </form>
                  </div>
                     </div>
<!--                회원 탈퇴 -->
               <div class="row check" id="row1" style="padding:1rem;">
                  <div class="col-12 main-info" style="margin-top:3.8rem;">
                        회원 탈퇴 주의사항
                  </div>
                  <div class="col-12 body4" style="margin-top:1rem;">
                     <div class="col-12 h3_2" style="">
                        - 회원탈퇴는 1회 확인후 즉시 탈퇴됩니다.
                     </div>
                     <div class="col-12 h3_2" >
                        - 회원탈퇴시 모든 정보는 즉시 삭제됩니다.
                     </div>
                  </div>
                  <div class="col-sm-12" style=" padding-top: 2rem;">
                     <button type="button" class="btn2" id="delbtn"
                        style="height: 2.75rem; width: 15rem; ">회원탈퇴하기</button>
                  </div>
               </div>
               
               
               
               <!--       <div class=row> -->
               <!--          <div class="col-12"> -->
               <%--             (${dto.postcode }) ${dto.address1 } ${dto.address2 }  --%>
               <!--             <button type="button" data-bs-toggle="modal" -->
               <!--                data-bs-target="#staticBackdrop3">수정</button> -->
               <!--             <form action="/member/modiaddress" method="post" accept-charset="utf-8"> -->
               <!--             <div class="modal fade" id="staticBackdrop3" -->
               <!--                data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" -->
               <!--                aria-labelledby="staticBackdropLabel" aria-hidden="true"> -->
               <!--                <div class="modal-dialog modal-dialog-centered"> -->
               <!--                   <div class="modal-content"> -->
               <!--                      <div class="modal-header"> -->
               <!--                         <h5 class="modal-title" id="staticBackdropLabel">이름변경</h5> -->
               <!--                         <button type="button" class="btn-close" data-bs-dismiss="modal" -->
               <!--                            aria-label="Close"></button> -->
               <!--                      </div> -->
               <!--                      <div class="modal-body"> -->
               <!--                         <input type="text" id="postcode" placeholder="우편번호" name="postcode" disabled="disabled"> -->
               <!--                               <input type="button" onclick="execDaumPostcode()" value="찾기"><br> -->
               <!--                               <input type="text" class="longtext" id="jibunAddress" name="address1" disabled="disabled"> -->
               <!--                               <input type="text" class="longtext" id="detailAddress" name="address2" placeholder="상세주소를 입력해주세요"> -->
               <!--                      </div> -->
               <!--                      <div class="modal-footer"> -->
               <!--                         <button type="submit">확인</button> -->
               <!--                         <button type="button" data-bs-dismiss="modal">닫기</button> -->
               <!--                      </div> -->
               <!--                   </div> -->
               <!--                </div> -->
               <!--             </div> -->
               <!--             </form> -->

               <!--          </div> -->
               <!--       </div> -->
            </div>
         </div>
         </div>
      </div>

      <!-- 푸터단 -->

      <div class="row" id="footer">
         <div class="container">
            <div class="row" >
               <div class="col-12 H3" style="color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
               <div class="col-12 body2" style="color: #637381;">사업자 등록번호 :
                  123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div>
               <br>
               <div class="col-12 body2" style="color: #637381;">3호선 경복궁역 지하
                  1층 | contact@palet.com</div>

            </div>
         </div>
      </div>


   <script>
 
   
   
   
   Kakao.init('feb50c309d28b138aefe9ddc94d76870');
    Kakao.isInitialized();
    
     //sessionStorage에 저장된 사용자 엑세스 토큰 받아온다.
   window.Kakao.Auth.setAccessToken(JSON.parse(sessionStorage.getItem('AccessKEY')));
   
   $( window ).resize(function() {   //창크기 변화 감지
      open_chatroom();
   });
   
   function open_chatroom(){ 
      var windowWidth = $( window ).width();
      if(windowWidth < 992) {      //창 가로 크기가 500 미만일 경우  
         $(".navi-menu").css({"display":"none"});
      } else {      //창 가로 크기가 500보다 클 경우  
         $(".navi-menu").css({"display":"block"});
      }
      }
   $("#registration").on("click",function(){
      window.open("/coupon/toregistration", "",
      "top=100,left=200,width=700,height=500");
      })
   //선택박스 화살표 방향 이미지
   let click = true;
   $("#select").on("click",function(){
      if(click==false){
         $("#select").css({"background":"url('/images/uparrow.png')  no-repeat 97% 50%/15px auto ","background-size": "1.596rem"});
         $(".navi-menu").css({"display":"none"});
         
         click = true;
      }else{
         $("#select").css({"background":"url('/images/downarrow.png')  no-repeat 97% 50%/15px auto ","background-size": "01.596rem"});
         $(".navi-menu").css({"display":"block"});
         click = false;
      }
   });
   function execDaumPostcode() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  document.getElementById('postcode').value = data.zonecode;
                  document.getElementById("jibunAddress").value = data.jibunAddress;
               }
            }).open();
   }//다음 주소찾기
   /* $("#delbtn").on("click", function() {
      let resurt = confirm("정말회원을 탈퇴하시겟습니까? 모든 정보가 삭제됩니다.");
      if (resurt) {
         
         location.href = "/member/delmember";
      }

   }) */
   
   $("#delbtn").on("click", function() {
      let result = confirm("정말회원을 탈퇴하시겟습니까? 모든 정보가 삭제됩니다.");
      if (result) {
         if(sessionStorage.getItem('AccessKEY') == null) {
            location.href = "/member/delmember";
          } else {
             alert("사용자의 계정이 탈퇴 되었습니다.");
             Kakao.API.request({
                   url: '/v1/user/unlink',
                   success: function(response) {
//                        console.log(response);
                       //callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
                       Kakao.Auth.logout();
                       location.href = "/member/delmember";
                   },
                   fail: function(error) {
//                        console.log('탈퇴 미완료')
//                        console.log(error);
                   }
               })
             
          }
      }

   })
   
   
            
   
   
//    $("#phone").on("keyup", function() {
//       let phone = $("#phone").val();
//       let phoneRegex = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
//       let phoneResult = phoneRegex.test;
//       if (!phoneResult) {
//          $("#phone").css("border", "1px solid #FF4842");
//          $("#phoneck").css("color", "#FF4842");
//          $("#phoneck").css("display", "inline");
//          $("#phoneokbtn").attr("disabled", "true");
//          $("#phoneck").text("올바른 핸드폰번호를 입력해주세요.");
//       }
//       if (phoneResult) {
//          $("#phone").css("border", "1px solid #1890FF");
//          $("#phoneck").css("color", "#1890FF");
//          $("#phoneck").css("display", "inline");
//          $("#phoneck").text("사용할수 있는 번호입니다.");
//          $("#phoneokbtn").removeAttr("disabled");
//       }
//    })
   let isPwOk = false;
   let isPwOk2 = false;
   // 비밀번호 확인
   $("#newpw").on({
      keyup : function() {
         let pw = $("#newpw").val();
         let pwRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$/gm;
         let pwResult = pwRegex.test(pw);

         if (!pwResult) {
            $("#newpw").css("border", "1px solid #FF4842");
            $("#pwck").css("color", "#FF4842");
            $("#pwck").css("display", "inline");
            $("#pwck").text("영문 소문자, 대문자, 숫자를 조합하여 8~12자로 작성");
            isPwOk = false;
         }
         if (pwResult) {
            $("#newpw").css("border", "1px solid #1890FF");
            $("#pwck").css("color", "#1890FF");
            $("#pwck").css("display", "inline");
            $("#pwck").text("사용할수 있는 비밀번호 입니다.");
            isPwOk = true;
         }
         if($("#newpw").val() == ''||$("#newpwck").val()==''){
            return false;
         }
         if ($("#newpw").val() == $("#newpwck").val()) {
            isPwOk2 = true;
         } else {
            isPwOk2 = false;
         }
         if (isPwOk2) {
            $("#newpwck").css("border", "1px solid #1890FF");
            $("#pwck2").css("color", "#1890FF");
            $("#pwck2").css("display", "inline");
            $("#pwck2").text("비밀번호가 같습니다.");
         }
         if (isPwOk2 && isPwOk) {
            $("#pwbtn").removeAttr("disabled");
         } else if ((!isPwOk2) || (!isPwOk)) {
            $("#pwbtn").attr("disabled", "true");
         }
      },
      focusout : function() {
         if ($("#newpw").val() == $("#newpwck").val()) {
            isPwOk2 = true;
         } else {
            isPwOk2 = false;
         }
         if($("#newpw").val() == ''||$("#newpwck").val()==''){
            return false;
         }
         if (!isPwOk2) {
            $("#newpwck").css("border", "1px solid #FF4842");
            $("#pwck2").css("color", "#FF4842");
            $("#pwck2").css("display", "inline");
            $("#pwck2").text("비밀번호가 다릅니다.");
         }
         if (isPwOk2) {
            $("#newpwck").css("border", "1px solid #1890FF");
            $("#pwck2").css("color", "#1890FF");
            $("#pwck2").css("display", "inline");
            $("#pwck2").text("비밀번호가 같습니다.");
         }
         if (isPwOk2 && isPwOk) {
            $("#pwbtn").removeAttr("disabled");
         } else if ((!isPwOk2) || (!isPwOk)) {
            $("#pwbtn").attr("disabled", "true");
         }
      }

   })
   $("#newpwck").on({
      keyup : function() {

         if ($("#newpw").val() == $("#newpwck").val()) {
            isPwOk2 = true;
         } else {
            isPwOk2 = false;
         }
         if (!isPwOk2) {
            $("#newpwck").css("border", "1px solid #FF4842");
            $("#pwck2").css("color", "#FF4842");
            $("#pwck2").css("display", "inline");
            $("#pwck2").text("비밀번호가 다릅니다.");
         }
         if (isPwOk2) {
            $("#newpwck").css("border", "1px solid #1890FF");
            $("#pwck2").css("color", "#1890FF");
            $("#pwck2").css("display", "inline");
            $("#pwck2").text("비밀번호가 같습니다.");
         }
         if (isPwOk2 && isPwOk) {
            $("#pwbtn").removeAttr("disabled");
         } else if ((!isPwOk2) || (!isPwOk)) {
            $("#pwbtn").attr("disabled", "true");
         }
         if ($("#newpw").val() == $("#newpwck").val()) {
            isPwOk2 = true;
         } else {
            isPwOk2 = false;
         }
      },
      focusout : function() {
         if (isPwOk2 && isPwOk) {
            $("#pwbtn").removeAttr("disabled");
         } else if ((!isPwOk2) || (!isPwOk)) {
            $("#pwbtn").attr("disabled", "true");
         }
         if ($("#newpw").val() == $("#newpwck").val()) {
            isPwOk2 = true;
         } else {
            isPwOk2 = false;
         }
      }
   })
   
   //취소 버튼 클릭시 내용 초기화
   $(".cancel").on("click",function(){
      $("#newpw").val('');
      $("#newpw").css("border", "1px solid black");
      $("#pwck").css("display", "none");
      
      $("#newpwck").css("border", "1px solid black");
      $("#newpwck").val('');
      $("#pwck2").css("display", "none");
      
      $("#phone").val('');
      $("#phoneck").css("display", "none");
      $("#name").val('');
   })
   $("#name").on("keyup",function(){
      if(!$("#name").val()==''){
         $("#namebtn").removeAttr("disabled");
      }else if($("#name").val()==''){
         $("#namebtn").attr("disabled", "true");
      }
   })
   
   
   
   $(".logout").on("click", function(){
         
         if (!Kakao.Auth.getAccessToken()) {
//             console.log('Not logged in.');
            location.href="/member/logout";
             return ;
         }
         
          Kakao.Auth.logout(function() {
//                console.log(Kakao.Auth.getAccessToken());
               location.href="/member/logout";
             });
         return true;
      });
   </script>
   <!-- Channel Plugin Scripts -->
<script>
    (function() {
      var w = window;
      if (w.ChannelIO) {
        return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
      }
      var ch = function() {
        ch.c(arguments);
      };
      ch.q = [];
      ch.c = function(args) {
        ch.q.push(args);
      };
      w.ChannelIO = ch;
      function l() {
        if (w.ChannelIOInitialized) {
          return;
        }
        w.ChannelIOInitialized = true;
        var s = document.createElement('script');
        s.type = 'text/javascript';
        s.async = true;
        s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
        s.charset = 'UTF-8';
        var x = document.getElementsByTagName('script')[0];
        x.parentNode.insertBefore(s, x);
      }
      if (document.readyState === 'complete') {
        l();
      } else if (window.attachEvent) {
        window.attachEvent('onload', l);
      } else {
        window.addEventListener('DOMContentLoaded', l, false);
        window.addEventListener('load', l, false);
      }
    })();
    ChannelIO('boot', {
      "pluginKey": "7303e411-f120-4c6c-812a-28e0867beb8a"
    });
  </script>
<!-- End Channel Plugin -->
</body>
</html>