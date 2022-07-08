<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- JQUERY -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!-- font -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<style>
	@import url(//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css);

	@media (min-width: 375px) {
        .container {
            max-width: 1280px;
            min-width: 390px;
        }
        html {
            font-size: 12px;
        }
    }
    
    @media (min-width: 1650px) {
        .container {
            max-width: 1280px;
            min-width: 390px;
        }
        html {
            font-size: 16px;
        }
    }

	*{
		box-sizing: border-box;
	}

	.container-fluid {
        padding: 0px;
    }

	.navbar-brand {
        margin: 0px;
        padding: 0px;
        height: 1.875rem;
    }

	#navparent {
        position: fixed;
        font-size: 0;
        padding-left: 2.5rem;
        padding-right: 2.5rem;
        height: 5rem;
        background-color: white;
    }

	.navbar {
		height: 5rem;
		padding: 0px;
	}

	.row>div {
        padding-left: 2.5rem;
        padding-right: 2.5rem;
    }


    .nav-item {
        padding-left: 20px;
        padding-right: 20px;
    }

    .nav-link {
        padding: 0px;
        padding-right: 0px;
        padding-left: 0px;

            width: 3.625rem;
            height: 1.5rem;

            /* Button/Button1 */

            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 500;
            font-size: 1.25rem;
            line-height: 1.5rem;
            /* identical to box height */

            text-align: center;

            /* Gray/500 */

            color: #919EAB;


            /* Inside auto layout */

            flex: none;
            order: 0;
            flex-grow: 0;

        }

        #Exhibition {
            width: 5.938rem;
            height: 1.5rem;
        }

        #Help {
            width: 2.813rem;
            height: 1.5rem;
        }

        #Login {
            width: 3.313rem;
            height: 1.5rem;
        }

        #Signup {
            width: 4.438rem;
            height: 1.5rem;
        }

	.form-select{
		
		/* bs-white */
/*         background: #FFFFFF; */
 		border: 1px solid #CFD4D9;  
 		box-shadow: 0px 0px 0px #CBDAFC;  
  		border-radius: 5px; 
		
 		width: 240px; 
 		height: 48px;
        
        
/* 		left: 82.5rem; */
/* 		top: 13rem; */
		
/*  	display: flex;  */
/*  	flex-direction: row;  */
  		align-items: center;  
/*  	padding: 10px 12px;  */
/*  	gap: 10px;  */
		
	}
	
	.button {
		/* Auto layout */
		
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
		padding: 12px 20px;
		
/* 		height: 48px; */
		
		/* Gray/200 */
		
		background: #F4F6F8;
		border-radius: 20px;
		
		/* Inside auto layout */
		
		flex: none;
		order: 1;
		flex-grow: 0;
}

.button:hover {
  cursor: pointer;
}

.active {
background-color: #000;
color:#fff;
}

/* font */
.h2 {
    font-family: 'Spoqa Han Sans Neo';
    font-style: normal;
    font-weight: 700;
    font-size: 36px;
    line-height: 43px;

}

.h3{
    font-family: 'Spoqa Han Sans Neo';
    font-style: normal;
    font-weight: 700;
    font-size: 20px;
    line-height: 24px;
    
}

/* 가로 스크롤바 제거 */
.scroll_y::-webkit-scrollbar{
  display:none;
}


</style>
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
                                <li class="nav-item"> <a id="Shop" class="nav-link" href="#"
                                        style="padding-left:0px; padding-right:0px;">Shop</a> </li>
                                <li class="nav-item"> <a id="Help" class="nav-link" href="#"
                                        style="padding-left:0px; padding-right:0px;">Help</a> </li>
                                <li class="nav-item"> <a id="Login" class="nav-link" href="/member/loginPage"
                                        style="padding-left:0px; padding-right:0px;">Login</a> </li>
                                <li class="nav-item"> <a id="Signup" class="nav-link" href="/member/join"
                                        style="padding-left:0px; padding-right:0px;">Sign up</a> </li>
<!--                                 <li class="nav-item"> <a id="Admin" class="nav-link" href="/admin/adminMain" -->
<!--                                 		style="padding-left:0px; padding-right:0px;">Admin</a> </li> -->
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>

    
    
    <!-- 물건 상세페이지로 가는 임시 버튼 나중에지우세요~   -->
    <div>
    <button class="detailview" value="10001" style="height:300px">굿즈1</button>
    <button class="success" value="10002" style="height:300px">success</button>
    <button class="detailview" value="10003" style="height:300px">굿즈3</button>
    </div>
    <script>
    	$(".detailview").on("click",function(){
    		console.log($(".detailview").val());
    		location.href="/shop/goDetail?g_num="+$(".detailview").val();
    	})
    	$(".success").on("click",function(){
    		console.log("d")
    		location.href="/shop/success";
    	})
    </script>

	<div class="container-fluid">
		<div class="row" style="padding-top: 100px;">
			<div class="container">
				<div class="row" >
					<div class="col-9">
						<div class="h2" style="display: inline-block; margin-right: 55.125rem; ">Shop</div>
                    </div>
                    <div class="col-3" style="text-align: right; ">
						<div class="currentExhibition h3" style="display: inline-block; margin-right: 3rem;">현재전시</div>
						<div class="pastExhibition h3" style="display: inline-block; ">지난전시</div>
                    </div>
				</div>
					<div class="row" style="padding-top: 45px;">
						<div class="col-9 scroll_y" style="overflow: auto; white-space: nowrap;">
							<div class="button" id="1001" style="display: inline-block;">Romantic Days 어쨋든, 사랑</div>
							<div class="button" id="1002" style="display: inline-block;">카로 악포키에르 |분실된 그림들|</div>
                            <div class="button" id="1003" style="display: inline-block;">국제미술 소장품 기획전 |미술로, 세계로|</div>
                            <div class="button" id="1004" style="display: inline-block;">아이 웨이웨이</div>
                            <div class="button" id="1005" style="display: inline-block;">Romantic Days 어쨋든, 사랑</div>
						</div>
						<div class="col-3">
							<select class="form-select" id="select_value" aria-label="Default select example" onchange="select_value(this)">
								 <option value="sell" class="option">판매량</option>
								 <option value="lowPrice" class="option">가격낮은순</option>
								 <option value="highPrice" class="option">가격높은순</option>
							</select>
						</div>
					</div>
                    <div class="row list" style="padding-top: 52px; text-align: center;">
                    	
                    </div>
				</div>
			</div>
		<div class="row" id="footer" style="margin-top: 80px; background-color: #F4F6F8; ">
            <div class="container">
                <div class="row" id="row1">
                    <div class="col-12 h3 d-none d-sm-block" style = "color: #637381; margin-top: 3.75rem;">(주)팔레트</div>
                    <div class="col-12 body2 d-none d-sm-block" style = "color: #637381;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2 d-none d-sm-block" style = "color: #637381; margin-bottom: 3.75rem;">3호선 경복궁역 지하 1층 | contact@palet.com</div>
                </div>
            </div>
        </div>
	</div>
	
	
   

</body>
<script>

    window.onload = function(){
    	if(!($("#1001").hasClass("active"))){
    		$("#1001").addClass("active");
    		$.ajax({
            	url:"/shop/selectBestSeller",
            	data:{"e_num":"1001",
            		"option":"sell"}
            }).done(function(resp){
            	console.log(resp);
            	for(i=0; i < resp.length; i++){
            		$(".list").append("<div class='col-4 col-md-3' style='border-radius: 20px; border: 1px solid black;'><div class='t'><a href='"+resp[i].g_num+"'><img class='con' src='/home/"+resp[i].gp_sysname+"'></a></div><div class='b'>" + resp[i].g_name + "</div><div>"+resp[i].g_price+"원</div></div>");
            	}
            })

    	}
    }

     $(".button").on("click",function(){
        $(this).addClass("active");
        $(".button").not(this).removeClass("active");
        $(".form-select").val("sell");
            $.ajax({
            	url:"/shop/selectBestSeller",
            	data:{"e_num":$(this).attr("id"),
            		"option":"sell"}
            }).done(function(resp){
            	$(".list").empty();
            	for(i=0; i < resp.length; i++){
            		$(".list").append("<div class='col-4 col-md-3 '><div class='t'><a href='"+resp[i].g_num+"'><img class='con' src='/home/"+resp[i].gp_sysname+"'></a></div><div class='b'>" + resp[i].g_name + "</div><div>"+resp[i].g_price+"원</div></div>");
            	}
            })
     });
     
     function select_value(value){
    	 let select_option = $(value).val();
    	 console.log(select_option);
            $.ajax({
            	url:"/shop/selectBestSeller",
            	data:{"e_num":$(".active").attr("id"),
            		"option":select_option}
            }).done(function(resp){
            	$(".list").empty();
            	for(i=0; i < resp.length; i++){
            		$(".list").append("<div class='col-4 col-md-3'><div class='t'><a href='"+resp[i].g_num+"'><img class='con' src='/home/"+resp[i].gp_sysname+"'></a></div><div class='b'>" + resp[i].g_name + "</div><div>"+resp[i].g_price+"원</div></div>");	
            	}
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
<script>

    function iamport(){
        //가맹점 식별코드
        IMP.init('imp48062056');
	IMP.request_pay({
	    pg : 'kcp',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '예매' , //결제창에서 보여질 이름
	    amount : 100, //실제 결제되는 가격
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '조양기',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울 강남구 도곡동',
	    buyer_postcode : '123-456'
	}, function(rsp) {
		console.log(rsp);
	    if ( rsp.success ) {
	    	
            $.ajax({
                url:"/pay/insert",
                data:{
                    imp_uid : rsp.imp_uid,
                    pg : "kcp",
                    method : "card",
                    g_name : "예매",
                    price : rsp.paid_amount,
                    apply_num : rsp.apply_num},
                type:"post",
                dataType:"json"
            }).done(function(resp){
                alert(resp);
            });
            var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	    } else {
	    	 var msg = '결제에 실패하였습니다.';
	         msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
    }
      
    </script>
</html>