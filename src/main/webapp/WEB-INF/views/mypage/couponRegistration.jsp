<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palet</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="/css/member/mypage.css">
<style type="text/css">
.container, .container-fluid, .container-lg, .container-md,
	.container-sm, .container-xl, .container-xxl {
	overflow-x: hidden;
}

.btn2 {
	line-height: 0.7rem;
}
</style>
</head>
<body>


	<div class="container-fluid" style="min-width: 600px;">
		<div class="row" style="padding-top: 100px;">
			<div class="container">
				<div class="row" id="row1">
					<div class="h2" style="text-align: center; magin: auto; text-decoration: underline;">Coupon
						Registration</div>
				</div>
				<div class="col-12" style="text-align: center; padding: 10px;">
					<input type="text" name="serial" id="serial"
						placeholder="쿠폰번호를 입력해주세요" maxlength="10" style="width: 200px">
					<div style="text-align: center;">최대 글자수는 10글자 입니다.</div>
				</div>
				<div class="col-12" style="text-align: center; padding: 10px;">
					<button type="button" id="Registration" class="btn2"
						style="width: 7.5rem; height: 1.5rem;">등록</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$("#Registration").on("click",function(){
			$.ajax({
				url: "/coupon/Registration",
				data:{serial:$("#serial").val()}
			}).done(function(resp){
				console.log(resp)
				if(resp=="false"){
					alert("쿠폰번호를 확인해주세요")
					return false;
				}
				if(resp=="use"){
					alert("사용된 쿠폰입니다.")
					return false;
				}
				if(resp=="noregistration"){
					alert("등록된 쿠폰입니다.")
					return false;
				}
				if(resp=="registration"){
					alert("쿠폰이 등록되었습니다.")
					opener.location.reload();
					window.close();
					location.href="/coupon/couponlist"
				}
			})
		})
	</script>
</body>
</html>