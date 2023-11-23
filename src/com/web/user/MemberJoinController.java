package com.web.user;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.common.MemberDTO;
import com.web.common.RegisterDAO;

@WebServlet("/MemberJoin.do")
public class MemberJoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 회원정보가져오기
		String memId = request.getParameter("memId");
		String memPw = request.getParameter("memPw");
		String memName = request.getParameter("memName");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth");
		String phone = request.getParameter("phone");
		
		MemberDTO mem = new MemberDTO(); // 회원 객체 생성
		// 회원 정보 삽입
		mem.setMemId(memId); mem.setMemPw(memPw); mem.setMemName(memName);
		mem.setEmail(email+address); mem.setBirth(birth); mem.setPhone(phone);
		mem.setAdmin(); mem.setJoinDate(new Date(System.currentTimeMillis()));
		
		// DB객체 생성
		RegisterDAO rd = new RegisterDAO();
		try {
			rd.join(mem);
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("./index.jsp");
		dispatcher.forward(request, response);
	}

}
