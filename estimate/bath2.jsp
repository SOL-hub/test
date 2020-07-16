<%@page import="home.beans.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("UTF-8");
    String bath_gong = request.getParameter("bath_gong");
    String bath_sohyung = request.getParameter("bath_sohyung");
    String tools = request.getParameter("tools");
    String bigtools = request.getParameter("bigtools");
   String[] chutools = request.getParameterValues("chutools");
   
   int pricee =Integer.parseInt(request.getParameter("pricee"));
  
	MemberDto mdto = (MemberDto) session.getAttribute("userinfo");
	boolean isLogin = mdto != null;
	
	%>
    
<jsp:include page="/template/header.jsp"></jsp:include>
    
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
	
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box;
	font-family: 'Noto Sans KR', sans-serif;
}
body{
   height:100%;}
.container {
box-shadow: 0 4px 8px 0 rgba(0,0,0,0.3);
 width:50%;
 height:100%;
 margin:auto;
 text-align: center;
  padding: 16px;
  background-color: white;
}
input[type=text]{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
input[type=text]:focus {
  background-color: #ddd;
  outline: none;
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
.registerbtn:hover {
  opacity: 1;
}
.rowrow{
height:200px;
}
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

<div class="rowrow"></div>

<form action="saveesti.do">
  <div class="container">
    <h1>욕실 견적서</h1>
    <p><%=mdto.getMember_name()%>님의 견적서 입니다</p>
    <hr>

    <label for="title"><b>이 견적서의 제목을 만들어 주세요</b></label>
    <input type="text" placeholder=" ^.^ " name="title" id="title" required>

    <label for="ddd"><b>Password</b></label>
    <input type="text" placeholder="Enter " name="ddd" id="ddd" required>

    <label for="dddd"><b>큐큐큐큐</b></label>
    <input type="text" placeholder="Enter" name="dddd" id="dddd" required>
    <hr>
    <p> 뀨 </p>

    <button type="submit" class="registerbtn">저장</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? 재견적하러가깅</p>
  </div>
  
  <!-- 솔아 여기 밑에 추천리스트 불러와야행ㅜ.ㅜ) -->
  
  
</form>
</body>
</html>

   <jsp:include page="/template/footer.jsp"></jsp:include>