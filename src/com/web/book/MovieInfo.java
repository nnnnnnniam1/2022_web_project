package com.web.book;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.fasterxml.jackson.databind.ObjectMapper;
import kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService;
import kr.or.kobis.kobisopenapi.consumer.rest.exception.OpenAPIFault;


@WebServlet("/MovieInfo.do")
public class MovieInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher;
		if(session.getAttribute("memId")==null)
			dispatcher = request.getRequestDispatcher("login.jsp");
		else {
			//조회일자
			String targetDt = request.getParameter("targetDt")==null?"20221128":request.getParameter("targetDt");
			//결과 row수
			String itemPerPage = request.getParameter("itemPerPage")==null?"10":request.getParameter("itemPerPage");
			//Y: 다양성영화 N:상영영화 default:전체
			String multiMovieYn = request.getParameter("multiMovieYn")==null?"":request.getParameter("multiMobieYn");
			//k"한국영화 F: 외국영화 default:전체
			String repNationCd = request.getParameter("repNationCd")==null?"":request.getParameter("repNationCd");
			//"0105000000" 조회코드
			String wideAreaCd = request.getParameter("wideAreaCd")==null?"":request.getParameter("wideAreaCd");
			
			//발급키
			String key = "3e281d0d85267ce038908d6ee1d3ab20";
			
			//KOBIS 오픈 API Rest Client를 통해 호출
			KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
			
			//일일 박스오피스 
			String dailyResponse = null;
			try {
				dailyResponse = service.getDailyBoxOffice(true, targetDt,itemPerPage,multiMovieYn,repNationCd,wideAreaCd);
			} catch (OpenAPIFault e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			//Json 라이브러리를 통해 Handling
			ObjectMapper mapper = new ObjectMapper();
			HashMap<String,Object> dailyResult = mapper.readValue(dailyResponse, HashMap.class);
			
			request.setAttribute("dailyResult", dailyResult);
			
			// KOBIS 오픈 API Rest Client를 통해 서비스 호출 (boolean isJson, String comCode)
			String codeResponse = null;
			try {
				codeResponse = service.getComCodeList(true, "0105000000");
			} catch (OpenAPIFault e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			HashMap<String,Object> codeResult = mapper.readValue(codeResponse,HashMap.class);
			request.setAttribute("codeResult", codeResult);
				
			session.setAttribute("dailyResult", dailyResult);
			dispatcher = request.getRequestDispatcher("book.jsp");
		}
		dispatcher.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
