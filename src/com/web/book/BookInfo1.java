package com.web.book;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/BookInfo1.do")
public class BookInfo1 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("movName", request.getParameter("movie"));
		session.setAttribute("region",request.getParameter("region"));
		session.setAttribute("cinema",request.getParameter("theater"));
		session.setAttribute("date",request.getParameter("date"));
		session.setAttribute("startTime",request.getParameter("time"));
		RequestDispatcher dispatcher = request.getRequestDispatcher("seat.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
