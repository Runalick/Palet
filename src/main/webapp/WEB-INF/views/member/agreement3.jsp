<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마케팅 정보 수신 및 활용 동의</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<style>        
	.h3 {
			padding-top: 40px;
            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 700;
            font-size: 1.25rem;
            line-height: 1.5rem;
            /* identical to box height */


            /* Gray/900 */

            color: #161C24;
        }
        
   .h4 {
			padding-top: 20px;
            margin-bottom: 0px;
            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 700;
            font-size: 1rem;
            line-height: 1.875rem;
            /* identical to box height, or 188% */


            color: #000000;

        }
        
    .body {


            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 400;
            font-size: 1rem;
            line-height: 1.75rem;
            /* identical to box height, or 175% */

            margin-bottom: 0px;
            color: #000000;


        }
        
    #close {
    	/* padding:  1.12rem 1.5rem; */
            gap: 0.625rem;

            /* width: 12.5rem; */
			width: 12.5rem;
            height: 3.125rem;
            
            /* Gray/900 */
            color:#FFFFFF;
            background: #161C24;
            border-radius: 0.313rem;
            /* Button/Button */

            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 500;
            font-size: 1.0rem;
            line-height: 1.2rem;
            margin-top: 40px;
            margin-bottom: 50px;
    }
</style>
<body>
<div class="h3">마케팅 정보 수신 및 활용 동의</div>
<hr style="background:#454F5B ;height: 3px; margin-bottom: 10px;">
<div class="body">
(주)팔레트에서 제공하는 이벤트 및 혜택 등 다양한 정보를 문자메시지, 이메일, 앱 푸시 알림 등으로 받아보실 수 있습니다. 마케팅 정보 수신 및 활용 동의 여부와 관계없이 회원가입 및 서비스를 이용하실 수 있습니다. 또한 서비스의 중요 안내사항 및 주문/배송에 대한 정보는 마케팅 정보 수신 동의 여부와 관계없이 발송됩니다.		
</div>

<div class="h4">1. 수집·이용목적	</div>
<ul>
	<li>마케팅 및 분석</li>
	<li>프로모션</li>
</ul>	
		
<div class="h4">2. 수집·이용항목</div>
<ul>
	<li>회원 정보(이름, 휴대폰 번호, 이메일, 성별, 생년월일, 회원등급, 가입일시)	</li>
	<li>쇼핑 및 서비스 이용 정보(장바구니의 상품, 구매일시, 배송지역)</li>
	<li>수집∙이용항목은 마케팅 및 분석, 프로모션의 목적에 따라 달라질 수 있으며 수집 시점에 안내 후 동의여부를 별도 확인함</li>
</ul>		

<div class="h4">3. 보유 및 이용기간</div>	
<ul>
	<li>정보 삭제 또는 이용 정지 요청 및 회원탈퇴 시 즉시 삭제	</li>
</ul>	
	
<div class="h4">4. 마케팅 활용 정보 수집 방법	</div>
<ul>
	<li>희망자에 한해 직접 입력	</li>
</ul>	


<div align=center>
	<button id="close">Close</button>
</div>
<script>
	$("#close").on("click", function(){
		window.close();
	})
</script>
</body>
</html>