<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'rel='stylesheet' type='text/css'>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<link rel="stylesheet" href="/css/member/mypage.css">
</head>
<body>

<div class="container-fluid" id=navparent>
        <div class="container">
            <div class="row" id="container1">
                <nav class="navbar navbar-expand-sm bg-light navbar-light">
                    <div class="container" id="navparent"> <a class="navbar-brand" href="#" id="container"
                            style="padding :0px;"><img src="/images/Logo.svg" border=0></a> <button class="navbar-toggler"
                            type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar"> <span
                                class="navbar-toggler-icon"></span> </button>
                        <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
                            <ul class="navbar-nav">
                                <li class="nav-item"> <a id="About" class="nav-link" href="#"
                                        style="padding-left:0px; padding-right:0px;">About</a> </li>
                                <li class="nav-item"> <a id="Exhibition" class="nav-link" href="#"
                                        style="padding-left:0px; padding-right:0px;">Exhibition</a> </li>
                                <li class="nav-item"> <a id="Shop" class="nav-link" href="/shop/toShop"
                                        style="padding-left:0px; padding-right:0px;">Shop</a> </li>
                                <li class="nav-item"> <a id="Help" class="nav-link" href="#"
                                        style="padding-left:0px; padding-right:0px;">Help</a> </li>
                                <li class="nav-item"> <a id="Login" class="nav-link" href="/member/loginPage"
                                        style="padding-left:0px; padding-right:0px;">Login</a> </li>
                                <li class="nav-item"> <a id="Signup" class="nav-link" href="/member/join"
                                        style="padding-left:0px; padding-right:0px;">Sign up</a> </li>
                                <li class="nav-item"> <a id="Admin" class="nav-link" href="/admin/adminMain"
                                		style="padding-left:0px; padding-right:0px;">Admin</a> </li>
                                <li class="nav-item"> <a id="Mypage" class="nav-link" href="/member/mypage"
                                		style="padding-left:0px; padding-right:0px;">mypage</a> </li>	
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <div class="container-fluid" style="min-width: 600px;">
    <div class="row" style="padding-top: 100px;">
	<div class="container">
		<div class="col-12">
			<a href="/coupon/couponlist">쿠폰리스트보기</a><br>
			<a href="/coupon/toregistration">쿠폰등록하기</a>
		</div>
		<div class="row" id="row1">
			<div class="h2" style="text-align: left; margin-left: 100px; margin-bottom: 20px;">My Page / My info.</div>
		</div>
		<div class="col-12">
		<div class=row>
			<div class="col-12">
			<div class="row">
			<div class="col-12 h3" style="height: 150%; padding-bottom: 10px;">
			${dto.email }
			</div>
			</div>
		</div>
		<div class=row>
			<div class="col-12" style="margin-bottom: 5px;">
				<button type="button" data-bs-toggle="modal" class="btn1"
					data-bs-target="#staticBackdrop">비밀번호 변경</button>
			</div>
			<div class="col-12">
				<!-- Modal -->
				<form action="/member/modipw" method="post" accept-charset="utf-8">
				<div class="modal fade" id="staticBackdrop"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" class="h2" id="staticBackdropLabel">비밀번호 변경</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<input type="password" id="newpw" maxlength="12" name="pw" placeholder="비밀번호를 입력해주세요"><br>
								<span id="pwck" style="display:none">비밀번호 확인중</span><br>
								<input type="password" id="newpwck" maxlength="12" placeholder="비밀번호를 다시 입력해주세요">
								<span id="pwck2" style="display:none">비밀번호 확인중</span><br>
							</div>
							<div class="modal-footer">
								<button type="submit" class="btn2" id="pwbtn" disabled="disabled">확인</button>
								<button type="button" class="btn2" data-bs-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
		<div class=row>
			<div class="col-2 rp-0 h3" style="min-width: 150px; font-size: 150%; padding-top: 10px;">
				${dto.name }
				
				</div>
				<div class="col-3" style="margin-bottom: 5px;">
				<button type="button" data-bs-toggle="modal" class="btn1" style="width: 50%; min-width: 50px;"
					data-bs-target="#staticBackdrop1">수정</button>
					</div>
				<!-- Modal -->
				<form action="/member/modiname" method="post" accept-charset="utf-8">
				<div class="modal fade" id="staticBackdrop1"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">이름변경</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<input type="text" id="name" maxlength="5" name="name" placeholder="이름을 작성해주세요"><br>
								<span>이름은 최대 5글자까지 입니다.</span>
							</div>
							<div class="modal-footer">
								<button type="submit" class="btn2">확인</button>
								<button type="button" class="btn2" data-bs-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		<div class=row>
			<div class="col-2 rp-0 h3" style="min-width: 150px; font-size: 150%; padding-top: 10px;">
				${dto.phone }
			</div>
			<div class="col-3" style="margin-bottom: 5px;">
				<button type="button" data-bs-toggle="modal" class="btn1" style="width: 50%; min-width: 50px;"
					data-bs-target="#staticBackdrop2">수정</button>
			</div>		
				 <!-- Modal -->
				<form action="/member/modiphone" method="post" accept-charset="utf-8">
				<div class="modal fade" id="staticBackdrop2"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">핸드폰 번호 변경</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<input type="text" id="phone" maxlength="11" name="phone" placeholder="전화번호를 작성해주세요" pattern="^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$"><br>
								<span style="display: none;" id="phoneck">핸드폰번호를 숫자만입력해주세요</span>
							</div>
							<div class="modal-footer">
								<button type="submit" class="btn2" disabled="disabled" id="phoneokbtn">확인</button>
								<button type="button" class="btn2" data-bs-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		<div class="row">
			<div class="col-12">
				<button type="button" class="btn1" id="delbtn">회원탈퇴하기</button>
			</div>
		</div>
<!-- 		<div class=row> -->
<!-- 			<div class="col-12"> -->
<%-- 				(${dto.postcode }) ${dto.address1 } ${dto.address2 }  --%>
<!-- 				<button type="button" data-bs-toggle="modal" -->
<!-- 					data-bs-target="#staticBackdrop3">수정</button> -->
<!-- 				<form action="/member/modiaddress" method="post" accept-charset="utf-8"> -->
<!-- 				<div class="modal fade" id="staticBackdrop3" -->
<!-- 					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" -->
<!-- 					aria-labelledby="staticBackdropLabel" aria-hidden="true"> -->
<!-- 					<div class="modal-dialog modal-dialog-centered"> -->
<!-- 						<div class="modal-content"> -->
<!-- 							<div class="modal-header"> -->
<!-- 								<h5 class="modal-title" id="staticBackdropLabel">이름변경</h5> -->
<!-- 								<button type="button" class="btn-close" data-bs-dismiss="modal" -->
<!-- 									aria-label="Close"></button> -->
<!-- 							</div> -->
<!-- 							<div class="modal-body"> -->
<!-- 							   <input type="text" id="postcode" placeholder="우편번호" name="postcode" disabled="disabled"> -->
<!--                				   <input type="button" onclick="execDaumPostcode()" value="찾기"><br> -->
<!--                				   <input type="text" class="longtext" id="jibunAddress" name="address1" disabled="disabled"> -->
<!--                				   <input type="text" class="longtext" id="detailAddress" name="address2" placeholder="상세주소를 입력해주세요"> -->
<!-- 							</div> -->
<!-- 							<div class="modal-footer"> -->
<!-- 								<button type="submit">확인</button> -->
<!-- 								<button type="button" data-bs-dismiss="modal">닫기</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				</form> -->

<!-- 			</div> -->
<!-- 		</div> -->
	</div>
	</div>
	</div>
	</div>
	</div>
		<div class="row" id="footer" style="margin-top: 10px;">
            <div class="container">
                <div class="row" id="row1">
                    <div class="col-12 h3 d-none d-sm-block" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
                    <div class="col-12 body2 d-none d-sm-block" style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2 d-none d-sm-block" style = "color: #637381; margin-bottom: 3.75rem;">3호선 경복궁역 지하 1층 | contact@palet.com</div>

                </div>
            </div>
        </div>

	
<script type="text/javascript">

function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("jibunAddress").value = data.jibunAddress;
        }
    }).open();
}//다음 주소찾기
	$("#delbtn").on("click",function(){
		let resurt = confirm("정말회원을 탈퇴하시겟습니까? 모든 정보가 삭제됩니다.");
		if(resurt){
			location.href="/member/delmember";
		}
		
	})
	$("#phone").on("keyup",function(){
		let phone =$("#phone").val();
		let phoneRegex = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
		let phoneResult = phoneRegex.test(phone);
		if(!phoneResult){
			$("#phone").css("border", "1px solid red");
     	    $("#phoneck").css("color", "red");
    	    $("#phoneck").css("display","inline");
    	    $("#phoneokbtn").attr("disabled","true");
    	    $("#phoneck").text("올바른 핸드폰번호를 입력해주세요.");
		}
		if(phoneResult){
			$("#phone").css("border", "1px solid blue");
     	    $("#phoneck").css("color", "blue");
    	    $("#phoneck").css("display","inline");
    	    $("#phoneck").text("사용할수 있는 번호입니다.");
    	    $("#phoneokbtn").removeAttr("disabled");
		}
	})
	let isPwOk = false;
    let isPwOk2 = false;
    // 비밀번호 확인
           $("#newpw").on({keyup:function(){
    	   let pw = $("#newpw").val();
           let pwRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$/gm;
           let pwResult = pwRegex.test(pw);
           
    	   if (!pwResult) {
        	   $("#newpw").css("border", "1px solid red");
        	   $("#pwck").css("color", "red");
        	   $("#pwck").css("display","inline");
    			$("#pwck").text(
    					"영문 소문자, 대문자, 숫자를 조합하여 8~12자로 작성");
    			isPwOk = false;
           }
    	   if(pwResult){
    		   $("#newpw").css("border", "1px solid blue");
    		   $("#pwck").css("color", "blue");
        	   $("#pwck").css("display","inline");
    			$("#pwck").text(
    					"사용할수 있는 비밀번호 입니다.");
    		   isPwOk = true;
    	   }
       },
    	   focusout : function(){
    		   if($("#newpw").val()==$("#newpwck").val()){
        		   isPwOk2 = true;   
        	   }else{
        		   isPwOk2 = false;
        	   }
    		   if (!isPwOk2) {
            	   $("#newpwck").css("border", "1px solid red");
            	   $("#pwck2").css("color", "red");
            	   $("#pwck2").css("display","inline");
        			$("#pwck2").text(
        					"비밀번호가 다릅니다.");
               }
               if(isPwOk2){
        		   $("#newpwck").css("border", "1px solid blue");
        		   $("#pwck2").css("color", "blue");
            	   $("#pwck2").css("display","inline");
        			$("#pwck2").text(
        					"비밀번호가 같습니다.");
        	   }
               if(isPwOk2 && isPwOk && inok){
    			   $("#pwbtn").removeAttr("disabled");
    		   }else if((!isPwOk2)||(!isPwOk)){
    			   $("#pwbtn").attr("disabled","true");
    		   }
    	   }
       
       })
       $("#newpwck").on({keyup:function(){
    	   
    	   if($("#newpw").val()==$("#newpwck").val()){
    		   isPwOk2 = true;   
    	   }else{
    		   isPwOk2 = false;
    	   }
           if (!isPwOk2) {
        	   $("#newpwck").css("border", "1px solid red");
        	   $("#pwck2").css("color", "red");
        	   $("#pwck2").css("display","inline");
    			$("#pwck2").text(
    					"비밀번호가 다릅니다.");
           }
           if(isPwOk2){
    		   $("#newpwck").css("border", "1px solid blue");
    		   $("#pwck2").css("color", "blue");
        	   $("#pwck2").css("display","inline");
    			$("#pwck2").text(
    					"비밀번호가 같습니다.");
    	   }
       },
    	   focusout : function(){
    		   if(isPwOk2 && isPwOk){
    			   $("#pwbtn").removeAttr("disabled");
    		   }else if((!isPwOk2)||(!isPwOk)){
    			   $("#pwbtn").attr("disabled","true");
    		   }
    		   if($("#newpw").val()==$("#newpwck").val()){
        		   isPwOk2 = true;   
        	   }else{
        		   isPwOk2 = false;
        	   }
    	   }
       })

</script>
</body>
</html>