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
					                        
					                <li class="nav-item"> <a id="Logout" class="nav-link logout" href="#"
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
						                        
					                <li class="nav-item"> <a id="Logout" class="nav-link logout" href="#"
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
			<div class="container" style="max-width: 600px; padding-bottom: 80px;">
				<div class="row" id="row1">
					<div class="h2">Sign up</div>
				</div>
				<div class="row">
					<form action="/member/signup" method="post">
					<div class="col">
						<div class="row"> 
							<div class="col-12 p-0 body2">????????? ?????????</div>
							<div class="col-8 p-0">
								<input type="text" id=email name="email"
									placeholder="???????????? ??????????????????.">
							</div>
							<div class="col-4 px-3">
								<button type="button" class="btn1" id="sendmail" disabled>???????????? ?????????</button>
							</div>
						</div>
						<div class="row">
							<div class="col p-0">
								<div id="emailCheckResult"></div>
							</div>
						</div>
						<div class="row">
							<div class="col-12 p-0 body2" id="codetitle" style="display: none;">
								????????????
							</div>
							<input type="text" id="emailKey" style="display: none;" value="no">
							<div class="col-8 p-0">
								<input type="text" id="emailKeyInput"
									style="display: none;" placeholder="????????? ??????">
							</div>
							<div class="col-4 px-3">
								<button type="button" class="btn1" id="okbtn" style="display: none;">????????????</button>
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0 body2">????????????</div>
						</div>
						<div class="row"> 
							<div class="col-12 p-0">
								<input type="password" id=pw1 name="pw"
									placeholder="??????????????? ??????????????????">
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0">
								<div id="pw1CheckResult"></div>
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0 body2">
								???????????? ??????
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0">
								<input type="password" id=pw2
									placeholder="??????????????? ??????????????????">
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0">
								<div id="pw2CheckResult"></div>
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0 body2">
								??????
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0">
								<input type="text" id=name name="name"
									placeholder="????????? ??????????????????">
							</div>
						</div>
						<div class="row"> 
							<div class="col p-0">
								<div id="nameCheckResult"></div>
							</div>
						</div>
						<div class="row my-3">
							<div class="col-12 p-0 body2">
								<input type="checkbox" id="allagree"> ?????? ??????
							</div>
							<div class="col-10 p-0 body2">
								<input type="checkbox" id="agree1"> [??????] ???????????? ??????
							</div>
							<div class="col-2 p-0 body2" id="agreement1">
								<a style="color: #1890FF;">?????? ??????</a>
							</div>
							<div class="col-10 p-0 body2">
								<input type="checkbox" id="agree2"> [??????] ???????????? ?????? ??? ?????? ??????
							</div>
							<div class="col-2 p-0 body2" id="agreement2">
								<a style="color: #1890FF;">?????? ??????</a>
							</div>
							<div class="col-10 p-0 body2">
								<input type="checkbox" id="agree3"> [??????] ????????? ?????? ?????? ??????
							</div>
							<div class="col-2 p-0 body2" id="agreement3">
								<a style="color: #1890FF;">?????? ??????</a>
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
	</div>
		
		<div class="row" id="footer" style="margin-top: 80px;">
            <div class="container">
                <div class="row">
                    <div class="col-12 h3 " style = "color: #637381; margin-top: 3.75rem;">(???)?????????</div>
                    <div class="col-12 body2 " style = "color: #637381;">????????? ???????????? : 123-45-012345 | ?????? : ????????? | ??????????????? ???????????? : 2022-????????????-012345</div><br>
                    <div class="col-12 body2 " style = "color: #637381;" >3?????? ???????????? ?????? 1??? | contact@palet.com</div>

                </div>
            </div>
        </div>
	
</div>
	
</body>
<script>
$("#agreement1").on("click", function(){
	window.open("/member/agreement1","????????????", "width=700, height=500");
})

$("#agreement2").on("click", function(){
	window.open("/member/agreement2","???????????? ?????? ??? ??????", "width=700, height=500");
})

$("#agreement3").on("click", function(){
	window.open("/member/agreement3","????????? ?????? ?????? ??? ?????? ??????", "width=700, height=500");
})

let isEmailOk = false;     // submit ?????? ???????????? boolean ?????? ??????
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
    		
			//?????? ?????? ?????? ??? submit ?????? ?????????
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
            
			//?????? ?????? ?????? ??? submit ?????? ?????????
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
            
			//?????? ?????? ?????? ??? submit ?????? ?????????
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

$("#email").on("keyup",function() { // ????????? ?????? ??????

	let email = $("#email").val();
	if (email == "") {
		$("#email").css("border", "1px solid #FF4842");
		$("#emailCheckResult").css("color", "#FF4842");
		$("#emailCheckResult").text("???????????? ?????? ?????? ???????????????.")
		isEmailOk = false;
		$("#join").attr("disabled","true");
		$("#sendmail").attr("disabled","true");
		$("#emailresult").text("");
		$("#emailKeyInput").css("display","none");
		$("#okbtn").css("display","none")
		return false;
	}
	let emailRegex = /^[a-z\d]([\da-z-_\.]?)*@([\da-z-_\.])*\.([a-z]{2,3})(\.[a-z]{2})?$/i;
	let emailResult = emailRegex.test(email);
	if (!emailResult) {
		$("#email").css("border", "1px solid #FF4842");
		$("#emailCheckResult").css("color", "#FF4842");
		$("#emailCheckResult").text(
				"????????? ????????? ???????????? ????????????.");
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
					$("#emailCheckResult").text("?????? ????????? ??????????????????.")
					isEmailOk = false;
					$("#join").attr("disabled","true");
					$("#sendmail").attr("disabled","true");
					return false;
				} else {
					$("#email").css("border","1px solid #1890FF");
					$("#emailCheckResult").css("color","#1890FF");
					$("#emailCheckResult").text("??????????????? ??????????????????.");
					$("#sendmail").removeAttr("disabled");
					
					$("#sendmail").on("click",function(){ // ?????? ?????? ?????? ?????????
						let email = $("#email").val();
						if(email == ""){
							 alert("???????????? ??????????????????.");
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
						$("#emailresult").text(" ?????????...");					
						
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
							$("#emailresult").text(" ????????????");
							return false;
						})
						$("#sendmail").removeAttr("disabled");
						$("#sendmail").text("???????????? ?????????");
						$("#emailKeyInput").css("display","inline");
						$("#codetitle").css("display","block");
						
					})
					
					$("#okbtn").on("click",function(){
						console.log("123");
						console.log($("#emailKey").val());
						if($("#emailKey").val()==$("#emailKeyInput").val()){
							$("#emailKeyInput").css("display", "none");
							$("#emailCheckResult").css("color", "#1890FF");
							$("#emailCheckResult").text("????????? ?????? ??????");
							$("#okbtn").css("display","none");
							$("#codetitle").css("display","none");
							isEmailOk = true;
							
							let agree1 = $("#agree1").prop("checked");
							let agree2 = $("#agree2").prop("checked");
							
							//?????? ?????? ?????? ??? submit ?????? ?????????
							if (isEmailOk && isPwOk
									&& isPw2Ok
									&& isNameOk && agree1 && agree2) {
								$("#join").removeAttr("disabled");
							}
						} else if(!($("#emailKey").val()==$("#emailKeyInput").val())){
							$("#emailKeyInput").css("border", "1px solid #FF4842");
							$("#emailCheckResult").css("color", "#FF4842");
							$("#emailCheckResult").text("???????????? ???????????? ????????????.");
							isEmailOk = false;
							
							$("#join").attr("disabled","true");
							return false;
						}	
						
					})
					
					
				}
			})
			
			
		}
	})

$("#pw1").on("keyup",function() { // ???????????? ?????? ??????
	
	let pw = $("#pw1").val();
	if (pw == "") {
		$("#pw1").css("border", "1px solid #FF4842");
		$("#pw2").css("border", "1px solid #FF4842");
		$("#pw1CheckResult").css("color", "#FF4842");
		$("#pw1CheckResult").text("??????????????? ?????? ?????? ???????????????.")
		$("#pw2CheckResult").text("");
		isPwOk = false;
		isPw2Ok = false;
		$("#join").attr("disabled","true");
		return false;
	}
	let pwRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$/gm; // ???????????? ?????? ??????
	let pwResult = pwRegex.test(pw);
	if (!pwResult) {
		$("#pw1").css("border", "1px solid #FF4842");
		$("#pw2").css("border", "1px solid #FF4842");
		$("#pw1CheckResult").css("color", "#FF4842");
		$("#pw1CheckResult").text(
				"?????????, ????????? ???????????? 8~12?????? ??????");
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
			$("#pw2CheckResult").text("??????????????? ???????????????.");
			isPw2Ok = true;
			
			let agree1 = $("#agree1").prop("checked");
			let agree2 = $("#agree2").prop("checked");
			//?????? ?????? ?????? ??? submit ?????? ?????????
			if (isEmailOk && isPwOk && isPw2Ok
					&& isNameOk && agree1 && agree2) {
				$("#join").removeAttr("disabled");
			}
		} else {
			$("#pw2").css("border", "1px solid #FF4842");
			$("#pw2CheckResult").css("color", "#FF4842");
			$("#pw2CheckResult").text("??????????????? ???????????? ????????????.");
			isPw2Ok = false;
			
			$("#join").attr("disabled","true");
			return false;
		}
	
	}
})

$("#pw2").on("keyup",function() { // ??????2 ?????? ??????
	let pw = $("#pw1").val();
	let pw2 = $("#pw2").val();
	if (pw2 == "") {
		$("#pw2").css("border", "1px solid #FF4842");
		$("#pw2CheckResult").css("color", "#FF4842");
		$("#pw2CheckResult").text("???????????? ????????? ??????????????????.")
		isPw2Ok = false;
		
		$("#join").attr("disabled","true");
		return false;
	}
	if (pw2 == pw) {
		$("#pw2").css("border", "1px solid #1890FF");
		$("#pw2CheckResult").css("color", "#1890FF");
		$("#pw2CheckResult").text("??????????????? ???????????????.");
		isPw2Ok = true;
		
		let agree1 = $("#agree1").prop("checked");
		let agree2 = $("#agree2").prop("checked");
		//?????? ?????? ?????? ??? submit ?????? ?????????
		if (isEmailOk && isPwOk && isPw2Ok
				&& isNameOk && agree1 && agree2) {
			$("#join").removeAttr("disabled");
		}
	} else {
		$("#pw2").css("border", "1px solid #FF4842");
		$("#pw2CheckResult").css("color", "#FF4842");
		$("#pw2CheckResult").text("??????????????? ???????????? ????????????.");
		isPw2Ok = false;
		
		$("#join").attr("disabled","true");
		return false;
	}
})

$("#name").on("keyup",function() { // ?????? ??????
	let name = $("#name").val();
	if (name == "") {
		$("#name").css("border", "1px solid #FF4842");
		$("#nameCheckResult").css("color", "#FF4842");
		$("#nameCheckResult").text("????????? ?????? ?????? ???????????????.")
		isNameOk = false;
		
		$("#join").attr("disabled","true");
		return false;
	}
	let nameRegex = /^[???-???]{2,7}$/;
	let nameResult = nameRegex.test(name);
	if (!nameResult) {
		$("#name").css("border", "1px solid #FF4842");
		$("#nameCheckResult").css("color", "#FF4842");
		$("#nameCheckResult").text("????????? ??????????????? ???????????? ????????????.");
		isNameOk = false;
		
		$("#join").attr("disabled","true");
		return false;
	} else {
		$("#name").css("border", "1px solid #1890FF");
		$("#nameCheckResult").text("");
		isNameOk = true;

		let agree1 = $("#agree1").prop("checked");
		let agree2 = $("#agree2").prop("checked");
		//?????? ?????? ?????? ??? submit ?????? ?????????
		if (isEmailOk && isPwOk && isPw2Ok
				&& isNameOk && agree1 && agree2) {
			$("#join").removeAttr("disabled");
		}
	}
})
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
</html>