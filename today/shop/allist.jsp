<%@page import="home.beans.dto.ItemDto"%>
<%@page import="java.util.List"%>
<%@page import="home.beans.dao.ItemDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


	ItemDao idao = new ItemDao();
	List<ItemDto> list = idao.getList();

	
	String keyword = request.getParameter("keyword");
	
	boolean isSearch = keyword != null;
	///여따가쓰시오(페이지 계산 코드)
	int pageSize = 16;//한페이지에 표시할 데이터 개수
	
	//문자열로 먼저 받기
	String pageStr = request.getParameter("page");
	int pageNo;
	try{//감시한다(if로하면 안된다)
	pageNo = Integer.parseInt(pageStr);//문자열 막는다
	if(pageNo<=0){
	throw new Exception();
	}
	}
	catch(Exception e){
		pageNo =1;	//문제가생기면 집으로//가지고 있는변수 pageStr,pageNo
	}
// 	int pageNo = Integer.parseInt(request.getParameter("page"));//계산하기위한 integer 형식
	//코드분리		//jsp가 선점해서		//jsp 구조상 page 안됨
	
	//만들어지는 과정 기억
	//시작 글 순서와 종료 글 순서를 계산
	int finish = pageNo*pageSize;
	int start = finish-(pageSize-1);
	
// 	ItemDao idao = new ItemDao();

// 	List<ItemDto> list;
	if(isSearch){
		list = idao.search(keyword);
	}
	else{
		list = idao.getList5(start,finish);
	}
	
	//네비게이터//
	int blockSize = 5;
	int startBlock=(pageNo-1)/blockSize*blockSize+1;
	int finishBlock=startBlock+(blockSize-1);
	
%> 
    <jsp:include page="/template/header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>일룸</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bed_list.css">
    <style>

    </style>
</head>

<body>
    <script>
        /*내가해보는거*/
        var cnt = 1;

        function changeimg() {
            var img1 = document.getElementById("img1");

            if (cnt % 2 == 1) {
                img1.src = "../img/heart_none.png";

            } else {
                img1.src = "../img/heart.png";

            }
            cnt++;
        }
    </script>
    <br>
    <br>
    <br>
    <br>
    <br>
    <main>
        <div>
        <!-- 여기로 오셔서 확인 -->
        <h5>keyword=<%=keyword%>
        isSerch=<%=isSearch %>
        </h5>
        <h5>pageStr=<%=pageStr%>,pageNo=<%=pageNo%>
        	start=<%=start %>finish=<%=finish %>
        </h5>
        <h5>startBlock=<%=startBlock%>
			finishBlock=<%=finishBlock%></h5>
            <p class="subject middle-font">전체</p>
            <div class="selected subject">
                <ul class="main_menu">
                    <li>
                        <a href=#>욕실</a>
                        <ul>
                            <li><a href="#">젠다이</a></li>
                            <li><a href="#">거울수납장</a></li>
                            <li><a href="#">선반</a></li>
                            <li><a href="#">비데</a></li>
                            <li><a href="#">환풍기</a></li>
                        </ul>
                    </li>
				<li>
                        <a href=#>마루</a>
                        <ul>
                            <li><a href="#">강마루</a></li>
                            <li><a href="#">강화마루</a></li>
                            <li><a href="#">합판마루</a></li>
                            <li><a href="#">원목마루</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href=#>주방</a>
                        <ul>
                            <li><a href="#">아일랜드 식탁</a></li>
                            <li><a href="#">냉장고장</a></li>
                            <li><a href="#">키큰장</a></li>
                            <li><a href="#">뒷선반</a></li>
                            <li><a href="#">쿡탑</a></li>
                            <li><a href="#">플랩장</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="border">
                <div class="ssmall-font xyz
       main_menu frt selected sort">
                    <span><a href=#>조회순</a></span>
                    <span><a href=#>높은가격순</a></span>
                    <span><a href=#>낮은가격순</a></span>
                </div>
            </div>
            <article>
            <%for(ItemDto idto : list){ %>
                <div class="ln4">
                    <ul>                 
                            <p><img src="<%=idto.getItem_image()%>" width="100%"></p>
                            <p><span><a href="product_detail.do?item_no=<%=idto.getItem_no() %>"><%=idto.getItem_name()%></a></span><br><br><span class="price"><%=idto.getItem_price()%>&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                    </ul>              
                </div>
                <%} %>
                <!-- 페이지_네비게이터 -->
                <div class="page center_wlwjd">
                <%if(!isSearch){%>
                <a href="product_bed_list.jsp?page=<%=startBlock-1%>">[<]</a>                
                <%}else{%>
                <a href="product_bed_list.jsp?page=<%=startBlock-1%>&keyword=<%=keyword%>">[<]</a>
                <%} %>
                <%for(int i=startBlock; i<=finishBlock; i++){%>
                <%if(!isSearch){ %>
					<a href="product_bed_list.jsp?page=<%=i%>"><%=i%></a>             
                    <%}else{ %>
                    <a href="product_bed_list.jsp?page=<%=i%>&keyword=<%=keyword%>"><%=i%></a> 
                    <%} %>
                    <%} %>          
                	<%if(!isSearch){%>
                <a href="product_bed_list.jsp?page=<%=finishBlock+1%>">[>]</a>                
                <%}else{%>
                <a href="product_bed_list.jsp?page=<%=finishBlock+1%>&keyword=<%=keyword%>">[>]</a>
                <%} %>
                </div>
            </article>
        </div>
    </main>
</body></html> 
<jsp:include page="/template/footer.jsp"></jsp:include>  
