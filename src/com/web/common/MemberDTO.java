package com.web.common;

import java.sql.Date;

public class MemberDTO {
	private String memId;	//NN
	private String admin;	//NN
	private String memPw;	//NN
	private String memName;	//NN
	private String email;	//NN
	private String birth;
	private String phone;
	private Date joinDate;
		
	public void setMemId(String memId) { this.memId = memId; }
	public String getMemId() { return memId; }
	public void setMemPw(String memPw) { this.memPw = memPw; }
	public String getMemPw() { return memPw; }
	public void setMemName(String memName) { this.memName = memName; }
	public String getMemName() { return memName; }
	public void setEmail(String email) { this.email = email; }
	public String getEmail() { return email; }
	public void setBirth(String birth) { this.birth = birth; }
	public String getBirth() { return birth; }
	public void setPhone(String phone) { this.phone = phone; }
	public String getPhone() { return phone; }	
	public void setAdmin() { this.admin = "U"; }
	public String getAdmin() { return admin; }
	public void setJoinDate( Date joinDate) { this.joinDate = joinDate; }
	public Date getJoinDate() { return joinDate; }
	
}
