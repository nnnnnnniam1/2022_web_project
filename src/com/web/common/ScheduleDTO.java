package com.web.common;

public class ScheduleDTO {
	private String scheduleId;
	private String movDate;
	private String movName;
	private String startTime;
	private String endTime;
	private String cinema;
	private String screen;
	
	public void setScheduleId(String scheduleId) {this.scheduleId = scheduleId;}
	public String getScheduleId() {return this.scheduleId;}
	public void setMovDate(String movDate) {this.movDate = movDate;}
	public String getMovDate() {return this.movDate;}
	public void setMovName(String movName) {this.movName = movName;}
	public String getMovName() {return this.movName;}
	public void setStartTime(String startTime) {this.startTime = startTime;}
	public String getStartTime() {return this.startTime;}
	public void setEndTime(String endTime) {this.endTime = endTime;}
	public String getEndTime() {return this.endTime;}
	public void setCinema(String cinema) {this.cinema = cinema;}
	public String getCinema() {return this.cinema;}
	public void setScreen(String screen) {this.screen = screen;}
	public String getScreen() {return this.screen;}
}
