<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>   
@import url('https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@300&display=swap');
    :root {
	--white: #ffffff;
	--light: #f0eff3;
	--black: #000000;
    --bblack: #424242;
	--dark-blue: #1f2029;
	--dark-light: #353746;
	--red: #6A89B2  ;
	--yellow: #C5C5D7;
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
        font-size: 28px;
      line-height: 50px;
      font-weight:700;
      text-align: center;
      
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
  background-color: #EAE2E5 ;
  height: 60px;
  padding-top:20px;
  width: 100%;
  bottom: 0;
  position:fixed;
   z-index: 300;
   opacity: 0.8;
   text-align:center;
    }
    
    .fott{
     text-align: right;
     color: var(--white);
     font-weight: 700;
        font-family: Tahoma, "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕", "Malgun Gothic", sans-serif;
    font-size: 20px;
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
        border-color: var(--red);
        text-align: center;
        font-size: 15px;;
    cursor: pointer;
    margin-left: 10px;
    padding: 10px 0;
    line-height: 20px;
    font-weight: 700;
    }
    
    .submit_button:hover{
    background-color:#C80A1E;
    }
    
    .reset_button {
    text-align:left;
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
    cursor: pointer;
}
    </style>
    
    <script>
    function formCheck(){
    
    {  
            var a = document.querySelector("select[name=bath_gong]");
             var options = a.querySelectorAll("option");
             for(var i=0; i < options.length; i++){
        if(options[i].selected){
       var aa = options[i].getAttribute("data-price"); 
        }
    }
       
             var b = document.querySelector("select[name=bath_sohyung]");
             var optionss = b.querySelectorAll("option");
             for(var i=0; i < optionss.length; i++){
        if(optionss[i].selected){
       var bb = optionss[i].getAttribute("data-price"); 
        }
    }
    
var c = document.querySelector("input[name=tools]:checked").getAttribute("data-price"); 
   
var d = document.querySelector("input[name=bigtools]:checked").getAttribute("data-price"); 
  
var edata = document.querySelectorAll("input[name=chutools]:checked");
var total =0;
for(var i=0; i < edata.length; i++){
   total += parseInt(edata[i].dataset.price);
}
   var sum = parseInt(c) + parseInt(d) + total + parseInt(aa) + parseInt(bb);
   
   document.querySelector("input[name=pricee]").value=sum;
 
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
  
  <!-- header>-->
  <jsp:include page="/template/header.jsp"></jsp:include>
  <!DOCTYPE html>
<html lang="en">
<head>
    <title> 욕실 견적 계산기 </title>

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/login.css">
  
</head>
<body>
		
     <form method="post" action="bath2.jsp" name="insertForm" onsubmit="return formCheck();">
		<div class="section over-hide z-bigger">
			<div class="container pb-5">
				<div class="row justify-content-center pb-5">

   <span class="h2"> 욕실 견적 계산 </span> 
     <div class="line"> </div>
    
   <br> 
<input class="reset_button" type='reset' value="초기화" ></br>

<!--옵션1-->
   	<div class="col-12 pt-5">
						<p class="mb-4 pb-2 "><span class="half"> 시공할 욕실이 몇 개인가요?</span> </p>
					</div>
				
					<div class="col-12 pt-5">
					
         		<select class="form-control
         		" name="bath_gong" style="vertical-align: middle; text-align-last: center">
							<option style="color:#DDD7E4" selected value disabled> - 공용(거실) - </option>
							<option value="1개" data-price="1800000">공용 1개</option>
							<option value="2개" data-price="3600000">공용 2개</option>
							<option value="3개" data-price="5400000">공용 3개</option>
							<option value="0"data-price="0">없음</option>
						</select>
                      
				<select class="form-control" name="bath_sohyung" style="vertical-align: middle; text-align-last: center">
				 			<option style="color:#DDD7E4" selected value disabled> - 소형(안방) - </option>
							<option value="1개"data-price="1200000">소형 1개</option>
							<option value="2개"data-price="2400000">소형 2개</option>
							<option value="3개"data-price="3600000">소형 3개</option>
							<option value="0"data-price="0">없음</option>
						</select>
					
					</div>
					<div class="row-empty"></div>
				
					
<!--옵션2-->
      	<div class="col-12 pt-5">
						<p class="mb-4 pb-2"><span class="half"> 어떤 욕실 유형을 선호하세요?</span></p>
					</div>
					<div class="col-12 pb-5">
						<input class="checkbox-tools" type="radio" data-price="500000" name="tools" checked id="tools-1" value="욕조형" >
						<label class="for-checkbox-tools" for="tools-1">
							욕조형
						</label>
						<!--
						--><input class="checkbox-tools" type="radio" data-price="400000" name="tools" id="tools-2" value="샤워부스형">
						<label class="for-checkbox-tools" for="tools-2">
							샤워부스형
						</label><!--
						--><input class="checkbox-tools" value="파우더형" data-price="800000" type="radio" name="tools" id="tools-3">
						<label class="for-checkbox-tools" for="tools-3">
						파우더형
						</label></div>
								<div class="row-empty"></div>
							
			
  						
<!--옵션3-->
                    <div class="col-12 pt-1">
						<p class="mb-4 pb-2"><span class="half">타일은 어디에 시공할까요?</span></p>
					</div>
					<div class="col-xl-10 pb-5">
						<input class="checkbox-tools" value="벽" type="radio" data-price="300000" name="bigtools" id="bigtools-1" checked>
						<label class="for-checkbox-tools" for="bigtools-1">
							<span data-hover="벽">벽</span>
						</label><!--
						--><input class="checkbox-tools" value="바닥" type="radio" data-price="200000" name="bigtools" id="bigtools-2">
						<label class="for-checkbox-tools" for="bigtools-2">							
							<span data-hover="바닥">바닥</span>
						</label><!--
						--><input class="checkbox-tools" value="벽+바닥" type="radio" data-price="500000" name="bigtools" id="bigtools-3">
						<label class="for-checkbox-tools" for="bigtools-3">							
							<span data-hover="벽+바닥">벽+바닥</span>
						</label>
					</div>
		
					
					
						
								<div class="row-empty"></div>
<!--옵션4-->
							<div class="col-12 pt-1">
						<p class="mb-4 pb-2"><span class="half"> 추가옵션 (중복선택가능) </span></p>
					</div>
					<div class="col-12 pb-5">
						<input class="checkbox-tools" value="젠다이" data-price="250000" type="checkbox" name="chutools" id="chutools-1" checked >
						<label class="for-checkbox-tools" for="chutools-1">
					<span class="text">젠다이</span>
						</label><!--
						--><input class="checkbox-tools" value="거울수납장" data-price="150000" type="checkbox" name="chutools" id="chutools-2">
						<label class="for-checkbox-tools" for="chutools-2">							
							<span class="text">거울수납장</span>
						</label><!--
						--><input class="checkbox-tools" value="선반" data-price="100000" type="checkbox" name="chutools" id="chutools-3">
						<label class="for-checkbox-tools" for="chutools-3">							
							<span class="text">선반</span>
						</label><!--
						--><input class="checkbox-tools" value="비데" data-price="300000" type="checkbox" name="chutools" id="chutools-4">
						<label class="for-checkbox-tools" for="chutools-4">							
							<span class="text">비데</span>
						</label><!--
						--><input class="checkbox-tools" value="환풍기" data-price="400000" type="checkbox" name="chutools" id="chutools-5">
						<label class="for-checkbox-tools" for="chutools-5">							
					<span class="text">환풍기</span>
						</label>
					</div>
							<div class="row-empty"></div>
							
							

<!--<div class="foott">--> 
		 <input type="submit" class="submit_button fott" value="견적계산 확인 ">
		  <input type="hidden" name="pricee" value="">   
</div>

</form>


    	</div>
			</div>	
		</div>

<jsp:include page="/template/footer.jsp"></jsp:include>
</body>
</html>
