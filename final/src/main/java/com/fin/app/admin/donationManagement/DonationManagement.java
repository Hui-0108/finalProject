package com.fin.app.admin.donationManagement;

import java.sql.Date;

public class DonationManagement {
	private long donaNum;
	private String mId;
	private String donaPrice;
	private Date donaStart;
	private Date donaEnd;
	
	public long getDonaNum() {
		return donaNum;
	}
	public void setDonaNum(long donaNum) {
		this.donaNum = donaNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getDonaPrice() {
		return donaPrice;
	}
	public void setDonaPrice(String donaPrice) {
		this.donaPrice = donaPrice;
	}
	public Date getDonaStart() {
		return donaStart;
	}
	public void setDonaStart(Date donaStart) {
		this.donaStart = donaStart;
	}
	public Date getDonaEnd() {
		return donaEnd;
	}
	public void setDonaEnd(Date donaEnd) {
		this.donaEnd = donaEnd;
	}
	
	
}
