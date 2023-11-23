package com.web.common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RegisterDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	// 쿼리문
	final String USER_JOIN = "INSERT INTO member VALUES (?,?,?,?,?,?,?,?)"; //회원가입
	final String USER_LOGIN = "SELECT memId, memPw, memName FROM member WHERE memId = ?";
	final String CHECK_ID = "SELECT memId FROM member WHERE memId = ?";
	final String CHECK_ADMIN = "SELECT admin FROM member WHERE memId = ?";
	//회원가입 메소드
	public void join(MemberDTO mem) {
		try {
			// DB연동
			conn = DBConnection.getConnection();
			// 쿼리 실행
			pstmt = conn.prepareStatement(USER_JOIN);
			pstmt.setString(1, mem.getMemId());
			pstmt.setString(2, mem.getAdmin());
			pstmt.setString(3, mem.getMemPw());
			pstmt.setString(4, mem.getMemName());
			pstmt.setString(5, mem.getEmail());
			pstmt.setString(6, mem.getBirth());
			pstmt.setString(7, mem.getPhone());
			pstmt.setDate(8, mem.getJoinDate());
			// 레코드 추가
			pstmt.executeUpdate();
		} catch (Exception e) {
		} finally {
			// DB닫기
			DBConnection.close(pstmt, conn);
		}
	}
	// 로그인 메소드
	public String loginMember(MemberDTO mem) throws SQLException {
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(USER_LOGIN);
			pstmt.setString(1,mem.getMemId());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString("memPw").equals(mem.getMemPw()))
					return rs.getString("memName");
				else {
					return "0";
				}
			}
		} catch (Exception e) {
		} finally {
			DBConnection.close(pstmt, rs, conn);
		}
		return "-1";
	}
	// 관리자 확인
	public boolean checkAdmin(String id) throws SQLException {
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(CHECK_ADMIN);
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString("admin").equals("A"))
					return true;
				else 
					return false;
			}
		} catch (Exception e) {
		} finally {
			DBConnection.close(pstmt, rs, conn);
		}
		return false;
	}
	// 회원가입 중 아이디 중복 메소드
	public boolean idCheck(String id) {
		boolean result  = false; //중복여부를 확인해주는 변수
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(CHECK_ID);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) result = true; //rs 값이 존재하면 아이디 중복
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(pstmt, rs, conn);
		}
		return result;
	}
	
}
