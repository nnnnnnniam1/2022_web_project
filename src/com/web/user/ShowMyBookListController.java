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

import com.web.common.BookDTO;
import com.web.common.MovieDAO;

/**
 * Servlet implementation class ShowMyBookListController
 */
@WebServlet("/ShowMyBookList.do")
public class ShowMyBookListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("memId");//세션에 저장한 아이디 변수 이름 넣기
		MovieDAO md = new MovieDAO();
		try {
			ArrayList<BookDTO> bList = md.selectMyBook(id);
			session.setAttribute("bookList", bList);
			System.out.println(session.getAttribute("bookList"));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("myPage.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
