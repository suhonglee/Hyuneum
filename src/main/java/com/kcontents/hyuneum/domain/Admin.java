package com.kcontents.hyuneum.domain;

public class Admin {
	private int no;
	private String id;
	private String password;
	private int userCode;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUserCode() {
		return userCode;
	}
	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Admin [no=").append(no).append(", id=").append(id)
				.append(", password=").append(password).append(", userCode=")
				.append(userCode).append("]");
		return builder.toString();
	}
}
