<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>조경진_회원정보변경화면</title>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="../resources/js/update.js"></script>
    <link rel="stylesheet" href="../resources/css/update.css">
</head>
<body>

    <c:import var="j_header" url="../common/header2.jsp"/>
    <c:import var="j_footer" url="../common/footer.jsp"/>
    <div id="wrap">
        
        ${j_header}

        <section id ="container">
            <h1>내용 영역</h1>
            <form name="frm_update" method="post" action="update_process.jsp">
            <input type="hidden" name="m_idx" value="${member.getm_idx()}">
                <table>
                <p>
                    <label>ID&nbsp;<span>*</span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
                        <input type="text" name="member_id" id="member_id" value=" ${member.getMember_id()}" disabled></p>
                <p>
                    <label>PASSWORD&nbsp;<span>*</span>&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;</label>
                        <input type="password" name="member_pw" id="member_pw" value="${member.getMember_pw()}"></p>
                <p>
                    <label>CONFIRM&nbsp;<span>*</span>&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;</label>
                        <input type="text" name="confirm" id="confirm" placeholder="도로명 주소">
                        <input type="button" onclick="execDaumPostcode()" id="searchbutton" value="SEARCH">
                        <input type="text" name="address-1" id="address-1" placeholder="우편 번호">
                        <input type="text" name="member_add" id="member_add" placeholder="상세 주소" value="${member.getMember_add()}"></p>
                <p>
                    <label>NAME&nbsp;<span>*</span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
                        <input type="text" name="member_name" id="member_name" value="${member.getMember_name()}"></p>
                <p>
                    <label>E-MAIL<span>*</span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
                        <input type="email" name="email" id="email" value="${member.getEmail()}"></p>
                <p>
                    <label>PHONE&nbsp;NUMBER&nbsp;<span>*</span>&emsp;&emsp;</label>
                        <input type="text" name="handphone" id="handphone" placeholder="010" value="${member.getHandphone()}"></p>
                <tr>
                    <td colspan="1">
                        <button type="submit" name= "modify" id="modify" value="MODIFY">MODIFY</button>
                        </td>
                        
                    </tr>
                </table>
            </form>
            <form name="frm_delete" method="post" action="remove_process.jsp">
            <button type="submit" name= "remove1" id="remove1" value="REMOVE">REMOVE</button>
            </form>
</section>
    ${j_footer}
    </div>   
</body>
</html>