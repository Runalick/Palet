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
	<form action="/file/upload" method="post" enctype="multipart/form-data">
		<input type=text name=title placeholder="제목"><br>
		<input type=text name=contents placeholder="설명"><br>
		<input type=file name=file multiple><br>
		<button>전송</button>
	</form>
	
	<script>
	$("#filelist").on("click", function(){
		$.ajax({
			url:"/file/list",
			dataType: "json"
		}).done(function(resp){
			for(let i=0; i < resp.length; i++) {
				let fileLine = $("<div>");
				fileLine.addClass="fileItem";
				
				let fileAnker = $("<a>");
				fileAnker.attr("href", "/file/download?ori_name=" + resp[i].ori_name + "&sys_name=" + resp[i].sys_name);
				fileAnker.text(resp[i].ori_name);
				
				fileLine.append(fileAnker);
				$("#filelist").after(fileLine);
			}
		})
	})
	

	$("#paint").on("click", function(){
		location.href="/event/paint";
	})
	
	</script>

</body>
</html>