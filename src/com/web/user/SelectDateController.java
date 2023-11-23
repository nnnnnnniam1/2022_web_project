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

import com.web.common.MovieDAO;
import com.web.common.MovieDTO;


@WebServlet("/SelectDate.do")
public class SelectDateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset-UTF-8");
		String date = (String) request.getParameter("date");
		HttpSession session = request.getSession();
		System.out.println("선택한 날짜 -> " + date);
		MovieDAO md = new MovieDAO();
		ArrayList<MovieDTO> movList = md.selectMovieList();
		session.setAttribute("date", date);
		session.setAttribute("movList", movList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("reservation.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
