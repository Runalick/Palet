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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>

	<div class="container">
		<div class=row>
			<div class="col">네비</div>
		</div>
	</div>

	<div class="container">
		<div class=row>
			<div class="col-12">My Page / My info.</div>
		</div>
		<div class=row>
			<div class="col-12">${dto.email }</div>
		</div>
		<div class=row>
			<div class="col-12">
				<button type="button" data-bs-toggle="modal"
					data-bs-target="#staticBackdrop">변경하기</button>
			</div>
			<div class="col-12">
				<!-- Modal -->
				<form action="/member/modipw" method="post">
				<div class="modal fade" id="staticBackdrop"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">비밀번호 변경</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<input type="password" id="newpw" name="pw" placeholder="비밀번호를 입력해주세요"><br>
								<span id="pwck" style="display:none">비밀번호 확인중</span><br>
								<input type="password" id="newpwck" placeholder="비밀번호를 다시 입력해주세요">
								<span id="pwck2" style="display:none">비밀번호 확인중</span><br>
							</div>
							<div class="modal-footer">
								<button type="submit" id="pwbtn">확인</button>
								<button type="button" data-bs-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
		<div class=row>
			<div class="col-12">
				${dto.name }
				<!-- Modal -->
				<form action="/member/modiname" method="post">
				<div class="modal fade" id="staticBackdrop"
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
								<input type="text" id="name" name="name" placeholder="바꿀이름을 작성해주세요"><br>
							</div>
							<div class="modal-footer">
								<button type="submit">확인</button>
								<button type="button" data-bs-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
		<div class=row>
			<div class="col-12">
				${dto.phone } <!-- Modal -->
				<form action="/member/modiphone" method="post">
				<div class="modal fade" id="staticBackdrop"
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
								<input type="text" id="phone" name="phone" placeholder="바꿀전화번호를 작성해주세요"><br>
							</div>
							<div class="modal-footer">
								<button type="submit">확인</button>
								<button type="button" data-bs-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
		<div class=row>
			<div class="col-12">
				(${dto.postcode }) ${dto.address1 } ${dto.address2 } 
				<form action="/member/modiaddress" method="post">
				<div class="modal fade" id="staticBackdrop"
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
							   <input type="text" id="postcode" placeholder="우편번호" name="postcode" disabled="disabled">
               				   <input type="button" onclick="execDaumPostcode()" value="찾기"><br>
               				   <input type="text" class="longtext" id="jibunAddress" name="address1" disabled="disabled">
               				   <input type="text" class="longtext" id="detailAddress" name="address2" placeholder="상세주소를 입력해주세요">
							</div>
							<div class="modal-footer">
								<button type="submit">확인</button>
								<button type="button" data-bs-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
				</div>
				</form>

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
    			   $("#btn2").removeAttr("disabled");
    		   }else if((!isPwOk2)||(!isPwOk)){
    			   $("#btn2").attr("disabled","true");
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
    			   $("#btn2").removeAttr("disabled");
    		   }else if((!isPwOk2)||(!isPwOk)){
    			   $("#btn2").attr("disabled","true");
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