<%@page import="home.beans.dto.ItemDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
ItemDto idto = (ItemDto)request.getSession().getAttribute("iteminfo");
 %> 
<jsp:include page="/template/header.jsp"></jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>일룸</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/product_detail.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/swiper.min.css">
    <script src="<%=request.getContextPath() %>/js/swiper.min.js"></script>
    <style>
  
    </style>
    <script src="../js/swiper.min.js"></script>
    
     <script>
 //창의 로딩이 완료되었을 때 실행할 코드를 예약
        window.onload = function(){
            //var mySwiper = new Swiper(선택자, 옵션);
            var mySwiper = new Swiper ('.swiper-container', {
                //swiper에 적용할 옵션들을 작성
                direction: 'horizontal'   //표시방식(수직:vertical, 수평:horizontal)
                ,loop: true //순환 모드 여부
                //자동재생 옵션그룹
                ,autoplay:{
                    delay:10000  //자동재생 시간(1초)
                }
                //페이지 네비게이터 옵션그룹
                ,pagination: {
                    el: '.swiper-pagination', //적용 대상의 선택자
                    type: 'bullets',//네비게이터 모양(bullets/fraction/...)
                },
                //이전/다음 이동버튼 설정그룹
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                }
                //커서 모양을 손모양으로 변경
                ,grabCursor:true
                //슬라이드 전환 효과(effect)
                //,effect:'coverflow'
                //,effect:'cube'
                ,effect:'fade'
                //,effect:'flip'
                //,effect:'slide'//기본값
            });
        };
           </script>
</head>

<body>
<br>
<br>
<br>
<br>
<br>
<form method="post">
 <main>
   <div>
    <div class="section-box">
        <div class="f-pic">
            
            <div class="swiper-container">
        <!-- 필수 영역 -->
        <div class="swiper-wrapper">
            <!-- 배치되는 이미지 또는 화면 -->
            <div class="swiper-slide">
                <img src="https://placeimg.com/600/676">
            </div>
            <div class="swiper-slide">
                <img src="https://placeimg.com/600/676/tech">
            </div>
            <div class="swiper-slide">
                <img src="https://placeimg.com/600/676/people">
            </div>
        </div>
             <!-- 페이지 위치 표시 영역(선택) -->
            
        <div class="swiper-pagination"></div>
     

        <!-- 이전/다음 버튼(선택) -->
                         <div class="swiper-btn-zip">
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
           </div>
            </div>
        </div>
    
    <div class=right-box>
        <div class="gkaljzang"></div>
        <div class="f20 mar-b12"><%=idto.getItem_name()%></div>
        <div class="f25 mar-b20"><%=idto.getItem_info()%></div>
        <div class="f25 colorred mar-b60"><%=idto.getItem_price()%>원</div>
        
           
            <div class="delivery">
                <span><b>배송기간:</b></span>
                <span>내일</span>
                <span><b>배송료:</b></span>
                <span>5,000</span>
                <span><b>수량:</b></span>
                <span><%=idto.getItem_stock()%></span>
            </div>
            <div class="eeee">
                             <div>
<!--                               <select class="select_option mar-b12"name="area"> -->
                    		  <span>
							  <button class="bt_decrease" type="button"><span class="blind">☜</span></button>				       		  				              
							  <input type="text" maxlength="3" title="수량" value="1">
							  <button class="bt_increase" type="button"><span class="blind">☞</span></button>
							  </span>
<!--                               </select> -->
                              </div>
                        </div>
                        <div class="total_price">
                            <b>총구매가</b>
                            <span class="f-right colorred">FREE</span>
                        </div>
                    <div class="shop-btn">
                    <a href="#"><input type="button" value="결제하기" class="payit"></a>
                    <a href="#"><input type="button" value="장바구니" class="bagit"></a>
                    <a href="#"><input type="button" value="찜"></a>
                    </div>
                        <div class="border_1"></div>
                      
       
                       
                 
                        
    </div>
               
        
       </div>
       <div style="height:770px"></div>
       <div class="border">
       </div>
       <div class="click_box">
        <p>
            <a href="#sangsea">상세정보</a>
            <a href="#c1">상품평</a>
            <a href="#c2">QnA</a>
        </p>
        <div class="border"></div>
       </div>
       <div style="height:20px"></div>
        <div>
          <p id="sangsea"><img src="https://placeimg.com/600/676/tech" width="1200"></p>
        </div>
        <div>
          <p id="c1"><img src="https://placeimg.com/600/676/animal" width="1200"></p>
        </div>
        <div>
          <p id="c2"><img src="https://placeimg.com/600/676/people" width="1200"></p>
        </div>
        </div>
    </main>
    </form>
</body></html>
<jsp:include page="/template/footer.jsp"></jsp:include>  