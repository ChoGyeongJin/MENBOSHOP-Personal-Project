<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>조경진_상품화면</title>
<script type="text/javascript" src="../resources/js/product.js"></script>
<link rel="stylesheet" href="../resources/css/product.css">
</head>
<body>
    <c:import var="j_header" url="../common/header5.jsp"/>
    <c:import var="j_footer" url="../common/footer.jsp"/>
    <div id="wrap">
    ${j_header}
        <div class="image_container1">
        <a href="productdetail.jsp"><img src="../resources/css/img/p1.PNG" id="img1"></a>
        <a href=""><img src="../resources/css/img/p5.PNG" id="img2"></a>
        <a href=""><img src="../resources/css/img/p6.PNG" id="img3"></a>
        <a href=""><img src="../resources/css/img/p7.PNG" id="img4"></a>
        <a href=""><img src="../resources/css/img/p8.PNG" id="img5"></a>
        <a href=""><img src="../resources/css/img/p9.PNG" id="img6"></a>
        </div>
        <a id="p1" href="#">코튼 트윌 치노 숏자켓 3C</a>
        <a id="m1">KRW 61,000</a>
        <div id="c1"></div>
        <div id="c2"></div>
        <div id="c3"></div>
        <a id="p2" href="#">솔리드 코듀로이 가디건 4C</a>
        <a id="m2">KRW 39,500</a>
        <div id="c4"></div>
        <div id="c5"></div>
        <div id="c6"></div>
        <div id="c7"></div>
        <a id="p3" href="#">그레이시 더블 데님팬츠</a>
        <a id="m3">KRW 55,500</a>
        <div id="c8"></div>
        <a id="p4" href="#">크롬 앙고라 트랙니트 2C</a>
        <a id="m4">KRW 62,000</a>
        <div id="c9"></div>
        <div id="c10"></div>
        <a id="p5" href="#">남녀공용 푸퍼 마이크로 숏패딩 4C</a>
        <a id="m5">KRW 49,500</a>
        <div id="c11"></div>
        <div id="c12"></div>
        <div id="c13"></div>
        <div id="c14"></div>
        <a id="p6" href="#">F/W 모즈 코드 와이드 카고팬츠 3C</a>
        <a id="m6">KRW 44,000</a>
        <div id="c15"></div>
        <div id="c16"></div>
        <div id="c17"></div>
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
        <div id="price_menu">
        <ul>
                        <li><a href="#">신상품&emsp;&emsp;</a><div id="line1">|</div></li>
                        <li><a href="#">낮은가격&emsp;&emsp;</a><div id="line2">|</div></li>
                        <li><a href="#">높은가격&emsp;&emsp;</a><div id="line3">|</div></li>
                        <li><a href="#">인기상품</a></li>
        </ul>
        </div>
        <div id="best">BEST 30</div>

    ${j_footer}
</div>
</body>
</html>