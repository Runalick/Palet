<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Palet</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="/css/member/join.css">
</head>
<body>

	<div class="container-fluid">
		<div class="container-fluid"
			style="background-color: white; position: fixed;">
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
                                       style="padding-left:0px; padding-right:0px;">Logout</a> </li>
					                        
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
                                       style="padding-left:0px; padding-right:0px;">Logout</a> </li>
					                        
					                <li class="nav-item"> <a id="Mypage" class="nav-link" href="/member/mypage"
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
	
		<div class="row" style="padding-top: 150px;">
			<div class="container" style="max-width: 600px;">
				<div class="row" id="row1">
					<div class="h2">Sign up</div>
				</div>
				<div class="row">
					<form action="/member/signup" method="post">
					<div class="col">
						<div class="row"> 
							<div class="col-12 p-0 body2">이메일 아이디</div>
							<div class="col-8 p-0">
								<input type="text" id=email name="email"
									placeholder="이메일을 입력해주세요.">
							</div>
							<div class="col-4 px-3">
								<button type="button" class="btn1" id="sendmail" disabled>인증코드 보내기</button>
							</div>
						</div>
						<div class="row">
							<div class="col p-0">
								<div id="emailCheckResult"></div>
							</div>
						</div>
						<div class="row">
							<div class="col-12 p-0 body2" id="codetitle" style="display: none;">
								인증코드
							</div>
							<input type="text" id="emailKey" style="display: none;" value="no">
							<div class="col-8 p-0">
								<input type="text" id="emailKeyInput"
									style="display: none;" placeholder="인증키 입력">
							</div>
							<div class="col-4 px-3">
								<button type="button" class="btn1" id="okbtn" style="display: none;">인증확인</button>
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0 body2">비밀번호</div>
						</div>
						<div class="row"> 
							<div class="col-12 p-0">
								<input type="password" id=pw1 name="pw"
									placeholder="비밀번호를 입력해주세요">
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0">
								<div id="pw1CheckResult"></div>
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0 body2">
								비밀번호 확인
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0">
								<input type="password" id=pw2
									placeholder="비밀번호를 확인해주세요">
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0">
								<div id="pw2CheckResult"></div>
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0 body2">
								이름
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0">
								<input type="text" id=name name="name"
									placeholder="성명을 입력해주세요">
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0">
								<div id="nameCheckResult"></div>
							</div>
						</div>
						<div class="row my-3">
							<div class="col-12 p-0 body2">
								<input type="checkbox" id="allagree"> 전체 동의
							</div>
							<div class="col-10 p-0 body2">
								<input type="checkbox" id="agree1"> [필수] 이용약관 동의
							</div>
							<div class="col-2 p-0 body2" id="agreement1">
								<a style="color: #1890FF;">전문 보기</a>
							</div>
							<div class="col-10 p-0 body2">
								<input type="checkbox" id="agree2"> [필수] 개인정보 수집 및 이용 동의
							</div>
							<div class="col-2 p-0 body2" id="agreement2">
								<a style="color: #1890FF;">전문 보기</a>
							</div>
							<div class="col-10 p-0 body2">
								<input type="checkbox" id="agree3"> [선택] 마케팅 정보 수집 동의
							</div>
							<div class="col-2 p-0 body2" id="agreement3">
								<a style="color: #1890FF;">전문 보기</a>
						</div>
						<div class="row" style="margin-top: 50px;"> 
							<div class="col p-0" align=center>
								<input type="submit" value="JOIN" class="btn2" id=join
									disabled>
							</div>
						</div>

					</div>
				</div>	
				</form>
			</div>
		</div>
		<div class="row" id="footer" style="margin-top: 80px;">
            <div class="container">
                <div class="row" id="row1">
                    <div class="col-12 h3 d-none d-sm-block" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
                    <div class="col-12 body2 d-none d-sm-block" style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2 d-none d-sm-block" style = "color: #637381;" >3호선 경복궁역 지하 1층 | contact@palet.com</div>

                </div>
            </div>
        </div>
	</div>

	
</body>
<script>
$("#agreement1").on("click", function(){
	window.open("/member/agreement1","이용약관", "width=700, height=500");
})

$("#agreement2").on("click", function(){
	window.open("/member/agreement2","개인정보 수집 및 이용", "width=700, height=500");
})

$("#agreement3").on("click", function(){
	window.open("/member/agreement3","마케팅 정보 수신 및 활용 동의", "width=700, height=500");
})

let isEmailOk = false;     // submit 버튼 활성화용 boolean 변수 선언
let isPwOk = false;
let isPw2Ok = false;
let isNameOk = false;

$(function () {   
    $("#allagree").on("change", function () {
        let all = $("#allagree").prop("checked");
        
		
        if (all == true) {
            $("#agree1").prop("checked", true);
            $("#agree2").prop("checked", true);
            $("#agree3").prop("checked", true);
            
            
            let agree1 = $("#agree1").prop("checked");
    		let agree2 = $("#agree2").prop("checked");
    		
			//모든 검증 통과 시 submit 버튼 활성화
			if (isEmailOk && isPwOk
					&& isPw2Ok
					&& isNameOk && agree1 && agree2) {
				$("#join").removeAttr("disabled");
			}
			
        } else {
        	$("#agree1").prop("checked", false);
            $("#agree2").prop("checked", false);
            $("#agree3").prop("checked", false);      
            $("#join").attr("disabled","true");
        }
		 
    })
    
    $("#agree1").on("change", function () {
        let agree1 = $("#agree1").prop("checked");
		let agree2 = $("#agree2").prop("checked");
		let agree3 = $("#agree3").prop("checked");
		if (agree1 && agree2 && agree3){
        	$("#allagree").prop("checked", true);
        	
        	if (isEmailOk && isPwOk
					&& isPw2Ok
					&& isNameOk && agree1 && agree2) {
				$("#join").removeAttr("disabled");
			}
        	
        } else if (agree1 == true) {
            
			//모든 검증 통과 시 submit 버튼 활성화
			if (isEmailOk && isPwOk
					&& isPw2Ok
					&& isNameOk && agree1 && agree2) {
				$("#join").removeAttr("disabled");
			} 
        } else {
        	$("#allagree").prop("checked", false);
        	$("#join").attr("disabled","true");
        }
		 
    })
    
    $("#agree2").on("change", function () {
    	let agree1 = $("#agree1").prop("checked");
		let agree2 = $("#agree2").prop("checked");
        let agree3 = $("#agree3").prop("checked");
        
        console.log(agree1);
        console.log(agree2);
        console.log(agree3);
        
			
        if (agree1 && agree2 && agree3){
        	$("#allagree").prop("checked", true);
        	
        	if (isEmailOk && isPwOk
					&& isPw2Ok
					&& isNameOk && agree1 && agree2) {
				$("#join").removeAttr("disabled");
			}
        	
        } else if (agree2 == true) {
            
			//모든 검증 통과 시 submit 버튼 활성화
			if (isEmailOk && isPwOk
					&& isPw2Ok
					&& isNameOk && agree1 && agree2) {
				$("#join").removeAttr("disabled");
			} 
        } else {
        	$("#allagree").prop("checked", false);
        	$("#join").attr("disabled","true");
        }
		 
    })
    
    $("#agree3").on("change", function () {
		let agree1 = $("#agree1").prop("checked");
		let agree2 = $("#agree2").prop("checked");
        let agree3 = $("#agree3").prop("checked");
        if (agree1 && agree2 && agree3) {
            $("#allagree").prop("checked", true);
      
        } else if(agree1 && agree2) {
        	$("#allagree").prop("checked", false);
        	
        	if (isEmailOk && isPwOk
					&& isPw2Ok
					&& isNameOk && agree1 && agree2) {
				$("#join").removeAttr("disabled");
			} 
        } else {
        
        	$("#allagree").prop("checked", false);
        	$("#join").attr("disabled","true");
        }
		 
    })
    
    
})

$("#email").on("keyup",function() { // 아이디 입력 검증

	let email = $("#email").val();
	if (email == "") {
		$("#email").css("border", "1px solid #FF4842");
		$("#emailCheckResult").css("color", "#FF4842");
		$("#emailCheckResult").text("이메일은 필수 입력 정보입니다.")
		isEmailOk = false;
		$("#join").attr("disabled","true");
		$("#sendmail").attr("disabled","true");
		$("#emailresult").text("");
		$("#emailKeyInput").css("display","none");
		$("#okbtn").css("display","none")
		return false;
	}
	let emailRegex = /^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/;
	let emailResult = emailRegex.test(email);
	if (!emailResult) {
		$("#email").css("border", "1px solid #FF4842");
		$("#emailCheckResult").css("color", "#FF4842");
		$("#emailCheckResult").text(
				"이메일 형식이 올바르지 않습니다.");
		isEmailOk = false;
		$("#join").attr("disabled","true");
		$("#sendmail").attr("disabled","true");
		$("#emailresult").text("");
		$("#emailKeyInput").css("display","none");
		$("#okbtn").css("display","none")
		return false;
	} else {
		$.ajax({
			url : "/member/emailDuplCheck",
			data : {
				email : $("#email").val()
			}
		}).done(
			function(resp) {
				let result = JSON.parse(resp)
				if (result) {
					$("#email").css("border","1px solid #FF4842");
					$("#emailCheckResult").css("color","#FF4842");
					$("#emailCheckResult").text("이미 가입된 이메일입니다.")
					isEmailOk = false;
					$("#join").attr("disabled","true");
					$("#sendmail").attr("disabled","true");
					return false;
				} else {
					$("#email").css("border","1px solid #1890FF");
					$("#emailCheckResult").css("color","#1890FF");
					$("#emailCheckResult").text("사용가능한 이메일입니다.");
					$("#sendmail").removeAttr("disabled");
					
					$("#sendmail").on("click",function(){ // 메일 발송 버튼 클릭시
						let email = $("#email").val();
						if(email == ""){
							 alert("메일칸을 작성해주세요.");
							 isEmailOk = false;
							 $("#join").attr("disabled","true");
							 $("#sendmail").attr("disabled","true");
							 $("#emailresult").text("");
							 $("#emailKeyInput").css("display","none");
							 $("#okbtn").css("display","none");
							 return false;
						}
						$("#sendmail").attr("disabled","true");
						$("#emailresult").css("color","orange");
						$("#emailresult").text(" 발송중...");					
						
						$.ajax({
							type:"post",
							url:"/mail/joinMail",
							dataType:"json",
							data:{email:$("#email").val()}
						
						}).done(function(resp){
							console.log(resp);
							$("#okbtn").css("display","inline");
							$("#emailKey").val(resp);
							$("#emailresult").css("color","green");
							$("#emailresult").text(" 발송완료");
							return false;
						})
						$("#sendmail").removeAttr("disabled");
						$("#sendmail").text("인증메일 재발송");
						$("#emailKeyInput").css("display","inline");
						$("#codetitle").css("display","block");
						
					})
					
					$("#okbtn").on("click",function(){
						console.log("123");
						console.log($("#emailKey").val());
						if($("#emailKey").val()==$("#emailKeyInput").val()){
							$("#emailKeyInput").css("display", "none");
							$("#emailCheckResult").css("color", "#1890FF");
							$("#emailCheckResult").text("이메일 인증 완료");
							$("#okbtn").css("display","none");
							$("#codetitle").css("display","none");
							isEmailOk = true;
							
							let agree1 = $("#agree1").prop("checked");
							let agree2 = $("#agree2").prop("checked");
							
							//모든 검증 통과 시 submit 버튼 활성화
							if (isEmailOk && isPwOk
									&& isPw2Ok
									&& isNameOk && agree1 && agree2) {
								$("#join").removeAttr("disabled");
							}
						} else if(!($("#emailKey").val()==$("#emailKeyInput").val())){
							$("#emailKeyInput").css("border", "1px solid #FF4842");
							$("#emailCheckResult").css("color", "#FF4842");
							$("#emailCheckResult").text("인증키가 일치하지 않습니다.");
							isEmailOk = false;
							
							$("#join").attr("disabled","true");
							return false;
						}	
						
					})
					
					
				}
			})
			
			
		}
	})

$("#pw1").on("keyup",function() { // 비밀번호 입력 검증
	
	let pw = $("#pw1").val();
	if (pw == "") {
		$("#pw1").css("border", "1px solid #FF4842");
		$("#pw2").css("border", "1px solid #FF4842");
		$("#pw1CheckResult").css("color", "#FF4842");
		$("#pw1CheckResult").text("비밀번호는 필수 입력 정보입니다.")
		$("#pw2CheckResult").text("");
		isPwOk = false;
		isPw2Ok = false;
		$("#join").attr("disabled","true");
		return false;
	}
	let pwRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$/gm; // 비밀번호 기본 검증
	let pwResult = pwRegex.test(pw);
	if (!pwResult) {
		$("#pw1").css("border", "1px solid #FF4842");
		$("#pw2").css("border", "1px solid #FF4842");
		$("#pw1CheckResult").css("color", "#FF4842");
		$("#pw1CheckResult").text(
				"영문자, 숫자를 조합하여 8~12자로 작성");
		$("#pw2CheckResult").text("");
		isPwOk = false;
		isPw2Ok = false;
		$("#join").attr("disabled","true");
		return false;
	} else {
		$("#pw1").css("border", "1px solid #1890FF");
		$("#pw1CheckResult").text("");
		isPwOk = true;
		
		let pw2 = $("#pw2").val();
		if (pw2 == pw) {
			$("#pw2").css("border", "1px solid #1890FF");
			$("#pw2CheckResult").css("color", "#1890FF");
			$("#pw2CheckResult").text("패스워드가 일치합니다.");
			isPw2Ok = true;
			
			let agree1 = $("#agree1").prop("checked");
			let agree2 = $("#agree2").prop("checked");
			//모든 검증 통과 시 submit 버튼 활성화
			if (isEmailOk && isPwOk && isPw2Ok
					&& isNameOk && agree1 && agree2) {
				$("#join").removeAttr("disabled");
			}
		} else {
			$("#pw2").css("border", "1px solid #FF4842");
			$("#pw2CheckResult").css("color", "#FF4842");
			$("#pw2CheckResult").text("패스워드가 일치하지 않습니다.");
			isPw2Ok = false;
			
			$("#join").attr("disabled","true");
			return false;
		}
	
	}
})

$("#pw2").on("keyup",function() { // 비번2 일치 검증
	let pw = $("#pw1").val();
	let pw2 = $("#pw2").val();
	if (pw2 == "") {
		$("#pw2").css("border", "1px solid #FF4842");
		$("#pw2CheckResult").css("color", "#FF4842");
		$("#pw2CheckResult").text("비밀번호 입력을 확인해주세요.")
		isPw2Ok = false;
		
		$("#join").attr("disabled","true");
		return false;
	}
	if (pw2 == pw) {
		$("#pw2").css("border", "1px solid #1890FF");
		$("#pw2CheckResult").css("color", "#1890FF");
		$("#pw2CheckResult").text("패스워드가 일치합니다.");
		isPw2Ok = true;
		
		let agree1 = $("#agree1").prop("checked");
		let agree2 = $("#agree2").prop("checked");
		//모든 검증 통과 시 submit 버튼 활성화
		if (isEmailOk && isPwOk && isPw2Ok
				&& isNameOk && agree1 && agree2) {
			$("#join").removeAttr("disabled");
		}
	} else {
		$("#pw2").css("border", "1px solid #FF4842");
		$("#pw2CheckResult").css("color", "#FF4842");
		$("#pw2CheckResult").text("패스워드가 일치하지 않습니다.");
		isPw2Ok = false;
		
		$("#join").attr("disabled","true");
		return false;
	}
})

$("#name").on("keyup",function() { // 이름 검증
	let name = $("#name").val();
	if (name == "") {
		$("#name").css("border", "1px solid #FF4842");
		$("#nameCheckResult").css("color", "#FF4842");
		$("#nameCheckResult").text("이름은 필수 입력 정보입니다.")
		isNameOk = false;
		
		$("#join").attr("disabled","true");
		return false;
	}
	let nameRegex = /^[가-힣]{2,7}$/;
	let nameResult = nameRegex.test(name);
	if (!nameResult) {
		$("#name").css("border", "1px solid #FF4842");
		$("#nameCheckResult").css("color", "#FF4842");
		$("#nameCheckResult").text("이름의 입력형식이 올바르지 않습니다.");
		isNameOk = false;
		
		$("#join").attr("disabled","true");
		return false;
	} else {
		$("#name").css("border", "1px solid #1890FF");
		$("#nameCheckResult").text("");
		isNameOk = true;

		let agree1 = $("#agree1").prop("checked");
		let agree2 = $("#agree2").prop("checked");
		//모든 검증 통과 시 submit 버튼 활성화
		if (isEmailOk && isPwOk && isPw2Ok
				&& isNameOk && agree1 && agree2) {
			$("#join").removeAttr("disabled");
		}
	}
})
</script>
</html>