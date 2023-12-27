<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="human.dto.MemberDTO" %>    
    
	<header>
	     <h1>헤더 영역</h1>
	     <a href="/jo/main/index.jsp"><div id="logo" title="회사로고"></div></a>
	     <div id="info-menu">
	         
	       <% session = request.getSession();
	         MemberDTO dto = (MemberDTO)session.getAttribute("member");
	         
	         if(dto != null){//로그인한 경우 %>
	         
               <a href="#">BASKET / 0</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      	   <a href="/jo/day07_jsp/logout.jsp">LOGOUT</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="#"><img src="../resources/css/img/search.PNG"></a>
	        
	      <% }else{//로그인하지 않은 경우 %>
	      	 
	         <a href="#">BASKET / 0</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <a href="/jo/day07_jsp/login.jsp">SIGN IN</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <a href="#"><img src="../resources/css/img/search.PNG"></a>
               
	      <% }%>
	          
	     </div>
	     <nav>
	         <h1>네비게이션 영역</h1>
        <div id="left-menu">
         <% 
            if(dto != null){//로그인한 경우 %>
            <ul>
            <li><a href="#"><img src="../resources/css/img/menubar.PNG"></a></li>
            <li><a href="#">ABOUT BRAND</a></li>
            <li><a href="#">SHOP</a></li>
            <li><a href="../day13_board/list.jsp">CUSTOMER SERVICE</a></li>
            <li><a href="../day07_jsp/update.jsp">MY PAGE</a></li>
        </ul>
        <a href="/jo/day07_jsp/update.jsp"><div id="right-logo"></div></a>
        
        <% }else{//로그인하지 않은 경우 %>
            <ul>
            <li><a href="#"><img src="../resources/css/img/menubar.PNG"></a></li>
            <li><a href="#">ABOUT BRAND</a></li>
            <li><a href="#">SHOP</a></li>
            <li><a href="../day13_board/list.jsp">CUSTOMER SERVICE</a></li>
            <li><a href="#">MY PAGE</a></li>
        </ul>
        <a href="/jo/day07_jsp/update.jsp"><div id="right-logo"></div></a>
               
          <% }%>
    </div>

  </nav>
	 </header>
