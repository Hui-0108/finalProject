package com.fin.app.admin.productManagement;

import java.sql.Date;

public class ProductManagement {
	private long pNum;
	private String pName;
	private int pPrice;
	private String pCateName;
	private Date pDate;
	
	public long getpNum() {
		return pNum;
	}
	public void setpNum(long pNum) {
		this.pNum = pNum;
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

	public String getpCateName() {
		return pCateName;
	}
	public void setpCateName(String pCateName) {
		this.pCateName = pCateName;
	}
	public Date getpDate() {
		return pDate;
	}
	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}
	
	
	
}
