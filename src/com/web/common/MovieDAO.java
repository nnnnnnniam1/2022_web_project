package com.web.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.catalina.startup.PasswdUserDatabase;

import sun.misc.Request;

public class MovieDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	final String MOVIE_LIST = "SELECT * FROM movie";
	final String CINEMA_LIST = "SELECT * FROM cinema WHERE area1=?";
	final String INSERT_BOOK = "INSERT INTO reservation (memId, movName, region, cinema, date, startTime, seat) "
								+ "VALUES(?,?,?,?,?,?,?)"; //나중에 디비에도 추가하기 - 좌석
	final String MOVIE_SCHEDULE = "SELECT schedule.scheduleId, movie.movName, schedule.movDate, schedule.startTime, schedule.endTime, cinema.cinemaName, schedule.screen" 
			+ "FROM schedule INNER JOIN movie ON schedule.movId = movie.movId"
			+ "INNER JOIN cinema ON schedule.cinemaId = cinema.cinemaId"
			+ "WHERE schedule.movDate = ? and schedule.cinemaId = ? and schedule.movId = ?";
	final String SHOW_BOOK = "SELECT * FROM reservation WHERE memId = ?";
	final String DELETE_BOOK = "DELETE FROM reservation WHERE bookId = ?";
	
	//영화 리스트
	public ArrayList<MovieDTO> selectMovieList(){
		ArrayList<MovieDTO> movList = new ArrayList<MovieDTO>();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(MOVIE_LIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MovieDTO m = new MovieDTO();
				m.setMovId(rs.getInt("movId")); m.setMovName(rs.getString("movName"));
				movList.add(m);
				System.out.println(m.getMovName());
			}
		} catch (Exception e) {
		} finally {
			DBConnection.close(pstmt, rs, conn);
		}
		return movList;
	}
	public ArrayList<ScheduleDTO> movieSchedule(String date, String movie, String cinema){
		ArrayList<ScheduleDTO> sList = new ArrayList<ScheduleDTO>();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(MOVIE_SCHEDULE);
			pstmt.setString(1, (String)date); pstmt.setString(2, cinema);pstmt.setInt(3, Integer.parseInt(movie));
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ScheduleDTO s = new ScheduleDTO();
				s.setScheduleId(rs.getString("scheduleId")); s.setMovDate(rs.getString("movDate")); s.setMovName(rs.getString("movName")); 
				s.setStartTime(rs.getString("startTime")); s.setEndTime(rs.getString("endTime")); 
				s.setCinema(rs.getString("cinema")); s.setScreen(rs.getString("screen"));
				sList.add(s);
				System.out.println("영화시간 아이디 : "+ s.getScheduleId());
			}
		} catch (Exception e) {
		} finally {
			DBConnection.close(pstmt, rs, conn);
		}
		return sList;
	}
	//지역선택
	public ArrayList<CinemaDTO> selectCinema(String area){
		ArrayList<CinemaDTO> cList = new ArrayList<CinemaDTO>();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(CINEMA_LIST);
			pstmt.setString(1,area);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CinemaDTO c = new CinemaDTO();
				c.setCinemaId(rs.getString("cinemaId")); c.setCinemaName(rs.getString("cinemaName"));
				cList.add(c);
				System.out.println(c.getCinemaId()+" : "+ c.getCinemaName());
			}
		} catch (Exception e) {
		} finally {
			DBConnection.close(pstmt, rs, conn);
		}
		return cList;
	}
	public  void reservationBook(String memId, String movName, String region, String cinema, String date, String startTime, String seat){
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(INSERT_BOOK);
			pstmt.setString(1, memId);pstmt.setString(2, movName);pstmt.setString(3, region);
			pstmt.setString(4, cinema); pstmt.setString(5, date); pstmt.setString(6, startTime); 
			pstmt.setString(7, seat);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.getStackTrace();
		} finally {
			DBConnection.close(pstmt, conn);
		}
	}
	public ArrayList<BookDTO>selectMyBook(String memId){
		ArrayList<BookDTO>bList = new ArrayList<BookDTO>();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(SHOW_BOOK);
			pstmt.setString(1, memId);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BookDTO b = new BookDTO();
				b.setMemId(rs.getString("memId")); b.setMovName(rs.getString("movName")); b.setRegion(rs.getString("region"));
				b.setCinema(rs.getString("cinema")); b.setDate(rs.getString("date")); b.setStartTime(rs.getString("startTime"));
				b.setSeat(rs.getString("seat")); b.setBookId(rs.getInt("bookId"));
				bList.add(b);
			}
		} catch (Exception e) {
		} finally {
			DBConnection.close(pstmt, rs, conn);
		}
		return bList;	
	}
	public void deleteBook(int bookid) {
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(DELETE_BOOK);
			pstmt.setInt(1, bookid);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.getStackTrace();
		} finally {
			DBConnection.close(pstmt, conn);
		}
	}
	public ArrayList<BookDTO> selectBookList(){
		ArrayList<BookDTO> bList = new ArrayList<BookDTO>();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(SHOW_BOOK);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BookDTO b = new BookDTO();
				b.setMemId(rs.getString("memId")); b.setMovName(rs.getString("movName")); b.setRegion(rs.getString("region"));
				b.setCinema(rs.getString("cinema")); b.setDate(rs.getString("date")); b.setStartTime(rs.getString("startTime"));
				b.setSeat(rs.getString("seat")); b.setBookId(rs.getInt("bookId"));
				bList.add(b);
				System.out.println(b.getMemId());
			}
		}catch (Exception e) {
		}finally {
			DBConnection.close(pstmt, rs, conn);
		}
		return bList;
	}

}
