<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Palet</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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


        * {
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




        .h1 {


            padding: 0px;



            color: #FFFFFF;


            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 700;
            font-size: 4rem;

            line-height: 4.813rem;


        }

        .body1 {


            /* Body/Body1 */

            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 400;
            font-size: 1.25rem;
            line-height: 1.875rem;
            /* identical to box height, or 150% */


            color: #FFFFFF;

        }

        .body2 {


            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 400;
            font-size: 1rem;
            line-height: 1.75rem;
            /* identical to box height, or 175% */

            margin-bottom: 0px;
            color: #000000;


        }


        #mainphoto {
            margin: 0px;
            min-height: 600px;
           	max-heieght:1920px;

            height: 0;

            padding-bottom: calc(800/1920*100%);

            background-image: url("/images/Mainphoto.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: 100% 100%;

        }
 
        #mainphoto2 {
            margin: 0px;
            min-height: 600px;

            height: 0;

            padding-bottom: calc(800/1920*100%);

            background-image: url("/images/timegarden.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: 100% 100%;

        }

    


        .btn1 {

            box-sizing: border-box;

            padding: 1.125rem 1.5rem;
            gap: 0.625rem;

            margin-bottom: 1rem;
            margin-right: 1.25rem;

            width: 12.5rem;
            height: 3.75rem;


            border: 1px solid #FFFFFF;
            border-radius: 1.25rem;
            background-color: rgba(0, 0, 0, 0);


            /* Button/Button1 */

            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 500;
            font-size: 1.25rem;
            line-height: 1.5rem;
            /* identical to box height */

            text-align: center;

            color: #FFFFFF;


            /* Inside auto layout */

        }

        .btn2 {

            padding: 1.125rem 1.5rem;
            gap: 0.625rem;


            width: 12.5rem;
            height: 3.75rem;


            background: #FFFFFF;
            border-radius: 1.25rem;
            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 500;
            font-size: 1.25rem;
            line-height: 1.5rem;
            /* identical to box height */

            text-align: center;

            /* Gray/900 */

            color: #161C24;


            /* Inside auto layout */

        }
        .btn3 {



/* display: block; */
/* flex-direction: row;
justify-content: center;
align-items: center; */
padding: 1.125rem 1.5rem;
gap: 0.625rem;


width: 11.625rem;
height: 3.75rem;




background: #161C24;
border-radius: 1.25rem;




font-family: 'Spoqa Han Sans Neo';
font-style: normal;
font-weight: 500;
font-size: 1.2rem;
line-height: 1.5rem;


text-align: center;

color: #FFFFFF;


}

        .btn5 {

            padding: 1.125rem 1.5rem;
            gap: 0.625rem;


            width: 18.813rem;
            height: 3.75rem;


            /* Gray/900 */

            background: #161C24;
            border-radius: 1.25rem;
            font-family: 'Spoqa Han Sans Neo';
                font-style: normal;
            font-weight: 500;
             font-size: 1.22rem;
            line-height: 1.5rem;
                        /* identical to box height */

            text-align: center;

                color: #FFFFFF;




        }

      

        .h4 {

            margin-bottom: 0px;
            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 700;
            font-size: 1rem;
            line-height: 1.875rem;
            /* identical to box height, or 188% */


            color: #000000;

        }

        .h2 {

            /* width: 10.375rem;
            height: 2.688rem; */



            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 700;
            font-size: 2.25rem;
            line-height: 2.688rem;
            text-align: center;

            /* Gray/900 */

            color: #161C24;

        }

        .h2_1 {
            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 700;
            font-size: 2.25rem;
            line-height: 2.688rem;


            /* Gray/900 */

            color: white;
        }

        .h3 {

            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 700;
            font-size: 1.25rem;
            line-height: 1.5rem;
            /* identical to box height */


            /* Gray/900 */

            color: #161C24;
        }

        .caption {
            font-family: 'Spoqa Han Sans Neo';
            font-style: normal;
            font-weight: 700;
            font-size: 0.875rem;
            line-height: 1.063rem;
            /* identical to box height */


            /* Gray/500 */

            color: #919EAB;
        }


        #row1>div {

            padding-left: 0px;
            padding-right: 0px;
        }

        .hcon {
            margin-top: 0.938rem;
            height: 3.75rem;
        }

       

        #main3 {

            height: 42.375rem;


            background: linear-gradient(180deg, #F4F6F8 0%, rgba(244, 246, 248, 0) 100%);

        }

        #footer{
            background: #F4F6F8;
            height: 13.25rem;
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

    <div class="container-fluid" >
        <div class="row" id="mainphoto">
            <div class="container">
                <div class="row" id="row1">
                   


                    <!-- <div class="col-12" id=word1>
                    </div> -->
                    <div class="col-12 h1 d-block d-sm-none" style="text-align: center; margin-top : 12.5rem;">Romantic Days</div><br>
                    <div class="col-12 h1 d-block d-sm-none" style="text-align: center;">어쨋든 사랑</div>
                    <div class="col-12 h1 d-none d-sm-block" style = "margin-top : 12.5rem;">Romantic Days</div><br>
                    <div class="col-12 h1 d-none d-sm-block">어쨋든 사랑</div>
                    <div class=col-12>
                        <div class="col-12 body1 d-block d-sm-none" style="text-align: center; margin-top : 2.5rem;"> 2022.03.16 ~ 2022.10.30
                        </div>
                        <div class="col-12 body1 d-none d-sm-block" style = "margin-top : 2.5rem;"> 2022.03.16 ~ 2022.10.30</div>
                    </div>
                   


                    <div class="col-12  d-none d-sm-block" style = "margin-bottom: 14.75rem; margin-top : 5rem; " >
                        <button class="btn1">자세히 보기</button>
                        <button class="btn2">예매 하기</button>
                    </div>
                    <div class="col-12 d-block d-sm-none" style="margin-bottom: 14.75rem; text-align: center; margin-top : 5rem;">

                        <button class="btn1" style="margin: auto; margin-bottom: 1rem; text-align: center;">자세히
                            보기</button><br>
                        <button class="btn2" style="  text-align: center;">예매 하기</button>
                    </div>

                </div>
            </div>
        </div>
        <div class="row hcon" style="background: #F4F6F8; margin: 0px;">

            <div class="container">
                <div class="row hcon" id="row1">
                    <div class="col-md-1  d-none d-sm-block h4">
                        운영시간
                    </div>
                    <div class="col-md-4 d-none d-sm-block body2">
                        화요일–일요일(월요일 휴관), 10:00–18:00
                    </div>
                    <div class="col-md-1 d-none d-sm-block h4">
                        전시장소
                    </div>
                    <div class="col-md-6 d-none d-sm-block body2">
                        지하철3호선 경복궁역 지하 1층
                    </div>
                    <div class="col-md-1  d-block d-sm-none h4" style="text-align: center; ">
                        운영시간
                    </div>
                    <div class="col-md-4 d-block d-sm-none body2" style="text-align: center;">
                        화요일–일요일(월요일 휴관), 10:00–18:00
                    </div>
                    <div class="col-md-1 d-block d-sm-none h4" style="text-align: center;">
                        전시장소
                    </div>
                    <div class="col-md-6 d-block d-sm-none body2" style="text-align: center;">
                        지하철3호선 경복궁역 지하 1층
                    </div>
                </div>

            </div>
            <div class="row" style="margin-top: 10rem;">
                <div class="col-12 h2">
                    베스트 셀러
                </div>
            </div>
        </div>



        <div class="container">
            <div class="row " style="margin-top: 3.75rem;" id="row1">
                <div class="col-xl-4 col-sm-6 " style="text-align: center; ">
                    <img src="/images/image 21.png" class="w-100 p-3" style="padding-left: 0px;">
                </div>
                <div class="col-xl-4 col-sm-6" style="text-align: center;">
                    <img src="/images/BestGoods-1.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6" style="text-align: center;">
                    <img src="/images/BestGoods-2.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6" style="text-align: center;">
                    <img src="/images/BestGoods-3.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6" style="text-align: center;">
                    <img src="/images/BestGoods-4.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6" style="text-align: center;">
                    <img src="/images/BestGoods.png" class="w-100 p-3">
                </div>
            </div>


        </div>

        <div class="container">
            <div class="row " style="margin-top: 3.75rem; text-align:center;" id="row1">
                <div class="col-12" style="text-align:center;">
                    <button class="btn3 btn">전시 굿즈 더보기</button>
                </div>


            </div>
        </div>









        <div class="row" id="mainphoto2" style="margin-top: 12.5rem;">
            <div class="container">
                <div class="row" id="row1">
                  

                    <div class="col-12 h2_1 d-block d-sm-none" style="text-align: center; margin-top: 10rem;">곧 시작합니다</div>
                    <div class="col-12 h1 d-block d-sm-none" style="text-align: center; margin-top: 2.5rem;">과천프로젝트 2022:</div><br>
                    <div class="col-12 h1 d-block d-sm-none" style="text-align: center;  ">옥상정원_시간의 정원</div>
                    
                   
                    <div class="col-12 h2_1 d-none d-sm-block" style="margin-top: 10rem;">곧 시작합니다</div>
                    <div class="col-12 h1 d-none d-sm-block" style="margin-top: 2.5rem;">과천프로젝트 2022:</div><br>
                    <div class="col-12 h1 d-none d-sm-block" >옥상정원_시간의 정원</div>

                    

                    <div class=col-12>
                        <div class="col-12 body1 d-block d-sm-none" style="text-align: center; margin-top: 2.5rem;"> 2022-06-29~2023-06-25
                        </div>
                        <div class="col-12 body1 d-none d-sm-block" style="margin-top: 2.5rem;"> 2022-06-29~2023-06-25</div>
                    </div>
                    

                    <div class="col-12  d-none d-sm-block" style = "margin-top: 5rem;">
                        <button class="btn1">자세히 보기</button>
                    </div>


                    <div class="col-12 d-block d-sm-none" style="margin-top: 5rem;  text-align: center;">

                        <button class="btn1" style="margin: auto; margin-bottom: 1rem; text-align: center;">자세히
                            보기</button>

                    </div>


                </div>
            </div>
        </div>
        <div class="container">
            <div class="row " style="margin-top: 10rem; text-align:center;" id="row1">
                <div class="col-12 h2" style="text-align:center;">
                    지난 전시들
                </div>


            </div>
        </div>

        <div class="container" id=" flow">
            <div class="row overflow-auto" style="margin-top: 3.75rem;">
                <div class="col-xl-4 col-sm-6 " style="text-align: center; ">
                    <img src="/images/preex1.png" class="w-100 p-3" style="text-align: center;">
                    <div class=h3>카로 악포키에르 «분실된 그림들»</div>
                    <div class=caption>2022-03-03~2022-03-10</div>
                </div>
                <div class="col-xl-4 col-sm-6 " style="text-align: center;">
                    <img src="/images/preex2.png" class="w-100 p-3">
                    <div class=h3>MMCA 국제미술 소장품 기획전 «미술로, 세계로»</div>
                    <div class=caption>2022-01-20~2022-06-12</div>
                </div>
                <div class="col-xl-4 col-sm-6 " style="text-align: center;">
                    <img src="/images/preex3.png" class="w-100 p-3">
                    <div class=h3>아이 웨이웨이</div>
                    <div class=caption>2021-12-11~2022-04-17</div>
                </div>
                <!-- <div class="col-xl-4 col-sm-6 overflow-auto " style="text-align: center; ">
                    <img src="preex1.png" class="w-100 p-3" style="padding-left: 0px;">
                </div>
                <div class="col-xl-4 col-sm-6 overflow-auto" style="text-align: center;">
                    <img src="preex2.png" class="w-100 p-3">
                </div>
                <div class="col-xl-4 col-sm-6 overflow-auto" style="text-align: center;">
                    <img src="preex3.png" class="w-100 p-3">
                </div> -->

            </div>

        </div>

        <div class="container">
            <div class="row " style="margin-top: 2.5rem; text-align:center;" id="row1">
                <div class="col-12 h2" style="text-align:center;">
                    <img type=button src="/images/btn4_1.png" style="margin-right: 1.25rem;"><img type=button src="/images/btn4_2.png">
                </div>


            </div>
        </div>
        <div class="row" id="main3" style="margin-top: 12.5rem;">
            <div class="container">
                <div class="row" id="row1">
                    <div class="col-12 h2" style="text-align:center; margin-top: 10rem;">
                        지루한 지하철? NO!
                    </div>
                    <div class="col-12 h2" style="text-align:center; margin-top: 0.75rem;">
                        팔레트는 매일 새로운 즐거움을 전달합니다.
                    </div>
                    <div class="col-12 body1" style="text-align:center; margin-top:2.5rem; color:#161C24;">
                        일상과 예술의 연결,
                    </div>
                    <div class="col-12 body1" style="text-align:center; margin-top: 0.25rem; color:#161C24;">
                        팔레트와 함께 다양한 색을 만들어 보세요.
                    </div>
                    <div class="col-12 body1" style="text-align:center; margin-bottom : 12.063rem; margin-top: 3.75rem; color:#161C24;">
                        <button class="btn5" >팔레트와 새로운 전시 기획하기</button>
                   </div>
                </div>
            </div>
        </div>
        <div class="row" id="footer">
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

</html>



