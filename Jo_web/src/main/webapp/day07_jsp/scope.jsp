<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO, human.dao.MemberDAO,java.sql.SQLException"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조경진 EL_내장객체</title>
</head>
<body>

아이디: ${ dto.member_id }<br>
비밀번호: ${ dto.member_pw }<br>
주소: ${ dto.member_add }<br>
이름: ${ dto.member_name }<br>
이메일: ${ dto.email }<br>
핸드폰: ${ dto.handphone }<br>
회원가입여부: ${ dto.cancel_or_not }

</body>
</html>