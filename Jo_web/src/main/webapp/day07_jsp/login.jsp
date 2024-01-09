<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>조경진_로그인화면</title>
    <link rel="stylesheet" href="../resources/css/login.css">
</head>
<body>
    <c:import var="j_header" url="../common/header3.jsp"/>
    <c:import var="j_footer" url="../common/footer.jsp"/>

    <div id="wrap">
    
      ${j_header}
        
    <section id ="container">
    <h1>내용 영역</h1>
    <form name="frm_login" method="post" action="login_process.jsp">
        <table>
        <p>
            <label>ID&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
            <input type="text" name="member_id" id="member_id"></p>
        <p>
            <label>PASSWORD&nbsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;</label>
                <input type="password" name="member_pw" id="member_pw"></p>
                <td id="msg">
                 <c:if test="${not empty msg}">
                            <c:out value="<span> ${msg} </span>" escapeXml="false" />
                        </c:if>
                </td>
                <tr>
                    <td colspan="2">
                        <!-- <button id="signUpButton">CREATE AN ACCOUNT</button></div> -->
                        <input type="submit" name= "LOGIN" id="login" value="LOGIN">
                        <input type="submit" name= "비회원 주문 조회" id="비회원 주문 조회" value="비회원 주문 조회">
                        </td>
                    </tr>
        </table>
    
    <div id = "checkbox"></div>
    <div class = "id_checkbox">
        <form method="get" action="form-action.html">
            <label><input type="checkbox" name="idcheckbox" id="idcheckbox" value="idcheckbox"
            ${empty cookie.member_id.value ? "":"checked"}></label>
        </form>
    </div>
    <div id = "remember">
        <a href="#">아이디 저장하기</a>
    </div>
    <div id = "notice1">
            <a href="#">아이디 찾기</a>
            <a href="#">비밀번호 찾기</a>
            <a href="../day07_jsp/join.jsp">회원가입</a>
    </div>
    </form>
</section>

 ${j_footer}
    
    </div>
</body>
</html>