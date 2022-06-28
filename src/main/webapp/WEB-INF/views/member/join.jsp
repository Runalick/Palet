<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
<form action="/member/signup" method="post">
	<table>
		<tr>
			<td><input type="text" id=email name="email" placeholder="이메일을 입력해주세요.">
			<td><button type="button" id="sendmail" disabled>인증메일 발송</button><span id="emailresult"></span>
		</tr>
		<tr>
			<td><div id="emailCheckResult"></div>
		</tr>
		<tr>
			<input type="text" id="emailKey" style="display: none;" value="no">
			<td><input type="text" id="emailKeyInput" style="display: none;" placeholder="인증키 입력">
			<button type="button" id="okbtn" style="display: none;">인증확인</button>
		</tr>
		<tr>
			<td><input type="password" id=pw1 name="pw" placeholder="비밀번호를 입력해주세요">
			<td><div id="pw1CheckResult"></div>
		</tr>
		<tr>
			<td><input type="password" id=pw2 placeholder="비밀번호를 확인해주세요">
			<td><div id="pw2CheckResult"></div>
		</tr>
		<tr>
			<td><input type="text" id=name name="name" placeholder="성명을 입력해주세요">
			<td><div id="nameCheckResult"></div>
		</tr>
		<tr>
			<td colspan=2>
				<input type="submit" value="JOIN" id=join disabled>
			</td>
		</tr>
	
	</table>
</form>
</body>
<script>
let isEmailOk = false;     // submit 버튼 활성화용 boolean 변수 선언
let isPwOk = false;
let isPw2Ok = false;
let isNameOk = false;       

$("#email").on("keyup",function() { // 아이디 입력 검증
	let email = $("#email").val();
	if (email == "") {
		$("#email").css("border", "1px solid red");
		$("#emailCheckResult").css("color", "red");
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
		$("#email").css("border", "1px solid red");
		$("#emailCheckResult").css("color", "red");
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
					$("#email").css("border","1px solid red");
					$("#emailCheckResult").css("color","red");
					$("#emailCheckResult").text("이미 가입된 이메일입니다.")
					isEmailOk = false;
					$("#join").attr("disabled","true");
					return false;
				} else {
					$("#email").css("border","1px solid blue");
					$("#emailCheckResult").css("color","blue");
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
							$("#okbtn").css("display","inline");
							$("#emailKey").val(resp);
							$("#emailresult").css("color","green");
							$("#emailresult").text(" 발송완료");
							return false;
						})
						$("#sendmail").removeAttr("disabled");
						$("#sendmail").text("인증메일 재발송");
						$("#emailKeyInput").css("display","inline");
					})
					
					$("#okbtn").on("click",function(){
						if($("#emailKey").val()==$("#emailKeyInput").val()){
							$("#emailKeyInput").css("display", "none");
							$("#emailCheckResult").css("color", "blue");
							$("#emailCheckResult").text("이메일 인증 완료");
							$("#okbtn").css("display","none");
							isEmailOk = true;
							
							
							//모든 검증 통과 시 submit 버튼 활성화
							if (isEmailOk && isPwOk
									&& isPw2Ok
									&& isNameOk) {
								$("#join").removeAttr("disabled");
							}
						} else if(!($("#emailKey").val()==$("#emailKeyInput").val())){
							$("#emailKeyInput").css("border", "1px solid red");
							$("#emailCheckResult").css("color", "red");
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
		$("#pw1").css("border", "1px solid red");
		$("#pw2").css("border", "1px solid red");
		$("#pw1CheckResult").css("color", "red");
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
		$("#pw1").css("border", "1px solid red");
		$("#pw2").css("border", "1px solid red");
		$("#pw1CheckResult").css("color", "red");
		$("#pw1CheckResult").text(
				"영문 소문자, 대문자, 숫자를 조합하여 8~12자로 작성");
		$("#pw2CheckResult").text("");
		isPwOk = false;
		isPw2Ok = false;
		$("#join").attr("disabled","true");
		return false;
	} else {
		$("#pw1").css("border", "1px solid blue");
		$("#pw1CheckResult").text("");
		isPwOk = true;
		
		let pw2 = $("#pw2").val();
		if (pw2 == pw) {
			$("#pw2").css("border", "1px solid blue");
			$("#pw2CheckResult").css("color", "blue");
			$("#pw2CheckResult").text("패스워드가 일치합니다.");
			isPw2Ok = true;
			
			//모든 검증 통과 시 submit 버튼 활성화
			if (isEmailOk && isPwOk && isPw2Ok && isNameOk) {
				$("#join").removeAttr("disabled");
			}
		} else {
			$("#pw2").css("border", "1px solid red");
			$("#pw2CheckResult").css("color", "red");
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
		$("#pw2").css("border", "1px solid red");
		$("#pw2CheckResult").css("color", "red");
		$("#pw2CheckResult").text("비밀번호 입력을 확인해주세요.")
		isPw2Ok = false;
		
		$("#join").attr("disabled","true");
		return false;
	}
	if (pw2 == pw) {
		$("#pw2").css("border", "1px solid blue");
		$("#pw2CheckResult").css("color", "blue");
		$("#pw2CheckResult").text("패스워드가 일치합니다.");
		isPw2Ok = true;
		
		//모든 검증 통과 시 submit 버튼 활성화
		if (isEmailOk && isPwOk && isPw2Ok && isNameOk) {
			$("#join").removeAttr("disabled");
		}
	} else {
		$("#pw2").css("border", "1px solid red");
		$("#pw2CheckResult").css("color", "red");
		$("#pw2CheckResult").text("패스워드가 일치하지 않습니다.");
		isPw2Ok = false;
		
		$("#join").attr("disabled","true");
		return false;
	}
})

$("#name").on("keyup",function() { // 이름 검증
	let name = $("#name").val();
	if (name == "") {
		$("#name").css("border", "1px solid red");
		$("#nameCheckResult").css("color", "red");
		$("#nameCheckResult").text("이름은 필수 입력 정보입니다.")
		isNameOk = false;
		
		$("#join").attr("disabled","true");
		return false;
	}
	let nameRegex = /^[가-힣]{2,7}$/;
	let nameResult = nameRegex.test(name);
	if (!nameResult) {
		$("#name").css("border", "1px solid red");
		$("#nameCheckResult").css("color", "red");
		$("#nameCheckResult").text("이름의 입력형식이 올바르지 않습니다.");
		isNameOk = false;
		
		$("#join").attr("disabled","true");
		return false;
	} else {
		$("#name").css("border", "1px solid blue");
		$("#nameCheckResult").text("");
		isNameOk = true;

		//모든 검증 통과 시 submit 버튼 활성화
		if (isEmailOk && isPwOk && isPw2Ok && isNameOk) {
			$("#join").removeAttr("disabled");
		}
	}
})
</script>
</html>