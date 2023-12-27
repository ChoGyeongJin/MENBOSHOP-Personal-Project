package day05_member;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import human.dao.MemberDAO;
import human.dto.MemberDTO;

@WebServlet("/memberLogin")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = -626859991547783303L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//로그인 정보를 받아서 로그인 실행결과를 화면에 출력하되
		//정상적으로 로그인되었으면 '로그인 성공'을 출력하고, 그렇지 않으면 '로그인 실패'를 출력하도록 구현하시오.
		//post방식으로 넘어온 데이터의 한글깨짐 방지: request.setCharacterEncoding("UTF-8")
		request.setCharacterEncoding("UTF-8");
		
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
	
		MemberDTO dto = null;
		MemberDAO dao = new MemberDAO();
		try {			
			dto = dao.login(member_id, member_pw);	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		//로그인 성공시 dto에 MemberDTO객체가 저장이 됨
		//로그인 실패시 dto는 초기값 그대로 null이 딤
		if(dto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", dto);
			//메인페이지로 이동
			response.sendRedirect("/jo/main/index.jsp");
		
		}else {
			//로그인페이지로 이동
			response.sendRedirect("/jo/day07_jsp/login.jsp");
		}
	}

}


