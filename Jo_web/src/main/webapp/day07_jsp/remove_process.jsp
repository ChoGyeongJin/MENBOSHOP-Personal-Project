<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO, human.dao.MemberDAO, java.sql.SQLException"%>     

 <% 
    session = request.getSession();
    MemberDTO dto = (MemberDTO)session.getAttribute("member");
 %>   
 <% 
request.setCharacterEncoding("UTF-8");
        
       
        
        MemberDAO dao = new MemberDAO();
        MemberDTO newDto = null;
        try {
            
            newDto = dao.deleteMember(dto);
            
        } catch (SQLException e) {
            e.printStackTrace();
        }

        
        if(newDto != null) {//회원정보 변경 성공
            //세션객체에 저장된 기존의 회원정보를 삭제함
            //HttpSession session = request.getSession();//처음인 경우네는 새로운 세션객체를
            //생성하고 기존의 세션객체가 있으면 기존의 세션객체를 반환함
            session.removeAttribute("member");
            //세션객체에 새로운 회원정보를 저장함
            session.setAttribute("member", newDto);
            session.invalidate();
            response.sendRedirect("/jo/main/index.jsp");
            
        }else {//회원정보 변경 실패
            //회원정보 실패에 대한 안내 메시지를 request객체에 저장함
            String msg = "시스템 문제로 회원정보가 정상적으로 변경되지 못했습니다. 다음에 다시 변경해 주세요.";
            request.setAttribute("msg", msg);
            request.getRequestDispatcher("day07_jsp/update.jsp").forward(request, response);
        }
    %>