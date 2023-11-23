package com.web.book;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.common.MovieDAO;


@WebServlet("/BookInfo2.do")
public class BookInfo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("seat", request.getParameter("seat"));
		MovieDAO md = new MovieDAO();
		try {
			md.reservationBook((String)session.getAttribute("memId"), (String)session.getAttribute("movName"), 
					(String)session.getAttribute("region"), (String)session.getAttribute("cinema"),
					(String)session.getAttribute("date"), (String)session.getAttribute("startTime"), (String)session.getAttribute("seat"));
			System.out.println("성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("bookSuccess.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
