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
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<style>
.img {
	width: 100px;
	height: 100x
}

.stock {
	display: inline-block;
}

</style>
<body>
	장바구니
	<br>
	<hr>
	<br>
	<c:choose>
		<c:when test="${list != '[]'  }">
			<input type="checkbox" class="checkall" checked="checekd"> 전체 선택<br>
			<form action="/cart/purchase" id="purchaseFrm">
				<c:forEach var="i" items="${list }">

					<div class="cartInfo">

						<input type="checkbox" name="buy" value="${i.g_num }"
							class="check" checked="checekd"><br> <input
							type="hidden" class="individual_price" value="${i.g_price }">
						<input type="hidden" name="buystock" class="individual_cartstock"
							value="${i.cartstock}"> <input type="hidden"
							class="individual_point" value="${i.point}">
					</div>

					<img class="img" src="${realpath }${i.gp_sysname}">
					<br>
${i.g_name}<br>
${i.g_option }<br>
					<div>${i.g_price }</div>
					<div class="point">적립 포인트 ${i.point}</div>
					<div>
						<div>
							<button type="button" class="minus">-</button>
							<div class="stock">${i.cartstock }</div>
							<button type="button" class="plus">+</button>
						</div>
						<button type="button" class="modi" value="${i.g_num }">변경</button>
						<br>
						<button type="button" class="del" value="${i.g_num }">삭제</button>
						<br>
					</div>
				</c:forEach>
			</form>
			<hr>
			<div>
				총 수량<span class="totalCount"></span>
			</div>
			<div>
				배송비<span class="deliveryPrice"></span>
			</div>
			<div>
				적립 포인트<span class="totalPoint"></span>
			</div>
			<div>
				상품 금액<span class="totalPrice"></span>
			</div>
			<div>
				주문 금액<span class="finalTotalPrice"></span>
			</div>

			<button id="purchase">구매하기</button>

		</c:when>

		<c:otherwise>
장바구니가 비었습니다
</c:otherwise>
	</c:choose>
	<script>
		$(document).ready(function() {
			setTotalInfo();
		});
		//체크 여부에 따른 변화
		$(".check").on("change", function() {
			setTotalInfo($("cartInfo"))
		})

		//최종 결제 정보
		function setTotalInfo() {

			let totalPrice = 0; // 총 가격
			let totalCount = 0; // 총 갯수
			let totalPoint = 0; // 총 마일리지
			let deliveryPrice = 3000; // 배송비
			let finalTotalPrice = 0; // 최종 가격(총 가격 + 배송비)

			$(".cartInfo").each(
					function(index, element) {

						if ($(element).find(".check").is(":checked") === true) {
							// 총 갯수
							totalCount += parseInt($(element).find(
									".individual_cartstock").val());
							// 총 가격
							totalPrice += (parseInt($(element).find(
									".individual_price").val()
									* parseInt($(element).find(
											".individual_cartstock").val())));
							// 총 마일리지
							totalPoint += parseInt($(element).find(
									".individual_point").val());

							finalTotalPrice = totalPrice + deliveryPrice;
						}

						// 총 가격
						$(".totalPrice").text(totalPrice.toLocaleString());
						// 총 갯수
						$(".totalCount").text(totalCount);
						// 총 마일리지
						$(".totalPoint").text(totalPoint.toLocaleString());
						// 배송비
						$(".deliveryPrice").text(deliveryPrice);
						// 최종 가격(총 가격 + 배송비)
						$(".finalTotalPrice").text(
								finalTotalPrice.toLocaleString());

					});

		}

		$("#purchase").on("click", function() {
			$("#purchaseFrm").submit();
		})

		//체크박스
		$(".checkall").on("click", function() {
			if ($(".checkall").prop("checked")) {
				$(".check").prop("checked", true);
			} else {
				$(".check").prop("checked", false);
			}
			setTotalInfo($(".cartInfo"));
		})

		$(".check").on("click", function() {
			
			
			if ($("input[class=check]:checked").length == $(".check").length) {
				$(".checkall").prop("checked", true);
			} else {
				$(".checkall").prop("checked", false);
			}
		})
		//삭제
		$(".del").on("click", function() {
			location.href = "/cart/cartDel?g_num=" + $(this).val();
		})
		//수정
		$(".modi").on(
				"click",
				function() {
					let stock = $($($(this).siblings()[0]).children()[1])
							.text();
					console.log(stock);
					location.href = "/cart/cartModi?g_num=" + $(this).val()
							+ "&cartstock=" + stock;
				});

		//수량
		$(".plus").on("click", function() {

			let result = $($(this).siblings()[1]).text();
			number = parseInt(result) + 1;
			console.log(number);
			$($(this).siblings()[1]).text(number);
		})
		$(".minus").on("click", function() {

			let result = $($(this).siblings()[0]).text();
			number = parseInt(result) - 1;
			if (number == 0) {
				return false;
			}
			console.log(number);
			$($(this).siblings()[0]).text(number);

		})
			   Kakao.init('feb50c309d28b138aefe9ddc94d76870');
	   
		$(".logout").on("click", function(){
	         Kakao.init('feb50c309d28b138aefe9ddc94d76870');
	         Kakao.isInitialized();
	         if (!Kakao.Auth.getAccessToken()) {
	            console.log('Not logged in.');
	            location.href="/member/logout";
	             return ;
	         }
	         
	          Kakao.Auth.logout(function() {
	               console.log(Kakao.Auth.getAccessToken());
	               location.href="/member/logout";
	             });
	         return true;
	      });
	</script>
	<script>
	window.onload = function(){
		$.ajax({
			url:"/cart/beforeunload";
		})
	}
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