<%@page import="home.beans.dto.EstimateDto"%>
<%@page import="home.beans.dao.EstimateDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="home.beans.dto.MemberDto"%>
<%@page import="home.beans.dao.MemberDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int bath_no = Integer.parseInt(request.getParameter("bath_no"));
	EstimateDao edao = new EstimateDao();
	EstimateDto edto = edao.get(bath_no); 
	
	MemberDto user = (MemberDto) session.getAttribute("userinfo");
	
	boolean isMine = user.getMember_id().equals(edto.getBath_member()); 
	boolean isAdmin = user.getMember_auth().equals("관리자");
	
%>     

<jsp:include page="/template/header.jsp"></jsp:include>

<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/login.css">

<div align="center">
	<h2>견적서 상세보기</h2>

	<!-- 테이블에 글 정보를 출력 -->
	<table border="1" width="60%">
		<tbody>
			<tr>
				<td>
					<font size="6"> 가격: 
					<%=edto.getBath_price()%>
					</font>
				</td>
			</tr>
			<tr>
				<td>
					<!-- 작성자 -->이름 : 
						<%=edto.getBath_member()%>
				</td>
			</tr>
			<tr>
				<td> 날짜:
					<%=edto.getBath_date()%> 
				</td>
			</tr>
			
			<!-- 게시글 내용 영역 -->
			<tr height="300">
				<td valign="top">
				공용거실: 
					<%=edto.getBath_cnt()%> <br>
					
				소형안방:
			<%=edto.getBath_cntt()%>
				</td>  
			</tr>
		
		</tbody>
		<!-- 각종 버튼들 구현 -->
		<tfoot>
			<tr>
				<td colspan="2" align="right">
					
					<%if(isAdmin || isMine){ %>
					<!-- 관리자이거나 내 글인 경우만 수정/삭제 버튼을 표시 -->
				
			<a href="<%=request.getContextPath()%>/estimate/delete.do?bath_no=<%=bath_no%>">
					<input type="button" value="삭제">
					</a>
					<%} %>
					
					<a href="bath-list.jsp">
					<input type="button" value="목록">
					</a>
				</td>
			</tr>
		</tfoot>
	</table>
</div>

<!--  솔아 여기밑에 추천리스트를 불러와야행!! -->
<div class="img-wrap">
<h5 style="font-size: 30px;"width:1000px;>함께 사면 좋은 제품 추천</h5>
			<hr class="hr-twolow">
			<!--제품관련 스타일-->
			<div class="item_recom">
			<ul>
				<li><img class="img-shadow"
					src="https://placehold.it/180x180?text=TEST1">
					<h5>
						넘편해소파<br>130,000
					</h5></li>

				<li><img class="img-shadow"
					src="https://placehold.it/180x180?text=TEST2">
					<h5>
						2인용인듯한침대<br>26,000,000
					</h5></li>

				<li><img class="img-shadow"
					src="https://placehold.it/180x180?text=TEST3">
					<h5>
						계속앉고파의자<br>4,560,000
					</h5></li>

				<li><img class="img-shadow"
					src="https://placehold.it/180x180?text=TEST4">
					<h5>
						세상포근쿠션<br>25,000
					</h5></li>

				<li><img class="img-shadow"
					src="https://placehold.it/180x180?text=TEST4">
					<h5>
						우리아들책상<br>95,000
					</h5></li>

				<li><img class="img-shadow"
					src="https://placehold.it/180x180?text=TEST4">
					<h5>
						이가격에이가죽소파<br>670,000,000
					</h5></li>
			</ul>
			</div>
			<!-- 추천제품들 끝 -->

</body>
</html>

<jsp:include page="/template/footer.jsp"></jsp:include>