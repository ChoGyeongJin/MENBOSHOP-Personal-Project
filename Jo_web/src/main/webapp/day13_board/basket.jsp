<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조경진_장바구니화면</title>
<link rel="stylesheet" href="../resources/css/basket.css">
</head>
<body>
    <c:import var="j_header" url="../common/header5.jsp"/>
    <c:import var="j_footer" url="../common/footer.jsp"/>
    <div id="wrap">
    ${j_header}
    <div id="checkout">CHECKOUT</div>
    <div id="empty">장바구니가 비어 있습니다.</div>
    <div id="line"></div>
    <div id="all">ALL CHECKOUT</div>
    <div id="select">SELECT CHECKOUT</div>
    
    
    
    
    
    
    
    
    
    
    ${j_footer}  
    </div>    
</body>
</html>