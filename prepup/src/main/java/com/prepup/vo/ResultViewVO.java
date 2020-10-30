package com.prepup.vo;



public class ResultViewVO {

	private String studentid;
	private String classid;
	private String examcode;
	private String mark;
	
	public ResultViewVO() {
		super();
	}
	public ResultViewVO(String studentid, String classid, String examcode, String mark) {
		super();
		this.studentid = studentid;
		this.classid = classid;
		this.examcode = examcode;
		this.mark = mark;
	}
	
	public ResultViewVO(String studentid, String classid, String examcode, String mark) {
		super();
		this.studentid = studentid;
		this.classid = classid;
		this.examcode = examcode;
		this.mark = mark;
	}
	public String getstudentid() {
		return studentid;
	}
	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}
	public String classid() {
		return classid;
	}
	public void setclassid(String classid) {
		this.classid = classid;
	}
	public String getexamcode() {
		return examcode;
	}
	public void setExamcode(String examcode) {
		this.examcode = examcode;
	}
	public String getMark() {
		return mark;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}
	
	@Override
	public String toString() {
		return "ResultViewVO [studentid=" + studentid + ", classid=" + classid+ ", examcode=" + examcode + ", mark=" + mark "]";
	}
	
	
}

