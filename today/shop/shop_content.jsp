<%@page import="home.beans.dto.ItemDto"%>
<%@page import="home.beans.dao.ItemDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/template/header.jsp"></jsp:include>
<br>
<br>
<br>
<br>
<br> 	
	<h2>게시글 등록에 성공 하였습니다</h2>
	<a href="allist.jsp">쇼핑하러가기</a>
	<a href="<%=request.getContextPath()%>/member/itemList.jsp">내가등록한 글로가기</a>
</body>
</html> 
<jsp:include page="/template/footer.jsp"></jsp:include>  
