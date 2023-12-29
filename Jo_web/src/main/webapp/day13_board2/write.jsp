<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>조경진_게시글작성화면</title>
    <script type="text/javascript" src="../resources/js/write.js"></script>
    <link rel="stylesheet" href="../resources/css/write.css">
</head>
<body>

<c:import var="j_header" url="../common/header4.jsp"/>
<c:import var="j_footer" url="../common/footer.jsp"/>
<div id="wrap">
 ${j_header}

<form name="frm_write" method="post" action="write_process.jsp" enctype="multipart/form-data">
<table>
                    <div id = "line1"></div>
                    <div id = "line2"></div>
                    <div id = "line3"></div>
                    <div id = "subject">   
                    <ul>
                    <input type="hidden" name="m_idx" value="${member.m_idx}">
                    <input type="hidden" name="writer" value="${member.member_name}" >
                    <input type="hidden" value="${member.member_name}">
                        <li><a href="#">제목&emsp;&emsp;&emsp;&emsp;</a></li>
                        <div id = "subject1">
                        <select id="category" name="category">
                        <option value="상품">상품</option>
                        <option value="배송">배송</option>
                        <option value="교환/환불">교환/환불</option>
                        </select>
                        </ul>
                        </div> 
                        <div id = "subject2">
                        <select id="product" name="product">
                        <option value="코튼 치노 숏자켓 3C 61,000">코튼 치노 숏자켓 3C 61,000</option>
                        <option value="솔리드 코듀로이 가디건 4C 39,500">솔리드 코듀로이 가디건 4C 39,500</option>
                        <option value="그레이시 더블 데님팬츠 55,000">그레이시 더블 데님팬츠 55,000</option>
                        <option value="크롬 앙고라 트랙니트 2C 62,000">크롬 앙고라 트랙니트 2C 62,000</option>
                        <option value="푸퍼 마이크로 숏패딩 4C 49,500">푸퍼 마이크로 숏패딩 4C 49,500</option>
                        <option value="코드 와이드 카코팬츠 3C 44,000">코드 와이드 카코팬츠 3C 44,000</option>
                        </select>
                        </ul>
                        </div> 
                        <div id = "subject3"><input type="text" name="title" id="title"></div>
                        
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
                        <textarea name="content" cols="122" rows="21"></textarea>
                        </div>
                        <div id = "line4"></div>
                        </table>
                        <div id="upload">
                        첨부파일1&emsp;<input type="file" name="uploadFile">
                        </div>
                        <input type="button" value="목록" onclick="location.href='list.jsp'">
                        <input type="submit" value="등록">
                        <input type="reset" value="취소">


</form>

${j_footer}
</div>
</body>
</html>