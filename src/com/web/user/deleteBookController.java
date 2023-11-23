package com.web.user;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.common.AdminDAO;
import com.web.common.MovieDAO;

@WebServlet("/deleteBook.do")
public class deleteBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("deleteId"));
		RequestDispatcher dispatcher;
		System.out.println(id);
		MovieDAO rd = new MovieDAO();
		rd.deleteBook(id);
		dispatcher = request.getRequestDispatcher("ShowMyBookList.do");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
