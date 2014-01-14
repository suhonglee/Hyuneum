package com.kcontents.hyuneum.domain;

import java.util.Date;

public class Bbs {
	private int no;
	private String code;
	private String title;
	private String content;
	private String tel;
	private Date time;
	private String fileName;
	private String filePath;
	private int fileSize;
	private int hit;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getFileSize() {
		return fileSize;
	}
	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Bbs [no=").append(no).append(", code=").append(code)
				.append(", title=").append(title).append(", content=")
				.append(content).append(", tel=").append(tel).append(", time=")
				.append(time).append(", fileName=").append(fileName)
				.append(", filePath=").append(filePath).append(", fileSize=")
				.append(fileSize).append(", hit=").append(hit).append("]");
		return builder.toString();
	}
	
}
