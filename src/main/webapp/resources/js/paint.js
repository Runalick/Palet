const canvas = document.getElementById("jsCanvas");
const ctx = canvas.getContext("2d");
const colors = document.getElementsByClassName("jsColor");
const range = document.getElementById("jsRange");
const mode = document.getElementById("jsMode");
const reset = document.getElementById("jsReset");
const saveBtn = document.getElementById("jsSave");
const check = document.querySelector("#check");
const customColor = document.querySelector("#jsColorCustom");
const shapeCColor = document.querySelector(".custom__color");
const widthForm = document.querySelector(".controls__width");
const heightForm = document.querySelector(".controls__height");
const submit = document.querySelector("#jsSubmit");
const title = document.getElementById("title");
const painter = document.getElementById("painter");

const INITIAL_COLOR = "#2c2c2c";
const CANVAS_SIZE = 700;

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
    const x = event.offsetX;
    const y = event.offsetY;
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
    const color = event.target.style.backgroundColor;
    check.style.backgroundColor = color;
    ctx.strokeStyle = color;
    ctx.fillStyle = color;
    ctx.strokeStyle = color;
}

// 선 굵기 
function handleRangeChange(event){
    const size = event.target.value;
    ctx.lineWidth = size;
}

function handleResetClick() {
    ctx.fillStyle = "white";
    ctx.fillRect(0,0,canvas.width,canvas.height);
}

function handleModeClick(){
    if(filling === true){
        filling = false;
        mode.innerText = "Fill";
    } else {
        filling = true;
        mode.innerText = "Paint";
        
    }
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
    const image = canvas.toDataURL("image/png");
    const link = document.createElement("a");
    link.href = image;
    link.download = "Palet Export";
    link.click();
}

function handleCColorChange(event) {
    const color = event.target.value;
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
	
	const imgDataUrl = canvas.toDataURL("image/png", 1.0);
	 
	var blobBin = atob(imgDataUrl.split(',')[1]);	// base64 데이터 디코딩
    var array = [];
    for (var i = 0; i < blobBin.length; i++) {
        array.push(blobBin.charCodeAt(i));
    }
    var file = new Blob([new Uint8Array(array)], {type: 'image/png'});	// Blob 생성
   	//var fileName = 'canvas_img_' + new Date().getMilliseconds() + '.png';
    var formdata = new FormData();	// formData 생성
    formdata.append("file", file);	// file data 추가
    formdata.append("d_title", title.value)	
	formdata.append("painter", painter.value)
    
    
    $.ajax({
        type : 'post',
        url : '/event/send',
        data : formdata,
        dataType: 'json',
        processData : false,	// data 파라미터 강제 string 변환 방지!!
        contentType : false,	// application/x-www-form-urlencoded; 방지!!
        success : function (data) {
            if(data == "true"){
				alert(painter.value + "님의 작품이 등록되었습니다. 관리자의 승인 후 등록됩니다.");
			} else {
				alert("본 이벤트는 1계정당 1번만 참여가 가능합니다.");
			}
        }
       
    });	 
	    
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



