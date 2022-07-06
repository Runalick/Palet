<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<meta name="description"
	content="Demo for jQuery.qrcode (https://larsjung.de/jquery-qrcode/).">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="//fonts.googleapis.com/css2?family=Ubuntu+Mono:wght@400;700&amp;display=swap"
	rel="stylesheet">
<script src="/js/qrmaker.js"></script>

</head>

<body>

<!--    <div id="qrcode"></div><br> -->
<!--    <div>태스트 큐알입니다.</div><br> -->
<!--    <br><br> -->
   <div id="ticketqrcode"></div>
   <div>티켓 테스트 큐알입니다</div>
    <script type="text/javascript">
//         var qrcode = new QRCode(document.getElementById("qrcode"), {
//             text: "${url}",
//             width: 128,
//             height: 128,
//             colorDark : "#000000",
//             colorLight : "#ffffff",
//             correctLevel : QRCode.CorrectLevel.H
//         });
        var qrcode = new QRCode(document.getElementById("ticketqrcode"), {
            text: "${url}",
            width: 128,
            height: 128,
            colorDark : "#000000",
            colorLight : "#ffffff",
            correctLevel : QRCode.CorrectLevel.H
        });
    </script>
</body>
</html>