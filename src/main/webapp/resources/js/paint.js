let canvas = document.getElementById("jsCanvas");
let ctx = canvas.getContext("2d");
let colors = document.getElementsByClassName("jsColor");
let range = document.getElementById("jsRange");
let mode = document.getElementById("jsMode");
let brush = document.getElementById("jsBrush");
let reset = document.getElementById("jsReset");
let saveBtn = document.getElementById("jsSave");
let check = document.querySelector("#check");
let customColor = document.querySelector("#jsColorCustom");
let shapeCColor = document.querySelector(".custom__color");
let widthForm = document.querySelector(".controls__width");
let heightForm = document.querySelector(".controls__height");
let submit = document.querySelector("#jsSubmit");
let title = document.getElementById("title");
let painter = document.getElementById("painter");

let INITIAL_COLOR = "#2c2c2c";
let CANVAS_SIZE = 600;

//canvas.width = document.getElementsByClassName("canvas")[0].offsetWidth;
//canvas.height = document.getElementsByClassName("canvas")[0].offsetHeight;

canvas.width = CANVAS_SIZE;
canvas.height = CANVAS_SIZE;

// = 하얀색 배경ㅇ로 저장해야 하므로 작성 -> 하기 전에는 js에서 bgc를 지정안해서 투명하게 저장됨
ctx.fillStyle = "white";
ctx.fillRect(0,0,canvas.width,canvas.height);
ctx.strokeStyle = INITIAL_COLOR;
ctx.fillStyle = INITIAL_COLOR;
ctx.lineWidth = 2.5;

let painting = false;
let filling = false;

function  handleCanvasWidth(event) {
    console.log(event.target[0].value);
    event.preventDefault();
    canvas.width = event.target[0].value;
}

function handleCanvasHeight(event) {
    event.preventDefault();
    canvas.height = event.target[0].value;
}

function stopPainting(){
    painting = false;
}

function startPainting(){
    painting = true;
}

function onMouseMove(event){
    let x = event.offsetX;
    let y = event.offsetY;
    if(!painting){
        ctx.beginPath();
        ctx.moveTo(x,y);
    } else {
        ctx.lineTo(x,y);
        ctx.stroke();
    }
}

// 색상 변경
function hadleColorClick(event){
    let color = event.target.style.backgroundColor;
    check.style.backgroundColor = color;
    ctx.strokeStyle = color;
    ctx.fillStyle = color;
    ctx.strokeStyle = color;
}

// 선 굵기 
function handleRangeChange(event){
    let size = event.target.value;
    ctx.lineWidth = size;
}

function handleResetClick() {
    ctx.fillStyle = "white";
    ctx.fillRect(0,0,canvas.width,canvas.height);
}

function handleModeClick(){
    
    filling = true;
}

function handleBrushClick(){
	filling = false;
}

function handleCanvasClick(){
    if(filling){
        ctx.fillRect(0,0,canvas.width,canvas.height);
    }
}

function handleCM(event){
    //console.log(event);
    event.preventDefault();
}

function handleSaveClick(){
    let image = canvas.toDataURL("image/png");
    let link = document.createElement("a");
    link.href = image;
    link.download = "Palet Export";
    link.click();
}

function handleCColorChange(event) {
    let color = event.target.value;
    check.style.backgroundColor = color;
    ctx.strokeStyle = color;
    ctx.fillStyle = ctx.strokeStyle;
}

function linkClick() {
    customColor.click();
}

function saveImage() {
	if(title.value == ""){
		alert("제목을 입력해주세요");
		return false;	
	}
	
	if(painter.value == ""){
		alert("작성자를 입력해주세요");
		return false;	
	}
	
	let imgDataUrl = canvas.toDataURL("image/png", 1.0);
//	console.log(imgDataUrl);
	 
	/*var blobBin = atob(imgDataUrl.split(',')[1]);	// base64 데이터 디코딩
    var array = [];
    for (var i = 0; i < blobBin.length; i++) {
        array.push(blobBin.charCodeAt(i));
    }
    var file = new Blob([new Uint8Array(array)], {type: 'image/png'});	// Blob 생성
   	//var fileName = 'canvas_img_' + new Date().getMilliseconds() + '.png';
    var formdata = new FormData();	// formData 생성
    formdata.append("file", file);	// file data 추가
    formdata.append("d_title", title.value)	
	formdata.append("painter", painter.value)*/
	
	d_title = title.value;
	painter = painter.value;
    
  
    $.ajax({
        type : 'post',
        url : '/event/send',
        data : {"d_file": imgDataUrl, "d_title":d_title, "painter":painter},
        
        success : function (data) {
            if(data == "true"){
				alert("이벤트 참여가 완료되었습니다. 관리자의 승인 후 등록됩니다.");
				location.replace("/event/participation");
			} else if (data == "123"){
				alert("본 이벤트는 1계정당 1번만 참여가 가능합니다.");
				location.replace("/event/participation");
			}
			
			
        }
        
       
    });	 
	//return "/event/participation";
	return d_title;
}




if(canvas){
    canvas.addEventListener("mousemove", onMouseMove);
    canvas.addEventListener("mousedown", startPainting);
    canvas.addEventListener("mouseup", stopPainting);
    canvas.addEventListener("mouseleave", stopPainting);
    canvas.addEventListener("click", handleCanvasClick);
    canvas.addEventListener("contextmenu", handleCM);
}

Array.from(colors).forEach(color => 
    color.addEventListener("click", hadleColorClick)
);


if(range){
    range.addEventListener("input",handleRangeChange )
}

if(mode){
    mode.addEventListener("click",handleModeClick )
}

if(brush){
    brush.addEventListener("click",handleBrushClick )
}

if (reset) {
    reset.addEventListener("click", handleResetClick);
    }

if (saveBtn) {
    saveBtn.addEventListener("click", handleSaveClick);
}

if (customColor) {
    customColor.addEventListener("input", handleCColorChange);
}

if (shapeCColor) {
    shapeCColor.addEventListener("click", linkClick);
}

if (widthForm) {
    widthForm.addEventListener("submit", handleCanvasWidth);
}

if (heightForm) {
    heightForm.addEventListener("submit", handleCanvasHeight);
}

if (submit) {
    submit.addEventListener("click", saveImage);
}




