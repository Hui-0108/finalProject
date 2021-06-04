package com.fin.app.product;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	private int pnum; //제품코드 
	private int pCateNum;//카테고리 번호
	private int listNum; //리스트번호
	private String pName;//상품명
	private int pPrice;//가격
	private int pDiscountRate;//할인율
	private String pContent;//상세정보
	private int delivType;//배송조건
	private int pDate;//등록일
	
	private int pcateNum;
	private String pcateName;
	
	
	private String pImgName;//파일번호
	private int pImgNum;//이미지파일 이름
	
	private MultipartFile upload;

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public int getpCateNum() {
		return pCateNum;
	}

	public void setpCateNum(int pCateNum) {
		this.pCateNum = pCateNum;
	}

	public int getListNum() {
		return listNum;
	}

	public void setListNum(int listNum) {
		this.listNum = listNum;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public int getpDiscountRate() {
		return pDiscountRate;
	}

	public void setpDiscountRate(int pDiscountRate) {
		this.pDiscountRate = pDiscountRate;
	}

	public String getpContent() {
		return pContent;
	}

	public void setpContent(String pContent) {
		this.pContent = pContent;
	}


	public int getpDate() {
		return pDate;
	}

	public void setpDate(int pDate) {
		this.pDate = pDate;
	}

	public int getPcateNum() {
		return pcateNum;
	}

	public void setPcateNum(int pcateNum) {
		this.pcateNum = pcateNum;
	}

	public String getPcateName() {
		return pcateName;
	}

	public void setPcateName(String pcateName) {
		this.pcateName = pcateName;
	}

	public String getpImgName() {
		return pImgName;
	}

	public void setpImgName(String pImgName) {
		this.pImgName = pImgName;
	}

	public int getpImgNum() {
		return pImgNum;
	}

	public void setpImgNum(int pImgNum) {
		this.pImgNum = pImgNum;
	}

	public MultipartFile getUpload() {
		return upload;
	}

	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}

	public int getDelivType() {
		return delivType;
	}

	public void setDelivType(int delivType) {
		this.delivType = delivType;
	}
	

	
	
}
