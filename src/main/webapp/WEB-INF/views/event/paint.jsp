<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=chrome">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Palet</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="/css/event/paint.css">
</head>
<body>
	<div class="drawing">
	<div class="controls_colors palet" id="jsColors" style="margin: 52px 20px 0px 20px;">
          <div style="display: none;"> 
            <input id="jsColorCustom"class="controls_color jsColor" style="display: none;" type="color"/>
          </div>
          
          <div class="controls_color jsColor" 
          style="background-color: #2c2c2c;"></div>
          <div class="controls_color jsColor" 
          style="background-color: white;"></div>
          <div class="controls_color jsColor" 
          style="background-color: #ff3b30;"></div>
          <div class="controls_color jsColor" 
          style="background-color: #ff9500;"></div>
          <div class="controls_color jsColor" 
          style="background-color: #FFCC00;"></div>
          <div class="controls_color jsColor" 
          style="background-color: #4cd963;"></div>
          <div class="controls_color jsColor" 
          style="background-color: #5ac8fa;"></div>
          <div class="controls_color jsColor" 
          style="background-color: #0519ff;"></div>
          <div class="controls_color jsColor" 
          style="background-color: #5859d6;"></div>
          
      </div>
      
      <div class="controls">
      	<div class="controls_colors" id="jsColors">
        	<div class="controls_color jsColor custom__color" id="check"></div>
      	</div>
	  
      
	      <div class="controls_range">
	          <input type="range" id="jsRange" min="0.1" max="5.0" value="2.5" step="0.1">
	          <!-- <input type="range" orient="vertical" id="jsRange" min="0.1" max="5.0" value="2.5" step="0.1" style="transform: rotateZ(270deg);"> -->
	      </div>
	      <div class="controls_btns">
	          <button id="jsMode"><img src="/images/color.png" style="width:20px; height:20px;"></button>         
	          <button id="jsBrush"><img src="/images/artist-brush.png" style="width:20px; height:20px;"></button>         
	          <button id="jsReset" ><img src="/images/bin.png" style="width:20px; height:20px;"></button>         
	      </div>
      
		  
      </div>
	</div>
	
	<canvas id="jsCanvas" class="canvas"></canvas>
 	
      
      
    <div class="filecontrol">
    <div class="body2">캔버스 사이즈</div>
		 <div class="controls__size">
	        <form class="controls__width">
	            <input type="number" id="canvas__width" placeholder="Width" value="600" min="300" max="1000" />
	        </form>
	        X
	        <form class="controls__height">
	            <input type="number" id="canvas__height" placeholder="height" value="600" min="300" max="1000" />
	        </form>
	      </div> 
	<div id="inputFrm" >
		<div>
			<span class="body2">제목</span><br>
			<input type="text" name="title" id="title" placeholder="제목을 입력하세요" maxlength='10'>
		</div>
		<div>
			<span class="body2">그린이</span><br>
			<input type="text" name="painter" id="painter" placeholder="그린이를 입력하세요" maxlength='10'>
		</div>
	</div>
	<div class="sbtn">
		<div>
			<button id="jsSave" class="btn1">Save</button>
		</div>
		<div>
			<button id="jsSubmit" class="btn1">Submit</button> 
		</div>
    </div>  
    <div>
    	<div><button class="btn2" id="back">출품작 보러가기</button></div>
    </div>
	</div>
      
	<script>
		$("#back").on("click", function(){
			location.href = "/event/participation";
		})
	</script>
  
  <script src="/js/paint.js"> 
  </script>
	
</body>
</html>