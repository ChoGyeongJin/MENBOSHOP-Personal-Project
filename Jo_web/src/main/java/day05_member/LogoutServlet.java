package day05_member;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/memberLogout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 5981961508875070526L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		//기존의 세션객체에 저장된 내용을 초기화시킴: invalidate()
		HttpSession session = request.getSession();
			session.invalidate();
			//메인페이지로 이동
			response.sendRedirect("/jo/main/index.jsp");
		}
	}