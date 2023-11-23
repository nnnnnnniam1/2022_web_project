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

import com.web.common.CinemaDTO;
import com.web.common.MovieDAO;

/**
 * Servlet implementation class TheaterListController
 */
@WebServlet("/SelectCinema.do")
public class SelectCinemaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset-UTF-8");
		String area = (String)request.getParameter("area1");
		
		MovieDAO md = new MovieDAO();
		ArrayList<CinemaDTO> cList = md.selectCinema(area);
		HttpSession session = request.getSession();
		session.setAttribute("cList", cList);
		session.setAttribute("areaCheck", "OK");
		RequestDispatcher dispatcher = request.getRequestDispatcher("reservation.jsp");
		dispatcher.forward(request, response);
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
