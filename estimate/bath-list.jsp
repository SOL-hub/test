<%@page import="home.beans.dao.EstimateDao"%>
<%@page import="home.beans.dao.MemberDao"%>
<%@page import="home.beans.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="home.beans.dto.EstimateDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	MemberDto mdto = (MemberDto)session.getAttribute("userinfo");
	String bath_member = mdto.getMember_id();
	
	EstimateDao edao = new EstimateDao();
	List<EstimateDto> list = edao.getList(bath_member);   %>
	


<jsp:include page="/template/header.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 견적내역페이지</title>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bath-list.css">
</head>
<body>
<main>

<!-- 여기부터하기 -->

<h1>내 견적내역 </h1>

 <hr>
 <!--테이블 시작-->
<div class = table-wrap>
<table border="1" width="90%"  align="center">
		<thead>
			<tr>
				<th>번호</th>
				<th width="40%">가격</th>
				<th>작성일</th>
			</tr>
		</thead>
		
		<tbody>
			<%-- list의 데이터를 하나하나 edto라는 이름으로 접근하여 출력 --%>
			<%for(EstimateDto edto : list ){ %>
			<tr>
				<td> 제목(코드은 나중에 넣음)</td>
				<td align="left">
					
					<!-- 가격 -->
					<a href="bath-content.jsp?bath_no=<%= edto.getBath_no()%>">
						<%=edto.getBath_price()%>
					</a>
									
				</td>
		<!-- 작성일 -->
				<td><%=edto.getBath_autotime()%></td>
			</tr>
			<%} %>
		</tbody>
		
		<tfoot>
			<tr>
			
				<td colspan="8" align="right">
					<a href="bath.jsp">
						<input type="button" value="견적받으러가깅">
					</a>
					
				</td>
			
			</tr>
			
		</tfoot>
	</table>
	</div>
	
	
	<!--추천상품-->

	<div class = "img-wrap">
	    <h5 style= font-size:20px; width:1000px;>함께 사면 좋은 제품 추천</h5>
    <hr class="hr-twolow">
    <!--제품관련 스타일-->
    <ul>
    <li><img class="img-shadow" src="https://placehold.it/180x180?text=TEST1" ><h5>넘편해소파<br>130,000</h5></li>
   
        <li><img class="img-shadow" src="https://placehold.it/180x180?text=TEST2"><h5>2인용인듯한침대<br>26,000,000</h5></li>
    
        <li><img class="img-shadow" src="https://placehold.it/180x180?text=TEST3"><h5>계속앉고파의자<br>4,560,000</h5></li>
    
        <li><img class="img-shadow" src="https://placehold.it/180x180?text=TEST4"><h5>세상포근쿠션<br>25,000</h5></li>
        
        <li><img class="img-shadow" src="https://placehold.it/180x180?text=TEST4"><h5>우리아들책상<br>95,000</h5></li>
    
    <li><img class="img-shadow" src="https://placehold.it/180x180?text=TEST4"><h5>이가격에이가죽소파<br>670,000,000</h5></li>
    </ul>
</div>
</div>

</main>
</body>

<jsp:include page="/template/footer.jsp"></jsp:include>
