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
	//상세조회 페이지를 구현하기 위해서는
	//1. 준비 : P.K(기본키)가 필요. 게시판에서는 board_no
	//2. 처리 : 기본키를 이용한 단일조회 수행
	//3. 결과 : 단일 조회 결과(게시글 , BoardDto)
	
	int bath_no = Integer.parseInt(request.getParameter("bath_no"));
	EstimateDao edao = new EstimateDao();
	
	//board_no를 이용하여 BoardDto를 얻어낸다
	EstimateDto edto = edao.get(bath_no); 
	
	MemberDto user = (MemberDto) session.getAttribute("userinfo");
	
	
	// - 내글 : 게시글(edto)의 작성자와 로그인 된 사용자(user)의 아이디가 같아야 함
	boolean isMine = user.getMember_id().equals(edto.getBath_member()); 
	boolean isAdmin = user.getMember_auth().equals("관리자");
	
%>     


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
</body>
</html>