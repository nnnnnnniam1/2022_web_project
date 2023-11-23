package com.web.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {
	static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String URL = "jdbc:mysql://localhost:3306/moviedb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
	static final String USER = "root";
	static final String PW = "1234";
	
	static Connection getConnection() {
		try {
			Class.forName(DRIVER);
			return DriverManager.getConnection(URL,USER,PW);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void close(PreparedStatement pstmt, Connection conn){
		try {
			pstmt.close(); conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(PreparedStatement pstmt, ResultSet rs, Connection conn) {
		try {
			pstmt.close(); rs.close(); conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
}
