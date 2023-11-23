package com.web.common;

public class BookDTO {
	private String memId;
	private String date;
	private String cinema;
	private String movName;
	private String startTime;
	private String region;
	private String seat;
	private int bookId;
	
	public String getMemId() {return memId;}
	public void setMemId(String memId) {this.memId = memId;}
	public String getDate() {return date;}
	public void setDate(String date) {this.date = date;}
	public String getCinema() {return cinema;}
	public void setCinema(String cinema) {this.cinema = cinema;}
	public String getMovName() {return movName;}
	public void setMovName(String movName) {this.movName = movName;}
	public String getStartTime() {return startTime;}
	public void setStartTime(String startTime) {this.startTime = startTime;}
	public String getSeat() {return seat;}
	public void setSeat(String seat) {this.seat = seat;}
	public String getRegion() {return region;}
	public void setRegion(String region) {this.region = region;}
	public int getBookId() {return bookId;}
	public void setBookId(int bookId) {this.bookId = bookId;}
	
	
}
