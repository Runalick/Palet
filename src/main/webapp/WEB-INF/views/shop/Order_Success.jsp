<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!-- font -->
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
</head>
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

.body2{
	font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 400;
font-size: 16px;
line-height: 28px;
/* or 175% */

text-align: center;
}

.btn2{
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	
	width: 23.5rem;
	height: 3.75rem;
	
	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	
	text-align: center;
	background: #161C24;
	border-radius: 20px;
	color: #FFFFFF;
}

.btn3{
	padding: 1.125rem 1.5rem;
	gap: 0.625rem;
	
	width: 23.5rem;
	height: 3.75rem;
	
	background: #FFFFFF;
	border-radius: 20px;
	
	/* Button/Button */

	font-family: 'Spoqa Han Sans Neo';
	font-style: normal;
	font-weight: 500;
	font-size: 1.25rem;
	line-height: 1.5rem;
	/* identical to box height */
	
	text-align: center;
}

/* 가로 스크롤바 제거 */
.scroll_y::-webkit-scrollbar{
  display:none;
}


</style>
<body>
	<div class="container-fluid" id=navparent >
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
    <div class="container-fluid" style="">
		<div class="row" style="padding-top: 200px; text-align: center; ">
			<div class="col-12" >
				<div class="row">
				<!-- 반복문을 통해서 내역을 출력 -->
					<div class="col-12 h2" style="padding-bottom: 1rem; padding-top: 12.5rem;">
						주문이 완료되었습니다.
					</div>
					<div class="col-12 body2">
						주문이 성공적으로 접수되었습니다.
					</div>
					<div class="col-12 body2" style="padding-bottom: 2.5rem;">
						주문 처리는 영업일 기준 2~5일 정도 소요됩니다.
					</div>
					<div class="col-12" style="padding-bottom: 0.75rem;">
						<button class="btn2">쇼핑 계속하기</button>
					</div>
					<div class="col-12">
						<button class="btn3">구매내역 확인</button>
					</div>
				</div>
			</div>
		</div>
		<div class="row" id="footer" style="margin-top: 301px; background-color: #F4F6F8; ">
            <div class="container">
                <div class="row" id="row1">
                    <div class="col-12 h3 d-none d-sm-block" style = "color: #637381; margin-top: 3.75rem; ">(주)팔레트</div>
                    <div class="col-12 body2 d-none d-sm-block" style = "color: #637381; text-align: left;">사업자 등록번호 : 123-45-012345 | 대표 : 홍길동 | 통신판매업 신고번호 : 2022-서울강남-012345</div><br>
                    <div class="col-12 body2 d-none d-sm-block" style = "color: #637381; margin-bottom: 3.75rem; text-align: left;">3호선 경복궁역 지하 1층 | contact@palet.com</div>
                </div>
            </div>
        </div>
	</div>

        
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
</body>
</html>