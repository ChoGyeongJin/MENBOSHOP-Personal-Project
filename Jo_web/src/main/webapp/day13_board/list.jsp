<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dao" class="human.dao.BoardDAO" />

<!-- 검색관련 데이터를 저장하는 SearchDTO객체를 생성하고 전달값을 세팅함 -->
<jsp:useBean id="sDto" class="human.dto.SearchDTO" />
<jsp:setProperty name="sDto" property="*" />

<c:set var="boardList" value="${dao.getBoards(sDto)}" />
<!-- 
<<페이지 네비게이션 구현을 위한 변수들>>
1.총 게시물 수 : totalRows

2.한 페이지에 보여줄 게시물 수 : rows_page
  - 개발자가 정함, 10
  
3.한 페이지블록에 보여줄 페이지 수 : pages_pageBlock
  - 개발자가 정함, 5
  
4.현재 페이지번호 : pageNum
  - pageNum 전달값이 없는 경우 1로 초기화함
   
5.게시물의 시작번호 : startNum
  - (현재 페이지번호 = 1)*rows_page + 1
  
6.게시물의 끝번호 : endNum
  - 현재 페이지번호*rows_page
 
7.현재 페이지블록번호 : pageBlock
  - pageBlock 전달값이 없는 경우 1로 초기화함

8.마지막/총 페이지번호 : total_pageNum
  - (총 게시물 수 / rows_page)의 올림값(Math.ceil())

9.마지막 페이지블록번호 : last_pageBlock
  - (총페이지번호 / pages_pageBlock)의 올림값(Math.ceil())
 -->

<!-- totalRows -->
<c:set var="totalRows" value="${boardList.size()}" />

<!-- rows_page -->
<c:set var="rows_page" value="10" />

<!-- pages_pageBlock -->
<c:set var="pages_pageBlock" value="5" />

<!-- pageNum -->
<c:choose>
    <c:when test="${empty param.pageNum}"><c:set var="pageNum" value="1" /></c:when>
    <c:otherwise><c:set var="pageNum" value="${param.pageNum}" /></c:otherwise>
</c:choose>

<!-- startNum -->
<c:set var="startNum" value="${(pageNum-1)*rows_page+1}" />

<!-- endNum -->
<c:set var="endNum" value="${(pageNum)*rows_page}" />

<!-- pageBlock -->
<c:choose>
    <c:when test="${empty param.pageBlock}"><c:set var="pageBlock" value="1" /></c:when>
    <c:otherwise><c:set var="pageBlock" value="${param.pageBlock}" /></c:otherwise>
</c:choose>

<!-- total_pageNum -->
<fmt:parseNumber var="tPageNum" value="${Math.ceil(totalRows/rows_page)}" integerOnly="true" />
<c:set var="total_pageNum" value="${tPageNum}" />
 
<!-- last_pageBlock -->
<fmt:parseNumber var="lPageBlock" value="${Math.ceil(total_pageNum/pages_pageBlock)}" integerOnly="true" />
<c:set var="last_pageBlock" value="${lPageBlock}" /> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>조경진_게시판목록</title>
    <link rel="stylesheet" href="../resources/css/list.css">
</head>
<body>

    <c:import var="j_header" url="../common/header3.jsp"/>
    <c:import var="j_footer" url="../common/footer.jsp"/>
<div id="wrap">
        ${j_header}
        
<!-- 검색 폼: action속성이 없으면(=>입력값이 현재JSP페이지가 요청되며 입력값이 전달됨) -->
        
        <section id ="container">
            <h1>내용 영역</h1>
            <form name="board">
                <table>
                    <div id = "line1"></div>
                    <div id = "line2"></div>
                    <div id = "line3"></div>
                    <div id = "board_list">
                    <ul>
                        <li><a href="#">NO&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                        <li><a href="#">PRODUCT&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</a></li>
                        <li><a href="#">CATEGORY&emsp;&emsp;&emsp;&emsp;</a></li>
                        <li><a href="#">SUBJECT&emsp;&emsp;&emsp;&emsp;</a></li>
                        <li><a href="#">NAME&emsp;&emsp;&emsp;&emsp;</a></li>
                        <li><a href="#">DATE</a></li>
                    </ul>
                    </table>
    <table>
    <c:choose>
        <c:when test="${empty boardList}">
            <tr><td id="nolist" colspan="6">등록된 게시물이 없습니다.</td></tr>
        </c:when>
        <c:otherwise>
            <c:forEach var="i" begin="${startNum}" end="${endNum}"> <!-- 오늘 추가 구문 -->
            
            <c:if test="${not empty boardList[i-1]}"><!-- boardList에 저장된 데이터가 있는 경우 출력 -->
                <tr>
                    <td id="no">${i}&emsp;&nbsp;</td>
                    <td id="product">${boardList[i-1].read_cnt}&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;</td>
                    <td id="category">
                        <c:if test="${not empty boardList[i-1].originfile_name}">
                            <a href="download.jsp?originfile_name=${boardList[i-1].originfile_name}&savefile_name=${boardList[i-1].savefile_name}">&emsp;&emsp;
                                <img src="../resources/css/img/download.png" alt="첨부파일 이미지" width="15px" height="15px">
                            </a>
                        </c:if>
                    </td>
                        <td id="subject">
                       <a href="view.jsp?b_idx=${boardList[i-1].b_idx}"> ${boardList[i-1].title} <img src="../resources/css/img/new.PNG"> </a>
                        </td>
                        <td id="name">${boardList[i-1].writer}</td>
                        <td id="date">${boardList[i-1].post_date}</td>
                </tr>
                </c:if>
            </c:forEach>
        </c:otherwise>
    </c:choose>
    <!-- 회원인 경우 페이지 네비게이션이 보여지도록 구현 -->
                    <c:if test="${not empty boardList}">
                    <tr>
                    <td colspan="6" id="page_list">
                    <%@ include file="paging.jsp" %>
                    </td>
                    </tr>
                    </c:if>
                    <!-- 회원인 경우 목록 하단에 글등록 버튼이 보여지도록 구현 -->
                    <c:if test="${not empty member}">
                    <tr>
                    <td colspan="6">
                    <a href="write.jsp"><input type="button" name= "WRITE" id="WRITE" value="WRITE"></a>
                    </td>
                    </tr>
                    </c:if>
                    
                    <form>
                    <table id="search_button">
            <tr>
            <td id="total_rows">작성글 &nbsp; ${totalRows}</td>
            <td>
                <select name="searchField" id="searchField">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                    <option value="writer">작성자</option>
                </select>
                <input type="text" name="searchWord" id="searchWord">
                <input type="submit" id="searchButton"value="검색">
            </td>
        </tr>
        </table>
        </form>
</table>
    </form>
    </section>
    ${j_footer}
    </div>
</body>
</html>