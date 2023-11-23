package com.web.book;

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
import com.web.common.BookDTO;
import com.web.common.MovieDAO;

@WebServlet("/AdminBookList.do")
public class AdminBookList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminDAO ad = new AdminDAO();
		try {
			
			ArrayList<BookDTO> blist = ad.selectBookList();
			System.out.println("멤버레스트 사이즈 : " + blist.size());
			HttpSession session = request.getSession();
			session.setAttribute("bookList", blist);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin2.jsp");
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
