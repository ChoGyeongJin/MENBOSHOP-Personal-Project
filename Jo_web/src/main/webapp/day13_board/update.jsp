<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="dao" class="human.dao.BoardDAO" />
<c:set var="b_idx" value="${param.b_idx}" />
<c:set var="board" value="${dao.getBoard(b_idx)}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조경진_수정화면</title>
<link rel="stylesheet" href="../resources/css/pageupdate.css">
</head>
<body>
<c:import var="j_header" url="../common/header4.jsp"/>
<c:import var="j_footer" url="../common/footer.jsp"/>
<div id="wrap">
 ${j_header}



<form name="frm_update" method="post" action="update_process.jsp" enctype="multipart/form-data">
                    <div id = "line1"></div>
                    <div id = "line2"></div>
                    <div id = "line3"></div>
                    <div id = "subject">
                    <ul>  
                    <input type="hidden" name="b_idx" value="${b_idx}" >
                    <input type="hidden" name="m_idx" value="${member.m_idx}" >
                    <input type="hidden" name="writer" value="${member.member_name}" >
                    <input type="hidden" value="${member.member_name}" disabled> <br>
                        <li><a href="#">제목&emsp;&emsp;&emsp;&emsp;</a></li>
                        <div id = "subject1">
                        <select id= "list">
                        <option value="product">상품</option>
                        <option value="delivery">배송</option>
                        <option value="exchange">교환/환불</option>
                        </select>
                        </ul>
                        </div> 
                        </div>
                    <div id = "subject2"><input type="text" name="title" id="title" value="${board.title}"></div>

                        <select id= "sub_menu1">
                        <li><option value="font1">표준</a></option>
                        <li><option value="font2">제목1</a></option>
                        <li><option value="font3">제목2</a></option>
                        </select>
                        
                        <select id= "sub_menu2">
                        <li><option value="font1">Arial</a></option>
                        <li><option value="font2">Gulim</a></option>
                        <li><option value="font3">Sans-serif</a></option>
                        </select>
                        
                        <select id= "sub_menu3">
                        <li><option value="font1">12</a></option>
                        <li><option value="font2">14</a></option>
                        <li><option value="font3">16</a></option>
                        </select>
                        
                        <div id="bold">
                        <a href="#" onclick="toggleBold()">B</a>
                        </div>
                        <div id="content_box1">
                        <textarea name="content1" cols="125" rows="25" disabled></textarea>
                        </div>
                        <div id="content_box2">
                        <textarea name="content" cols="122" rows="21"> ${board.content}</textarea>
                        </div>
                        <div id = "line4"></div>
                        </table>
                        <div id="upload">
                        첨부파일1&emsp;<input type="file" name="uploadFile" >
                        </div>
                        <div id="new_upload">
                        새로운 파일 첨부 시 기존 파일이 변경됩니다
                        </div>
                        <input type="button" value="목록" onclick="location.href='list.jsp'" >
                        <input type="submit" value="수정" >
                        <input type="reset" value="취소" >
</form>
${j_footer}
</div>
</body>
</html>