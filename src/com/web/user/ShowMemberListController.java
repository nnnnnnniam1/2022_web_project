package com.web.user;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.common.AdminDAO;
import com.web.common.MemberDTO;
import com.web.common.RegisterDAO;

@WebServlet("/ShowMemberList.do")
public class ShowMemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminDAO rd = new AdminDAO();
		try {
			ArrayList<MemberDTO> alist = rd.selectMemList();
			System.out.println("멤버리스트 사이즈 : "+ alist.size());
			HttpSession session = request.getSession();
			session.setAttribute("memberList", alist);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
			dispatcher.forward(request, response);			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
