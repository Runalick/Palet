<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Password</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
	<input type="text" name="email" id="email"><button type="button" id="send">메일발송</button>
	<input type="text" id="cord" disabled="disabled" style="display: none">
	<script type="text/javascript">
	$("#send").on("click",function(){
		$.ajax({
			url:"/mail/sendmail",
			data:{"email":$("#eamil").val()}
		}).done(resp){
			console.log(resp);
			$("#cord").val(resp);
		}
	})
	</script>
</body>
</html>