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
	List<EstimateDto> list = edao.getList(bath_member);
	%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

.modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  border: 1px solid #888;
  width: 80%;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
  -webkit-animation-name: animatetop;
  -webkit-animation-duration: 0.4s;
  animation-name: animatetop;
  animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {
  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}


.close {
  color: white;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

.modal-header {
  padding: 2px 16px;
  background-color: #5cb85c;
  color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
  padding: 2px 16px;
  background-color: #5cb85c;
  color: white;
}
</style>



</head>

<body>

<h2> 나의 견적 </h2>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Modal Header</h2>
    </div>
    <div class="modal-body">
      <p>Some text in the Modal Body</p>
      <p>Some other text...</p>
    </div>
    <div class="modal-footer">
      <h3>Modal Footer</h3>
    </div>
  </div>

</div>
<button id="myBtn">Open Modal</button>

<table border="1" width="90%">
		<thead>
			<tr>
				<th>번호</th>
				<th width="40%">가격</th>
				<th>작성자</th>
				<th>작성일</th>
			
	
			</tr>
		</thead>
		<tbody align="center">
			<%-- list의 데이터를 하나하나 edto라는 이름으로 접근하여 출력 --%>
			<%for(EstimateDto edto : list ){ %>
			<tr>
				<td><%=edto.getBath_no()%></td>
				<td align="left">
				
					
					<!-- 가격 -->
					
					<a href="content.jsp?bath_no=<%= edto.getBath_no()%>">
						<%=edto.getBath_price()%>
					</a>
									
				</td>
				<td>
						<%=edto.getBath_member()%>
				</td>
				<td><%=edto.getBath_autotime()%></td>
			</tr>
			<%} %>
		</tbody>
		
		<tfoot>
			<tr>
				<td colspan="8" align="right">
					<a href="bath.jsp">
						<input type="button" value="견적받으러가ㄱ깅">
					</a>
				</td>
			</tr>
		</tfoot>
	</table>
	
</body>
</html>



<script>
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>