package com.fin.app.product;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	private int num; //제품코드 
	private int CateNum;//카테고리 번호
	private int listNum;
	private String Name;//상품명
	private int Price;//가격
	private int DiscountRate;//할인율
	private String Content;//상세정보
	private int delivType;//배송조건
	private int Date;//등록일
	
	private String ImgName;//파일번호
	private int ImgNum;//이미지파일 이름
	
	private MultipartFile upload;
	

	public int getCateNum() {
		return CateNum;
	}
	public void setCateNum(int cateNum) {
		CateNum = cateNum;
	}
	public int getListNum() {
		return listNum;
	}
	public void setListNum(int listNum) {
		this.listNum = listNum;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public int getDiscountRate() {
		return DiscountRate;
	}
	public void setDiscountRate(int discountRate) {
		DiscountRate = discountRate;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public int getDelivType() {
		return delivType;
	}
	public void setDelivType(int delivType) {
		this.delivType = delivType;
	}
	public int getDate() {
		return Date;
	}
	public void setDate(int date) {
		Date = date;
	}
	public String getImgName() {
		return ImgName;
	}
	public void setImgName(String imgName) {
		ImgName = imgName;
	}
	public int getImgNum() {
		return ImgNum;
	}
	public void setImgNum(int imgNum) {
		ImgNum = imgNum;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	
	
}
