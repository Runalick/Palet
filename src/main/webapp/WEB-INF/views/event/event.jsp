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
		<tr>
			<th>seq
			<th>pic
		</tr>
	<c:forEach var="i" items="${list}">
		<tr>
			<td>${i.draw_seq }
			<td>${i.d_file }
		</tr>
	</c:forEach>
		
	</table>

	
	<script>

	$("#paint").on("click", function(){
		location.href="/event/paint";
	})
	
	</script>

</body>
</html>