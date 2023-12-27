<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>조경진_회원가입화면</title>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="../resources/js/join.js"></script>
    <link rel="stylesheet" href="../resources/css/join.css">
</head>
<body>

    <c:import var="j_header" url="../common/header3.jsp"/>
    <c:import var="j_footer" url="../common/footer.jsp"/>
    
    <div id="wrap">
        
        ${j_header}
        
    <section id ="container">
            <h1>내용 영역</h1>
            <form name="frm_join" method="post" action="join_process.jsp">
                <table>
                <p>
                    <label>ID&nbsp;<span>*</span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
                        <input type="text" name="member_id" id="member_id"></p>
                        <input type="button" name="id_btn" id="id_btn" value="ID CHECK">
                <p>
                    <label>PASSWORD&nbsp;<span>*</span>&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;</label>
                        <input type="password" name="member_pw" id="member_pw"></p>
                <p>
                    <label>CONFIRM&nbsp;<span>*</span>&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;</label>
                        <input type="text" name="confirm" id="confirm" placeholder="도로명 주소">
                        <input type="button" onclick="execDaumPostcode()" id="searchbutton" value="SEARCH">
                        <input type="text" name="address-1" id="address-1" placeholder="우편 번호">
                        <input type="text" name="member_add" id="member_add" placeholder="상세 주소"></p>
                <p>
                    <label>NAME&nbsp;<span>*</span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
                        <input type="text" name="member_name" id="member_name"></p>
                <p>
                    <label>E-MAIL<span>*</span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</label>
                        <input type="email" name="email" id="email"></p>
                <p>
                    <label>PHONE&nbsp;NUMBER&nbsp;<span>*</span>&emsp;&emsp;</label>
                        <input type="text" name="handphone" id="handphone" placeholder="010"></p>
                <tr>
                    <td colspan="2">
                        <!-- <button id="signUpButton">CREATE AN ACCOUNT</button></div> -->
                        <input type="submit" name= "create" id="create" value="CREATE">
                        <input type="reset" name= "cancel" id="cancel" value="CANCEL" onclick="newPage()">
                        </td>
                    </tr>
                </table>
            </form>
        <div id = "checkbox1"></div>
        <div id = "line"></div>

        <label><input type="checkbox" onclick="checkAll();" id="selectall"></label>
        <form name= "allselect" method="post" action="" onsubmit="return chkchk(this);">

            <label><input type="checkbox" name="notice[]" id="notice1" value="notice1"></label>
            <label><input type="checkbox" name="notice[]" id="notice1" value="notice2"></label>
            <!-- <label><input type="checkbox" name="notice[]" id="notice2" value="notice3"></label> -->
        </form>
        <div class= "notice1">
            <a href="#">SELECT ALL</a><br>
            <a href="#">[필수] 이용약관 동의</a><br>
            <!-- <a href="#">[필수] 개인정보 수집 및 이용 동의</a><br> -->
            <a href="#">[선택] 쇼핑정보 수신 동의</a>
    </div>
        <div id = "checkbox2"></div>
        <div class="notice2">
            <form method="get" action="form-action.html">
                <label><input type="checkbox" name="notice[]" id="notice4" value="notice4"></label><br>
                <label><input type="checkbox" name="notice[]" id="notice5" value="notice5"></label>
            </form>
            <a href="#">SMS 수신을 동의하십니까? </a><br>
            <a href="#">이메일 수신을 동의하십니까? </a>
        </div>
        <div id = "completebox">
    </section>
    
    ${j_footer}
    
</body>
</html>