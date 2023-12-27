<%@ page import="java.sql.SQLException"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="member_id" value="${param.member_id}" />
<c:set var="member_pw" value="${param.member_pw}" />
<jsp:useBean id="dao" class="human.dao.MemberDAO" />

<c:catch var="errorMsg">
    <c:set var="dto" value="${dao.login(member_id, member_pw)}" />
</c:catch>
<c:if test="${not empty errorMsg}">
    로그인 시 예외 발생
</c:if>

<c:choose>
    <c:when test="${not empty dto}">
        <c:remove var="member" />
        <c:set var="member" value="${dto}" scope="session" />
        <c:redirect url="../main/index.jsp"/>
    </c:when>
    <c:otherwise>
        <c:set var="msg" value="아이디나 비밀번호가 일치하지 않습니다." scope="request"/>
        <jsp:forward page="login.jsp"/>
    </c:otherwise>
</c:choose>