package com.fin.app.store;

public class Store {
	private int Num, CateNum;
	private int listNum;
	private String Name;
	private int Price;
	private int DiscountRate;
	private String Content;
	private int delivType;
	private int Date;
	
	private String ImgName;
	private int ImgNum;
	
	public int getNum() {
		return Num;
	}
	public void setNum(int num) {
		Num = num;
	}
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
	
	
}
