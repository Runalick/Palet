<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="/css/event/paint.css">
</head>
<body>

	<input type="text" name="title" id="title" placeholder="제목을 입력하세요">
	<input type="text" name="painter" id="painter" placeholder="그린이를 입력하세요">

	<canvas id="jsCanvas" class="canvas"></canvas>
  <div class="controls">
      <div class="controls_colors" id="jsColors">
        <div class="controls_color jsColor custom__color" id="check"></div>
      </div>

      <div class="controls_range">
          <input type="range" id="jsRange" min="0.1" max="5.0" value="2.5" step="0.1">
      </div>
      <div class="controls_btns">
          <button id="jsMode">Fill</button>
          <button id="jsSave">Save</button>
          <button id="jsSubmit">Submit</button>          
      </div>
      
      <div class="controls_colors" id="jsColors">
          <div style="margin-right: 10px;" style="display: none;"> 
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
          <div class="controls_color" id="jsReset" 
          style="line-height: 50px; text-align: center; background-color: #DFE3E8;">Reset</div>
      </div>

      

      <div class="controls__size">
        <form class="controls__width">
            <input type="number" id="canvas__width" placeholder="Width" value="700" min="500" max="2000" />
        </form>
        
        <form class="controls__height">
            <input type="number" id="canvas__height" placeholder="height" value="700" min="500" max="2000" />
        </form>
      </div>

  </div>
  <script src="/js/paint.js"> </script>
	
</body>
</html>