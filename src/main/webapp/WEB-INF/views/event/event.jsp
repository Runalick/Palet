<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>

	<button id="paint">Paint</button>
	<br>
	<table border=1>
	<c:forEach var="i" items="${list}">
		<tr>
			<td colspan=3><img src="${i.d_file }" style="width:100px; height:100px;">
		</tr>
		<tr>
			<td><button id="ok">ok</button>
			<td id="1">${i.draw_seq }
			<td>${i.d_title }
			<td>${i.painter }
			
		</tr>
	</c:forEach>
		
	</table>

	
	<script>

	$("#paint").on("click", function(){
		location.href="/event/paint";
	})
	
	$("#ok").on("click", function(){
		console.log($("#id").val());
	})
	
	</script>

</body>
</html>