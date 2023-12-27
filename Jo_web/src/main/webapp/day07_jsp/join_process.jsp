<%@ page import="java.sql.SQLException"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dto" class="human.dto.MemberDTO"/>
<jsp:setProperty name="dto" property="*" />
<jsp:useBean id="dao" class="human.dao.MemberDAO" />

<c:catch var="errorMsg">
    <c:set var="result" value="${dao.join(dto)}" />
</c:catch>
<c:if test="${empty errorMsg}"> ${errorMsg} </c:if>

<c:choose>
    <c:when test="${result eq 1}">
     <c:redirect url="../main/index.jsp"/>
    </c:when>
    <c:otherwise>
            <c:redirect url="../day07_jsp/join.jsp"/>
    </c:otherwise>
</c:choose>
<%-- <%

int result = 0;
try {
	result= dao.join(dto);
} catch (SQLException e) {
    e.printStackTrace();
}

if(result == 1) {
    response.sendRedirect("/jo/main/index.jsp");
}else {
    response.sendRedirect("/jo/day07_jsp/join.jsp");
}
%> --%>