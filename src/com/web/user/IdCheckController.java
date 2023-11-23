package com.web.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.common.RegisterDAO;

@WebServlet("/IdCheck.do")
public class IdCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected boolean get(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("memId");
		//아이디 중복 체크 메소드 출력
		RegisterDAO rd = new RegisterDAO();
		boolean sameId = rd.idCheck(id);
		System.out.println(id+"중복 여부 : " + sameId);
//		PrintWriter out = response.getWriter();
//		out.print(sameId);
		return sameId;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
