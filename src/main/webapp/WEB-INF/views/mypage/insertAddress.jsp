<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" ></script>
<!-- 우편번호 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<style>
.body2 {
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 400;
	font-size: 0.875rem;
	line-height: 1.75rem;
}
#delivery-area{
padding:1.75rem;
margin-left:2rem;
background: #FFFFFF;
/* Gray/300 */

border: 1px solid #DFE3E8;
border-radius: 1.25rem;
}
#deliveryinfo{
font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 700;
font-size: 0.875rem;
line-height: 1.125rem;
color: #919EAB;
}
.inputaddress{
width: 37.5rem;
height: 2.3rem;
background: #F4F6F8;
border: 0.063rem solid #DFE3E8;
box-shadow: 0px 0px 0px #CBDAFC;
border-radius: 0.313rem;
color: #637381;
margin-bottom:0.5rem;
padding-left:0.75rem;
}
.inputcode{
margin-bottom:0.5rem;
width: 17.5rem;
height: 2.3rem;
background: #FFFFFF;
border: 0.063rem solid #CFD4D9;
box-shadow: 0px 0px 0px #CBDAFC;
border-radius: 0.313rem;
padding-left:0.75rem;
color: #637381;
}
.body2input{
width:17.5rem;
height:2.3rem;
margin-right:1.25rem;
padding-left:0.75rem;
background: #FFFFFF;
border: 0.063rem solid #CFD4D9;
box-shadow: 0px 0px 0px #CBDAFC;
border-radius: 0.313rem;

}
.check{
accent-color: black;
margin-right:0.5rem;
}
.btnbtn{
padding: 18px 24px;
gap: 10px;
width: 6.25rem;
height: 1.875rem;
color:white;
border-radius: 1rem;
line-height:0px;
border:0px;
cursor:pointer;
}
.insert, .modibtn{
background:black;
}
.close{
background: #C4CDD5;
}
.insert:hover, .modibtn:hover{
background:#454F5B;
}
.close:hover{
background:#919EAB;
}
</style>
<body>


		<div class="row" id="delivery-area" style="height:35.875rem; width:40.25rem;">
					<div class="col-4 " style="text-align:left; width:18.75rem; height:6.5rem">
						<div class="body2" style="margin-bottom:0.5rem;">수령인</div>
						<input type="text"  class="body2 body2input buyer_name"  placeholder="수령인 이름을 입력해 주세요." value='${modi.receiver }'   >
					</div>
					<div class="col-8 phone" style="text-align:left; width:26rem; height:6.5rem">
						<div class="body2" style="margin-bottom:0.5rem;">전화 번호</div>
						<input type="text"  class="body2 body2input buyer_tel" placeholder="전화번호를 입력해 주세요." value=${modi.phone }>
					</div>
					<div class="body2" style="text-align:left;  padding-bottom:0.5rem;">배송지</div>
					<input type="text"  class="body2 inputcode buyer_postcode" id="sample4_postcode" onclick="sample4_execDaumPostcode()" placeholder="우편번호 검색" value=${modi.postcode } > 
					
					<input type="text"  class="body2 inputaddress buyer_addr"   id="sample4_roadAddress" placeholder="주소: 우편번호를 먼저 검색해 주세요." value="${modi.address1}" disabled>
					<input type="text"  class="body2 inputaddress buyer_address2"  placeholder="상세 주소 : 우편번호를 먼저 검색해 주세요." id="sample4_detailAddress" value=${modi.address2 }>
					<div id="deliveryinfo" style="text-align:left; margin-top:1rem ">
					<input type="checkbox" class="check">기본 배송지로 등록
					</div>
					
				
					
					<div style="text-align:center; margin-top:1rem ;">
					<c:choose>
					<c:when test="${modi==null }">
					<button class="btnbtn insert">등록</button>
					<input type="hidden"  class="modi" value="false">
					</c:when>
					<c:otherwise>
					<button class="btnbtn modibtn" value="${modi.deliveryaddress_seq}">수정</button>
					<input type="hidden"  class="modi" value="true">
					</c:otherwise>
					</c:choose>
					
					<button class="btnbtn close" type="button">닫기</button>
					</div>
				</div>

<script>
//수정
$(".modibtn").on("click",function(){
if(!$(".check").prop("checked")){
		
		var rtn = false;
		$.ajax({
			url:"/delivery/checkdefaultAddress",
			async:false
		}).done(function(resp){
			console.log(resp);
			if(resp = 'false'){
				alert("기본주소지 한 개 필수입니다.");
				
			}else{
				rtn=true;
			}
		});
		return rtn;
		
	}
	if($(".buyer_name").val()==''){
		alert("받는 사람 이름을 입력해주세요 ");
		return false;
	}
	if($(".buyer_tel").val()==''){
		alert("핸드폰 번호를 입력해주세요 ");
		return false;
	}
	if($(".buyer_postcode").val()==''){
		alert("우편주소를 입력해주세요");
		return false;
	}
	if($(".buyer_address2").val()==''){
		alert("상세주소를 입력해주세요");
		return false;
	}
	
	
	console.log($(".modi").val())
	deliveryaddress_seq=$(this).val();
	$.ajax({
		url:"/delivery/insertModiNewAddress",
		data:{
			receiver:$(".buyer_name").val(),
			phone:$(".buyer_tel").val(),
			postcode:$(".buyer_postcode").val(),
			address1:$(".buyer_addr").val(),
			address2:$(".buyer_address2").val(),
			defaultaddress:$(".check").val(),
			modi:$(".modi").val(),
			deliveryaddress_seq:deliveryaddress_seq	
		}
		}).done(function(resp){
			alert("수정되었습니다.");
			opener.parent.location.reload();
			window.close();
			})
})
//등록
$(".insert").on("click",function(){

	if(!$(".check").prop("checked")){
		
		var rtn = false;
		$.ajax({
			url:"/delivery/checkdefaultAddress",
			async:false
		}).done(function(resp){
			console.log(resp);
			if(resp = 'false'){
				alert("기본주소지 한 개 필수입니다.");
				
			}else{
				rtn=true;
			}
		});
		return rtn;
		
	}
	if($(".buyer_name").val()==''){
		alert("받는 사람 이름을 입력해주세요 ");
		return false;
	}
	if($(".buyer_tel").val()==''){
		alert("핸드폰 번호를 입력해주세요 ");
		return false;
	}
	if($(".buyer_postcode").val()==''){
		alert("우편주소를 입력해주세요");
		return false;
	}
	if($(".buyer_address2").val()==''){
		alert("상세주소를 입력해주세요");
		return false;
	}
	
	
	$.ajax({
		url:"/delivery/insertModiNewAddress",
		data:{
			receiver:$(".buyer_name").val(),
			phone:$(".buyer_tel").val(),
			postcode:$(".buyer_postcode").val(),
			address1:$(".buyer_addr").val(),
			address2:$(".buyer_address2").val(),
			defaultaddress:$(".check").val(),
			modi:$(".modi").val()	}
		}).done(function(resp){
			alert("등록되었습니다.");
			opener.parent.location.reload();
			window.close();
			})
		});

$(document).ready(function(){

		if($(".check").prop("checked")){
			$(".check").val("Y");
		}else{
			$(".check").val("N");
		}
		
	
});
$(".check").on("click",function(){
	if($(".check").prop("checked")){
		$(".check").val("Y");
	}else{
		$(".check").val("N");
	}
	
})
$(".close").on("click",function(){
	window.close();
})


//우편번호
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            

        }
    }).open();
}


</script>
				
				
</body>
</html>