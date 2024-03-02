<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dao" class="human.dao.BoardDAO" />
<c:set var="b_idx" value="${param.b_idx}" />
<!-- 게시글에 대한 조회수 업데이트하기 -->
${dao.updateRead_cnt(b_idx)}

<!-- 조회수가 적용된 게시글 가져오기 -->
<c:set var="board" value="${dao.getBoard(b_idx)}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조경진_상세보기화면</title>
<script>
    function deletePost(){
        const ans = confirm("정말로 글을 삭제 하시겠습니까?");
        //예:true, 아이오:false
        
        if(ans){
            location.href="delete.jsp?b_idx=${board.b_idx}";
        }
    }

</script>
<link rel="stylesheet" href="../resources/css/view.css">
</head>
<body>

<c:import var="j_header" url="../common/header4.jsp"/>
<c:import var="j_footer" url="../common/footer.jsp"/>
<div id="wrap">
 ${j_header}

<form name="frm_read">
<table>
<div id="line1"></div>
<div id="line2"></div>
<div id="read_box"></div>
<div id="title">${board.title}</div>
<div id="name">${board.writer}</div>
<div id="product">${board.product}</div>
<div id="category">${board.category}</div>
<div id="date">DATE&emsp;${board.post_date}</div>
<div id="content">${board.content}</div>
<div id="read_cnt">VIEW&emsp;${board.read_cnt}</div>
<div id="file">첨부파일1&emsp;${board.originfile_name}</div>
<div id="image"><img src="../uploads/${board.savefile_name}" width="200px" height="250px"></div> 

<!-- 수정하기, 삭제하기 버튼은 회원이면서 본인이 작성한 게시글일 때 화면에 출력되도록 함 -->
<c:if test="${(not empty member) and (member.m_idx eq board.m_idx)}">
<input type="button" value="목록" id="list" onclick="location.href='list.jsp'">
<input type="button" value="수정" id="revise" onclick="location.href='update.jsp?b_idx=${board.b_idx}'">
<input type="button" value="삭제" id="delete" onclick="deletePost()">
</c:if>
${j_footer}
</table>
</form>
</div>
</body>
</html>