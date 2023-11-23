package com.web.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.common.MemberDTO;
import com.web.common.RegisterDAO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/Login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 로그인 id,pw 가져오기
		String id = request.getParameter("memId");
		String pw = request.getParameter("memPw");
		String s = request.getParameter("save");

		//멤버 객체에 로그인 정보 삽입
		MemberDTO member = new MemberDTO();
		member.setMemId(id); member.setMemPw(pw);
		
		//db객체 생성
		RegisterDAO rd = new RegisterDAO();
		try {
			String loginCheck = rd.loginMember(member);
			RequestDispatcher dispatcher = null;
			HttpSession session = request.getSession();
			String msg;
			switch (loginCheck) {
			case "-1":
				msg = "존재하지 않는 아이디입니다.";
				System.out.println(msg);
			case "0":
				msg = "패스워드를 잘못 입력하셨습니다.";
				session.setAttribute("msg", msg);
				System.out.println(msg + pw);
				dispatcher= request.getRequestDispatcher("login.jsp");
				break;
			default:
				if(rd.checkAdmin(member.getMemId())==true)
					dispatcher = request.getRequestDispatcher("ShowMemberList.do");
				else
					dispatcher = request.getRequestDispatcher("index.jsp");
				session.setAttribute("loginCheck","OK");
				session.setAttribute("memId",id);
				session.setAttribute("memPw", pw);
				session.setAttribute("memName", loginCheck);
				System.out.println(session.getAttribute("memName"));

				if(s !=null) {
					session.setAttribute("checked","checked");
				}
				else {
					//session.removeAttribute("memId");
					session.removeAttribute("memPw");
					session.setAttribute("checked",null); 
				}
			}
			dispatcher.forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

