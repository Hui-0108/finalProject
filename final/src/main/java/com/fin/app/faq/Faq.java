package com.fin.app.faq;

public class Faq {
	
	private int faqNum;
	private int faqCateNum; // 카테고리 번호
	
	private String mId;
	private String faqTitle;
	private String faqContent;
	private String faqImg;
	public int getFaqNum() {
		return faqNum;
	}
	public void setFaqNum(int faqNum) {
		this.faqNum = faqNum;
	}
	public int getFaqCateNum() {
		return faqCateNum;
	}
	public void setFaqCateNum(int faqCateNum) {
		this.faqCateNum = faqCateNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getFaqTitle() {
		return faqTitle;
	}
	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}
	public String getFaqContent() {
		return faqContent;
	}
	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}
	public String getFaqImg() {
		return faqImg;
	}
	public void setFaqImg(String faqImg) {
		this.faqImg = faqImg;
	}
	
}
