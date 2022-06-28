<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
<c:choose>
	<c:when test="${loginEmail != null }">
		<table border=1 align=center>
			<tr>
				<th>${loginEmail }님 안녕하세요.</th>
			</tr>
			<tr>
				<td><input type="button" id="logout" value="로그아웃">
			</tr>
		</table>
	</c:when>
	<c:otherwise>
		<form action="/member/login" method="post">
			<input type="text" name=email placeholder="이메일을 입력하세요"><br>
			<input type="password" name=pw placeholder="비밀번호를 입력하세요"><br>
			<input type="submit" value="login">
			<input type="button" id="join" value="join">
			<input type="button" id="kakao-login-btn" value="카카오로 로그인">
		</form>
	</c:otherwise>
</c:choose>
</body>
<script>	
	$("#join").on("click", function(){
		location.href="/member/join";
	})
	
	// SDK를 초기화. 사용할 앱의 JavaScript 키
      	Kakao.init('feb50c309d28b138aefe9ddc94d76870');
	    console.log(Kakao.isInitialized());
	    
	    //item을 localStorage에 저장하는 메소드
	    function saveToDos(token) { 
    		typeof(Storage) !== 'undefined' && sessionStorage.setItem('AccessKEY', JSON.stringify(token)); 
		};
		
	    $("#kakao-login-btn").on("click", function(){
	    	console.log("click");
	    //1. 로그인 시도
	    Kakao.Auth.login({
	        success: function(authObj) {
	         
	          //2. 로그인 성공시, API 호출
	          Kakao.API.request({
	            url: '/v2/user/me',
	            success: function(res) {
 	              console.log(res);
	              let id = res.id;
				  scope : 'profile_nickname, account_email';
	              $.ajax({
	            	    url:"/member/kakaojoin",
	            	    data:{email:res.kakao_account.email,
	            	    	name:res.properties.nickname,
	            	    	token:authObj.access_token},
	            	    type:"POST"
	            	}).done(function(resp){
	            		location.reload();
	            	})
	        	}
	          })
 	          console.log(authObj); //access 토큰 값
			  Kakao.Auth.setAccessToken(authObj.access_token); //access 토큰 값 저장
			  var token = authObj.access_token;
			  saveToDos(token);
	        },
	        fail: function(err) {
	          alert(JSON.stringify(err));
	        }
	      });
	    })
	    
	$("#logout").on("click", function(){
		if (Kakao.Auth.getAccessToken()) {
			Kakao.Auth.logout(function() {
      			alert("로그아웃 되었습니다.");
      			location.href="/member/logout";
   		 	})
		}
		
		location.href="/member/logout";
	})
	
</script>
</html>