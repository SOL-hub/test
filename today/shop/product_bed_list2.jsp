<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <main>
        <div>
            <p class="subject middle-font">침대</p>
            <div class="selected subject">
                <ul class="main_menu">
                    <li>
                        <a href=#>전체</a>
                    </li>
                    <li>
                        <a href=#>일반침대</a>
                        <ul>
                            <li><a href="#">싱글</a></li>
                            <li><a href="#">듀얼</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href=#>매트리스</a>
                        <ul class="sub_menu">
                            <li><a href="#">싱글</a></li>
                            <li><a href="#">듀얼</a></li>
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
                <div class="ln4">
                    <ul>

                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>

                    </ul>
                    <ul>
                       <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>


                    </ul>
                    <ul>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>

                    </ul>
                    <ul>
                       <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>
                        <li>
                            <p><img src="https://placeimg.com/274/274" width="100%"></p>
                            <p><span>이름</span><br><span>설명</span><br><span class="price">0&nbsp;원</span></p>
                            <p class="icon"><a onclick="changeimg()">
                                    <img src="../img/heart_none.png" id="img1" width="17" height="16">
                                </a></p>
                        </li>

                    </ul>
                </div>
                <div class="page center_wlwjd">
                    <ul>
                        <li class="on"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">></a></li>
                    </ul>
                </div>
            </article>
        </div>
    </main>
</body></html> 

