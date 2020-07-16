
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> 욕실 견적 계산기 </title>

<style>
    
            @import url('https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@300&display=swap');


    :root {
	--white: #ffffff;
	--light: #f0eff3;
	--black: #000000;
    --bblack: #424242;
	--dark-blue: #1f2029;
	--dark-light: #353746;
	--red: #C80A1E;
	--yellow: #f8ab37  ;
	--grey: #ecedf3;
}
    

    
body{
      font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
    width: 100%;
	background: var(--white);
	overflow-x: hidden;
	font-size: 15px;
    height: 100%;
	line-height: 30px;
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear; 
	letter-spacing: 1px;
    -webkit-font-smoothing: antialiased;
    
}

    
  p{
    font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
	font-size: 15px;
	line-height: 40px;
	color: var(--bblack);
	letter-spacing: -0.2px;
	font-weight: 600;
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear; 
}

    .h2 {
        font-size: 30px;
      line-height: 50px;
      
    }
    
    
::selection {
	color: var(--white);
	background-color: var(--black);
}
::-moz-selection {
	color: var(--white);
	background-color: var(--black);
}
mark{
	color: var(--white);
	background-color: var(--black);
}
.section {
    position: relative;
	width: 100%;
	display: block;
	text-align: center;
	margin: 110px auto;
}
.over-hide {
    overflow: hidden;
}
.z-bigger {
    z-index: 100 !important;
}


.background-color{
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: var(--white);
	z-index: 1;
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear; 
}



[type="checkbox"]:checked,
[type="checkbox"]:not(:checked),
[type="radio"]:checked,
[type="radio"]:not(:checked){
	position: absolute;
	left: -9999px;
	width: 0;
	height: 0;
	visibility: hidden;
}
    
    

.checkbox-tools:checked + label,
.checkbox-tools:not(:checked) + label{
	position: relative;
	display: inline-block;
	padding: 20px;
	width: 110px;
    height: auto;
	font-size: 16px;
    font-weight: 600;
	line-height: 20px;
	letter-spacing: 1px;
	margin:  0 auto;
	margin-left: 5px;
	margin-right: 10px;
	margin-bottom: 10px;
	text-align: center;
	border-radius: 4px;
	overflow: hidden;
	cursor: pointer;
	text-transform: uppercase;
	color: var(--dark-blue);
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear; 
}
.checkbox-tools:not(:checked) + label{
	background-color: var(--light);
	box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.3);
}
.checkbox-tools:checked + label{
    color:var(--light);
    font-weight: 800;
	background-color: transparent;
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.3);
}
.checkbox-tools:not(:checked) + label:hover{
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.3);
}
.checkbox-tools:checked + label::before,
.checkbox-tools:not(:checked) + label::before{
	position: absolute;
	content: '';
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border-radius: 5px;
	background-image: linear-gradient(298deg, var(--red), var(--yellow));
	z-index: -1;
}


.checkbox:checked ~ .section .container .row .col-12 .checkbox-tools:not(:checked) + label{
	background-color: var(--light);
	color: var(--dark-blue);
	box-shadow: 0 1x 4px 0 rgba(0, 0, 0, 0.05);
}
    

    

.checkbox-bigtools:checked + label,
.checkbox-bigtools:not(:checked) + label{
    font-family: 'Poppins', sans-serif;
	position: relative;
	display: inline-block;
	padding: 0;
	padding-top: 15px;
	padding-bottom: 15px;
	width: 160px;
	font-size: 30px;
	line-height: 30px;
	font-weight: 600;
	letter-spacing: 1px;
	margin: 0 auto;
	margin-left: 5px;
	margin-right: 10px;
	margin-bottom: 10px;
	text-align: center;
	border-radius: 4px;
	overflow: hidden;
	cursor: pointer;
	text-transform: uppercase;
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear; 
	-webkit-text-stroke: 1px var(--dark-blue);
    text-stroke: 1px var(--dark-blue);
    -webkit-text-fill-color: transparent;
    text-fill-color: transparent;
    color: transparent;
}
.checkbox-bigtools:not(:checked) + label{
	background-color: var(--light);
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.3);
}
.checkbox-bigtools:checked + label{
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.3);
}
.checkbox-bigtools:not(:checked) + label:hover{
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.3);
}
.checkbox-bigtools:checked + label::before,
.checkbox-bigtools:not(:checked) + label::before{
	position: absolute;
	content: '';
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border-radius: 4px;
	background-image: linear-gradient(138deg, var(--red), var(--yellow));
	z-index: -1;
}
.checkbox-bigtools:checked + label span,
.checkbox-bigtools:not(:checked) + label span{
	position: relative;
	display: block;
}
.checkbox-bigtools:checked + label span::before,
.checkbox-bigtools:not(:checked) + label span::before{
	position: absolute;
	content: attr(data-hover);
	top: 0;
	left: 0;
	width: 100%;
	overflow: hidden;
	-webkit-text-stroke: transparent;
    text-stroke: transparent;
    -webkit-text-fill-color: var(--light);
    text-fill-color: var(--white);
    color: var(--white);
	-webkit-transition: max-height 0.3s;
	-moz-transition: max-height 0.3s;
	transition: max-height 0.3s;
}
.checkbox-bigtools:not(:checked) + label span::before{
	max-height: 0;
}
.checkbox-bigtools:checked + label span::before{
	max-height: 100%;
}

.checkbox:checked ~ .section .container .row .col-xl-10 .checkbox-bigtools:not(:checked) + label{
	background-color: var(--light);
	-webkit-text-stroke: 1px var(--dark-blue);
    text-stroke: 1px var(--dark-blue);
	box-shadow: 0 1x 4px 0 rgba(0, 0, 0, 0.05);
}


.checkbox-chutools:checked + label,
.checkbox-chutools:not(:checked) + label{
	position: relative;
	display: -webkit-inline-flex;
	display: -ms-inline-flexbox;
	display: inline-flex;
	-webkit-align-items: center;
	-moz-align-items: center;
	-ms-align-items: center;
	align-items: center;
	-webkit-justify-content: center;
	-moz-justify-content: center;
	-ms-justify-content: center;
	justify-content: center;
	-ms-flex-pack: center;
	text-align: center;
	padding: 0;
	padding: 6px 25px;
	font-size: 16px;
	 font-weight: 600;
	line-height: 20px;
	letter-spacing: 1px;
	margin: 0 auto;
	margin-left: 6px;
	margin-right: 15px;
	margin-bottom: 16px;
	text-align: center;
	border-radius: 5px;
	cursor: pointer;
    color: var(--dark-blue);
	text-transform: uppercase;
	background-color: var(--light);
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear; 
}
.checkbox-chutools:not(:checked) + label::before{
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.3);
}
.checkbox-chutools:checked + label::before{
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.3);
}
.checkbox-chutools:not(:checked) + label:hover::before{
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.3);
}
.checkbox-chutools:checked + label::before,
.checkbox-chutools:not(:checked) + label::before{
	position: absolute;
	content: '';
	top: -2px;
	left: -2px;
	width: calc(100% + 4px);
	height: calc(100% + 4px);
	border-radius: 5px;
	z-index: -2;
	background-image: linear-gradient(138deg, var(--red), var(--yellow));
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear; 
}
.checkbox-chutools:not(:checked) + label::before{
	top: -1px;
	left: -1px;
	width: calc(100% + 2px);
	height: calc(100% + 2px);
}
.checkbox-chutools:checked + label::after,
.checkbox-chutools:not(:checked) + label::after{
	position: absolute;
	content: '';
	top: -2px;
	left: -2px;
	width: calc(100% + 4px);
	height: calc(100% + 4px);
	border-radius: 5px;
	z-index: -2;
	background-color: var(--light);
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear; 
}
.checkbox-chutools:checked + label::after{
	opacity: 0;
}
.checkbox-chutools:checked + label .uil,
.checkbox-chutools:not(:checked) + label .uil{
	font-size: 20px;
}
.checkbox-chutools:checked + label .text,
.checkbox-chutools:not(:checked) + label .text{
	position: relative;
	display: inline-block;
	-webkit-transition: opacity 300ms linear;
	transition: opacity 300ms linear;
}
.checkbox-chutools:checked + label .text{
	opacity: 0.7;
}
.checkbox-chutools:checked + label .text::after,
.checkbox-chutools:not(:checked) + label .text::after{
	position: absolute;
	content: '';
	width: 0;
	left: 0;
	top: 50%;
	margin-top: -1px;
	height: 2px;
	background-image: linear-gradient(138deg, var(--red), var(--yellow));
	z-index: 1;
	-webkit-transition: all 300ms linear;
	transition: all 300ms linear; 
}
.checkbox-chutools:not(:checked) + label .text::after{
	width: 0;
}
.checkbox-chutools:checked + label .text::after{
	width: 100%;
}

.checkbox:checked ~ .section .container .row .col-12 .checkbox-chutools:not(:checked) + label,
.checkbox:checked ~ .section .container .row .col-12 .checkbox-chutools:checked + label{
	background-color: var(--light);
    color: var(--dark-blue);
}
.checkbox:checked ~ .section .container .row .col-12 .checkbox-chutools:checked + label::after,
.checkbox:checked ~ .section .container .row .col-12 .checkbox-chutools:not(:checked) + label::after{
	background-color: var(--light);
}

    .line {
        position: relative;
width: 100%;
display: inline-block;
padding: 0;
margin: 0 auto;
text-align: center;
margin: 17px 0;
height: 1px;
        background-image: linear-gradient(298deg, var(--red), var(--yellow));
z-index: 100 !important;
    }
    
    
    
.form-control {
font-family: "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
    position: relative;
	display: inline-block;
    transition: .2s border-color, .2s box-shadow, .2s background-color;
    box-sizing: border-box;
    height: 40px;
    text-align: center;
    width: 180px;
    padding: 0 30px 0 30px;
    margin: 0 10px 0 10px;
   margin-bottom: 10px;
    line-height: 40px;
    border-radius: 6px;
    border: solid 1px var(--red);
    background-color: #ffffff;
    color: var(--dark-blue);
    font-size: 15px;
}

    .half {
  background: linear-gradient(to top, #EAE2E5 40%, transparent 50%);
}

.row-empty {
    height: 20px;
}
    
    .foott {
  background-color: var(--dark-blue);
  height: 70px;
        padding-top:20px;
  width: 100%;
  bottom: 0;
  position:fixed;
   z-index: 300;
   opacity: 0.8;
    }
    
    .fott{
     text-align:  right;
     color: var(--white);
     font-weight: 700;
        font-family: Tahoma, "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
    font-size: 26px;
    line-height: 1;
    vertical-align: -3px;
    }
    
    .submit_button {
         font-family: Tahoma, "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
        color: var(--white);
        background-color: var(--red);
        height: 50px;
        width:180px;
        border-radius: 6px;
        text-align: center;
    cursor: pointer;
    }
    
    
    .reset_button {
    display: inline-block;
    padding: 5px 10px;
    border-radius: 15px;
    line-height: 20px;
    font-family: inherit;
    font-size: 13px;
    font-weight: 700;
    color: #757575;
    background-color: #f5f5f5;
    border: none;
    transition: background-color .2s;
}

    </style>
    
    <script>
    function formCheck(){
    
    {  
    	
    	
        {  
            
            
            var a = document.querySelector("select[name=bath_gong]");
             var options = a.querySelectorAll("option");
             for(var i=0; i < options.length; i++){

        if(options[i].selected){
       var aa = options[i].getAttribute("data-price"); 
        }
    }
       
             var b = document.querySelector("select[name=bath_sohyung]");
             var options = b.querySelectorAll("option");
             for(var i=0; i < options.length; i++){

        if(options[i].selected){
       var bb = options[i].getAttribute("data-price"); 
        }
    }

    
var c = document.querySelector("input[name=tools]:checked").getAttribute("data-price"); 
   
var d = document.querySelector("input[name=bigtools]:checked").getAttribute("data-price"); 
  
var edata = document.querySelectorAll("input[name=chutools]:checked");
var total =0;
for(var i=0; i < edata.length; i++){
   total += parseInt(edata[i].dataset.price);
}

   var sum = parseInt(c) + parseInt(d) + total ;

   
   document.querySelector("input[name=hyde]").value=sum;
 
}
    
    
    {
    	var ba = document.insertForm;
    	if(ba.bath_gong.value==""){
    		ba.bath_gong.focus(); 
       alert(" 공용(거실)을 선택해주세요!");
    		return false;
    	}
 
            if(ba.bath_sohyung.value==""){
    		ba.bath_sohyung.focus();
            alert(" 소형(안방)을 선택해주세요!");
    		return false;
    		}
               	if(ba.bath_sohyung.value && ba.bath_gong.value ==""){
    		ba.bath_sohyung.focus();
            alert(" 욕실이 있어야 합니다! ");
    		return false;
    		}
            
    	return true;
    }
    }

    
    </script>
  

</head>
<body>
		
     <form method="post" action="bath2.jsp" name="insertForm" onsubmit="return formCheck();">
		<div class="section over-hide z-bigger">
			<div class="container pb-5">
				<div class="row justify-content-center pb-5">
     <div class="line"> </div>
   <span class="h2"> 욕실 견적 계산 </span> 
    <input class="reset_button" type='reset' value="초기화">

<!--옵션1-->
   	<div class="col-12 pt-5">
						<p class="mb-4 pb-2 "><span class="half"> 시공할 욕실이 몇 개인가요?</span> </p>
					</div>
				
					<div class="col-12 pt-5">
					
		 
         		<select class="form-control
         		" name="bath_gong" style="vertical-align: middle; text-align-last: center">
							<option style="color:#DDD7E4" selected value disabled> - 공용(거실) - </option>
							<option value="1개" data-price="100000">공용 1개</option>
							<option value="2개" data-price="100000">공용 2개</option>
							<option value="3개" data-price="100000">공용 3개</option>
							<option value="0"data-price="0">없음</option>
						</select>
                      
			
             
				<select class="form-control" name="bath_sohyung" style="vertical-align: middle; text-align-last: center">
				 			<option style="color:#DDD7E4" selected value disabled> - 소형(안방) - </option>
							<option value="1개"data-price="100000">소형 1개</option>
							<option value="2개"data-price="100000">소형 2개</option>
							<option value="3개"data-price="100000">소형 3개</option>
							<option value="0"data-price="0">없음</option>
						</select>
					
					</div>
					<div class="row-empty"></div>
				
					
<!--옵션2-->
      	<div class="col-12 pt-5">
						<p class="mb-4 pb-2"><span class="half"> 어떤 욕실 유형을 선호하세요?</span></p>
					</div>
					<div class="col-12 pb-5">
						<input class="checkbox-tools" type="radio" data-price="500" name="tools" checked id="tools-1" value="욕조형" >
						<label class="for-checkbox-tools" for="tools-1">
							욕조형
						</label>
						<!--
						--><input class="checkbox-tools" type="radio" data-price="600" name="tools" id="tools-2" value="샤워부스형">
						<label class="for-checkbox-tools" for="tools-2">
							샤워부스형
						</label><!--
						--><input class="checkbox-tools" value="파우더형" data-price="700" type="radio" name="tools" id="tools-3">
						<label class="for-checkbox-tools" for="tools-3">
						파우더형
						</label></div>
								<div class="row-empty"></div>
						
<!--옵션3-->
                    <div class="col-12 pt-1">
						<p class="mb-4 pb-2"><span class="half">타일은 어디에 시공할까요?</span></p>
					</div>
					<div class="col-xl-10 pb-5">
						<input class="checkbox-bigtools" value="벽" type="radio" data-price="500000" name="bigtools" id="bigtools-1" checked>
						<label class="for-checkbox-bigtools" for="bigtools-1">
							<span data-hover="벽">벽</span>
						</label><!--
						--><input class="checkbox-bigtools" value="바닥" type="radio" data-price="600000" name="bigtools" id="bigtools-2">
						<label class="for-checkbox-bigtools" for="bigtools-2">							
							<span data-hover="바닥">바닥</span>
						</label><!--
						--><input class="checkbox-bigtools" value="벽+바닥" type="radio" data-price="7000000" name="bigtools" id="bigtools-3">
						<label class="for-checkbox-bigtools" for="bigtools-3">							
							<span data-hover="벽+바닥">벽+바닥</span>
						</label>
					</div>
					
						
								<div class="row-empty"></div>
<!--옵션4-->
							<div class="col-12 pt-1">
						<p class="mb-4 pb-2"><span class="half"> 추가옵션 (중복선택가능) </span></p>
					</div>
					<div class="col-12 pb-5">
						<input class="checkbox-chutools" value="젠다이" data-price="500000" type="checkbox" name="chutools" id="chutools-1" checked >
						<label class="for-checkbox-chutools" for="chutools-1">
						<span class="text">젠다이</span>
						</label><!--
						--><input class="checkbox-chutools" value="거울수납장" data-price="50000" type="checkbox" name="chutools" id="chutools-2">
						<label class="for-checkbox-chutools" for="chutools-2">							
							<span class="text">거울수납장</span>
						</label><!--
						--><input class="checkbox-chutools" value="선반" data-price="5000" type="checkbox" name="chutools" id="chutools-3">
						<label class="for-checkbox-chutools" for="chutools-3">							
							<span class="text">선반</span>
						</label><!--
						--><input class="checkbox-chutools" value="비데" data-price="500" type="checkbox" name="chutools" id="chutools-4">
						<label class="for-checkbox-chutools" for="chutools-4">							
							<span class="text">비데</span>
						</label><!--
						--><input class="checkbox-chutools" value="환풍기" data-price="50" type="checkbox" name="chutools" id="chutools-5">
						<label class="for-checkbox-chutools" for="chutools-5">							
					<span class="text">환풍기</span>
						</label>
					</div>
							<div class="row-empty"></div>

<div class="foott"> 
<span class="fott">250~260만원</span> 
		 <input type="submit" class="submit_button" value="견적서 확인">
		  <input type="hidden" name="hyde" value="">   
</div>

</form>


    	</div>
			</div>	
		</div>
</body>
</html>