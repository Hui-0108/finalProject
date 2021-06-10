package com.fin.app.admin.orderManagement;

import java.sql.Date;

public class OrderManagement {
	private long orderNum;
	private long mNum;
	private int mType;
	private int orderState;
	private int orderPrice;
	private Date orderName;
	
	public long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(long orderNum) {
		this.orderNum = orderNum;
	}
	public long getmNum() {
		return mNum;
	}
	public void setmNum(long mNum) {
		this.mNum = mNum;
	}
	public int getmType() {
		return mType;
	}
	public void setmType(int mType) {
		this.mType = mType;
	}
	public int getOrderState() {
		return orderState;
	}
	public void setOrderState(int orderState) {
		this.orderState = orderState;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	public Date getOrderName() {
		return orderName;
	}
	public void setOrderName(Date orderName) {
		this.orderName = orderName;
	}
	
	
	
}
