package com.web.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SelectMovie.do")
public class SelectMovieController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset-UTF-8");
		HttpSession session = request.getSession();
		String movie = (String)request.getParameter("movie");
		String movieId = (String)request.getParameter("movieId");
		session.setAttribute("movie", movie);
		session.setAttribute("movieId", movieId);
		System.out.println("선택한 영화 -> " + movieId + " : " + movie);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("reservation.jsp");
		dispatcher.forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
