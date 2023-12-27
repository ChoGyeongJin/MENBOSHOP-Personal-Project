<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <% 
//HttpSession session = request.getSession();
            session.invalidate();
            //메인페이지로 이동
            response.sendRedirect("/jo/main/index.jsp");
%> --%>

<c:remove var="member" scope="session" />
<c:redirect url="../main/index.jsp" />