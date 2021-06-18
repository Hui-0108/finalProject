package com.fin.app.admin.orderManagement;

public class OrderManagement {
	private long orderNum;
	private long mNum;
	private int mType;
	private int orderState;
	private int finalPrice;
	private String orderName;
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
	public int getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(int finalPrice) {
		this.finalPrice = finalPrice;
	}
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	
	
	
	
}
