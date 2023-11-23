package com.web.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AdminDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	final String MEMBERLIST = "SELECT memName, birth, memId, phone, joinDate, admin FROM member";
	final String SELECT_BOOK = "SELECT * FROM reservation";
	final String DELETE_MEMBER = "DELETE FROM member WHERE memID = ?";
	
	public  ArrayList<MemberDTO> selectMemList(){
		ArrayList<MemberDTO> aList = new ArrayList<MemberDTO>();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(MEMBERLIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				if(rs.getString("admin").equals("U")) {
					MemberDTO m = new MemberDTO();
					m.setMemName(rs.getString("memName"));
					m.setBirth(rs.getString("birth"));
					m.setMemId(rs.getString("memId"));
					m.setPhone(rs.getString("phone"));
					m.setJoinDate(rs.getDate("joinDate"));
					aList.add(m);
					System.out.println(m.getMemId());
				}
			}
		} catch(Exception e) {
		} finally {
			DBConnection.close(pstmt, rs, conn);
		}
		return aList;
	}
	
	public ArrayList<BookDTO> selectBookList(){
		ArrayList<BookDTO> bList = new ArrayList<BookDTO>();
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(SELECT_BOOK);
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
	public void deleteMember(String id) {
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(DELETE_MEMBER);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch(Exception e){
		} finally {
			DBConnection.close(pstmt, conn);
		}
	}
}
