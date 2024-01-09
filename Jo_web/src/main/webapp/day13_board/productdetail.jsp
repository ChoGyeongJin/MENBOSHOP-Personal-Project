<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조경진_상품상세화면</title>
<link rel="stylesheet" href="../resources/css/productdetail.css">
<script type="text/javascript" src="../resources/js/productdetail.js"></script>
</head>
<body>
    <c:import var="j_header" url="../common/header4.jsp"/>
    <c:import var="j_footer" url="../common/footer.jsp"/>
    <div id="wrap">
    ${j_header}
    <div id="sub_menu">
        <ul>
                        <li><a href="#">NEW 7%</a></li>
                        <li><a href="#">BEST 30</a></li>
                        <li><a href="#">F/W STEADY SELLER</a></li>
                        <li><a href="#">UNISEX</a></li>
                        <li><a href="#">OUTWEAR</a></li>
                        <li><a href="#">TOP</a></li>
                        <li><a href="#">BOTTOM</a></li>
                        <li><a href="#">SV- SERVICE</a></li>
                        <li><a href="#">ACC</a></li>
        </ul>
        </div>
        <img src="../resources/css/img/detail.PNG" id="d_img">
        <div id="p1">코튼 트윌 치노 숏자켓 3C</div>
        <div id="m1">KRW 61,000</div>
        <div id="d1">DESCRIPTION</div>
        <div id="text1"><p>- 밑단에 촘촘한 시보리 작업 디테일로 아방한 핏감이 연출되며,<br> 착용하였을 때 세련된 무드가 돋보이는 세미 오버핏 코튼 자켓</p>
        <br><p>- 2 way 지퍼로 제작되어 니즈에 맞게 코디네이트가 가능하며 이<br>너웨어와 조합하여 멋스러운 캐주얼룩에 적합한 제품</p>
        <br><p>- 안쪽에는 얇은 저밀도 타입의 패딩을 퀄팅해 보온성을 높여 간<br>절기부터 초겨울 시즌까지 활용 가능</p>
        <br>- M, L 사이즈로 남녀노소 모두 착용 가능한 아이템
        </div>
        <select id="color" name="color">
                        <option id= "col" value="col">&nbsp;COLOR</option>
                        <option value="">&nbsp;--------------------</option>
                        <option id="black1" value="블랙">&nbsp;BLACK</option>
                        <option id="ivory1" value="아이보리">&nbsp;IVORY</option>
                        <option id="navy1" value="네이비">&nbsp;NAVY</option>
        </select>
        <button id="M">M</button>
        <button id="L">L</button>
        <div class="form_container" id="form_container";">
        <div id="introduce">
        <div id="text2">코튼 트윌 치노 숏자켓 3C</div>
        <div id="text3">- 블랙/M</div>
        </div>
        <input id="name" value="1" onchange="printName()"/>
        <input type="button" id="up_btn" value="▲">
        <input type="button" id="down_btn" value="▼">
        <div id="result">TOTAL : KRW 61,000 (1개)</div>    
        </div>
        <div id="line"></div>
        <a href=""><div id="box">ADD TO BAG</div></a>
        <img src="../resources/css/img/d1.PNG" id="d_1">
        <h3 id="sub1">코튼 트윌 치노 숏자켓 3C</h3>
        <div id="di1">&emsp;&emsp;MODEL SIZE<br>&emsp;&emsp;&emsp;(177cm/65kg) 블랙컬러 M size를 피팅하였습니다.</div>
        <img src="../resources/css/img/introduce.PNG" id="l1">
        <a id="black">BLACK</a>
        <img src="../resources/css/img/d2.PNG" id="di2">
        <a id="brown">BROWN</a>
        <img src="../resources/css/img/d3.PNG" id="di3">
        <a id="ivory">IVORY</a>
        <img src="../resources/css/img/d4.PNG" id="di4">
    ${j_footer}
    </div>
</body>
</html>