package day05_member;

import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import human.dao.MemberDAO;
import human.dto.MemberDTO;

@WebServlet("/memberjoin")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 2314403913691088243L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_add = request.getParameter("member_add");
		String member_name = request.getParameter("member_name");
		String email = request.getParameter("email");
		String handphone = request.getParameter("handphone");
		
		MemberDTO dto = new MemberDTO();
		dto.setMember_id(member_id);
		dto.setMember_pw(member_pw);
		dto.setMember_add(member_add);
		dto.setMember_name(member_name);
		dto.setEmail(email);
		dto.setHandphone(handphone);

		
		MemberDAO dao = new MemberDAO();
		int result =0;
		try {
			result = dao.join(dto);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//회원가입 성공시 메인페이지로 이동
		//회원가입 실패시 회원가입페이지로 이동
		//페이지 이동: 새로운 페이지로 이동 = response.sendRedirect(페이지URL)
		//서버에 새로운 페이지 요청을 하는 것과 같기 때문에 기존의 요청은 결과값 없이 응답되고
		//바로 서버로 요청을 보냄 (기존의 request, response객체는 소멸하고 새로운 request, response객체 생성)
		
		if(result == 1) {
			response.sendRedirect("/jo/main/index.jsp");
		}else {
			response.sendRedirect("/jo/day07_jsp/join.jsp");
		}
		
	}
}


