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
import com.web.common.ScheduleDTO;

@WebServlet("/SelectSchedule.do")
public class ShowScheduleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset-UTF-8");
		HttpSession session = request.getSession();
		String cinema = (String)request.getParameter("cinemaId");
		String movie = (String)session.getAttribute("movieId");
		String date = (String)session.getAttribute("date");
//		String scheduleId = (String)request.getParameter("schedueId");
		System.out.println(cinema + movie + date);
		MovieDAO md = new MovieDAO();
		try {
			ArrayList<ScheduleDTO> sList = md.movieSchedule(date, movie, cinema);
			session.setAttribute("schedule", sList);
			session.setAttribute("cinemaCheck", "OK");
//			session.setAttribute("sId", scheduleId);
		}catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("reservation.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
