package com.human.unicorn.dto;

import java.sql.Date;

public class InquiryDTO {
	private String inquiryNo;
	private int userNo;
	private int productNo;
	private String inquiryTitle;
	private String inquiryDetails;
	private Date inquiryDate;
	private String id;
	private String answerDetails;
	private Date answerDate;
	public String getAnswerDetails() {
		return answerDetails;
	}
	public void setAnswerDetails(String answerDetails) {
		this.answerDetails = answerDetails;
	}
	public Date getAnswerDate() {
		return answerDate;
	}
	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}
	int startNum;
	int endNum;
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	public String getId() {
		
		return id;
	}
	public void setId(String id) {
		
		this.id = id;
	}
	public String getProcessedId() {
		String star = "*".repeat(id.length()-3);
		return id.substring(0,3) + star;
	}
	
	@Override
	public String toString() {
		return "InquiryDTO [inquiryNo=" + inquiryNo + ", userNo=" + userNo + ", productNo=" + productNo
				+ ", inquiryTitle=" + inquiryTitle + ", inquiryDetails=" + inquiryDetails + ", inquiryDate="
				+ inquiryDate + ", id=" + id + ", answerDetails=" + answerDetails + ", answerDate=" + answerDate
				+ ", startNum=" + startNum + ", endNum=" + endNum + "]";
	}
	public String getInquiryNo() {
		return inquiryNo;
	}
	public void setInquiryNo(String inquiryNo) {
		this.inquiryNo = inquiryNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getInquiryTitle() {
		return inquiryTitle;
	}
	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}
	public String getInquiryDetails() {
		return inquiryDetails;
	}
	public void setInquiryDetails(String inquiryDetails) {
		this.inquiryDetails = inquiryDetails;
	}
	public Date getInquiryDate() {
		return inquiryDate;
	}
	public void setInquiryDate(Date inquiryDate) {
		this.inquiryDate = inquiryDate;
	}
}
