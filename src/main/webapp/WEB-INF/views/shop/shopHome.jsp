<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shop</title>
<!-- JQUERY -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
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
                                <li class="nav-item"> <a id="Admin" class="nav-link" href="/admin/adminMain"
                                		style="padding-left:0px; padding-right:0px;">Admin</a> </li>
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
    <button class="detailview" value="10002" style="height:300px">굿즈2</button>
    <button class="detailview" value="10003" style="height:300px">굿즈3</button>
    </div>
    <script>
    	$(".detailview").on("click",function(){
    		console.log($(".detailview").val());
    		location.href="/shop/goDetail?g_num="+$(".detailview").val();
    	})
    </script>
</body>
</html>