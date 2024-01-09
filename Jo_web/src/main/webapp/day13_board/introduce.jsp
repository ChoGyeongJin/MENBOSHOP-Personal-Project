<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
<meta charset="UTF-8">
<title>조경진_페이지 소개 페이지</title>
<link rel="stylesheet" href="../resources/css/introduce.css">
</head>
<body>
    <c:import var="j_header" url="../common/header3.jsp"/>
    <c:import var="j_footer" url="../common/footer.jsp"/>
    
    <div id="wrap">
    ${j_header}
    
    <section id ="container">
        
    <div id=introduce></div>    
    
    
</section>
    ${j_footer}
</div>
</body>
</html>