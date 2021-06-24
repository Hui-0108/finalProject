package com.fin.app.petsit;

public class Reservation {
	
	private String mId; //아이디
	
	//펫시터 예약
	private int orderNum;//주문코드 
	private String checkIn;//체크인날짜
	private String checkOut;//체크아웃날짜
	private int mNum;//고객번호
	private int petNum;//글번호
	private int finalPrice;//최종금액
	private String rDate; //예약을 신청한 날짜
	
	//펫시터 상위옵션
	private int petMainOptNum; //상위옵션 번호 
	private String petMainOptName; //상위 옵션명 (견종)
	
	//펫시터 하위옵션 
	private int petSubOptionNum; //하위옵션번호 
	private int petSubOptName; //하위옵션명 (소형, 중형, 대형)

	//펫시터 상세 옵션
	private int petDetailOptNum; //상세옵션번호
	private int sitterPrice; //가격 
	
	//예약 상세
	private int petAmount; // 마리수
	
	//예약 취소
	private String cancelDate; //취소일자
	private String cancelContent; //취소사유 
	
	
	//옵션받기
	private int small;
	private int midium;
	private int large;
	private int tax;
	private int dayCnt;
	private int sum;

	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	private String petImg;
	
	public String getPetImg() {
		return petImg;
	}
	public void setPetImg(String petImg) {
		this.petImg = petImg;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	public int getmNum() {
		return mNum;
	}
	public void setmNum(int mNum) {
		this.mNum = mNum;
	}
	public int getPetNum() {
		return petNum;
	}
	public void setPetNum(int petNum) {
		this.petNum = petNum;
	}
	public int getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(int finalPrice) {
		this.finalPrice = finalPrice;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public int getPetMainOptNum() {
		return petMainOptNum;
	}
	public void setPetMainOptNum(int petMainOptNum) {
		this.petMainOptNum = petMainOptNum;
	}
	public String getPetMainOptName() {
		return petMainOptName;
	}
	public void setPetMainOptName(String petMainOptName) {
		this.petMainOptName = petMainOptName;
	}
	public int getPetSubOptionNum() {
		return petSubOptionNum;
	}
	public void setPetSubOptionNum(int petSubOptionNum) {
		this.petSubOptionNum = petSubOptionNum;
	}
	public int getPetSubOptName() {
		return petSubOptName;
	}
	public void setPetSubOptName(int petSubOptName) {
		this.petSubOptName = petSubOptName;
	}
	public int getPetDetailOptNum() {
		return petDetailOptNum;
	}
	public void setPetDetailOptNum(int petDetailOptNum) {
		this.petDetailOptNum = petDetailOptNum;
	}
	public int getSitterPrice() {
		return sitterPrice;
	}
	public void setSitterPrice(int sitterPrice) {
		this.sitterPrice = sitterPrice;
	}
	public String getCancelDate() {
		return cancelDate;
	}
	public void setCancelDate(String cancelDate) {
		this.cancelDate = cancelDate;
	}
	public String getCancelContent() {
		return cancelContent;
	}
	public void setCancelContent(String cancelContent) {
		this.cancelContent = cancelContent;
	}
	public int getPetAmount() {
		return petAmount;
	}
	public void setPetAmount(int petAmount) {
		this.petAmount = petAmount;
	}
	public int getSmall() {
		return small;
	}
	public void setSmall(int small) {
		this.small = small;
	}
	public int getMidium() {
		return midium;
	}
	public void setMidium(int midium) {
		this.midium = midium;
	}
	public int getLarge() {
		return large;
	}
	public void setLarge(int large) {
		this.large = large;
	}
	public int getTax() {
		return tax;
	}
	public void setTax(int tax) {
		this.tax = tax;
	}
	public int getDayCnt() {
		return dayCnt;
	}
	public void setDayCnt(int dayCnt) {
		this.dayCnt = dayCnt;
	}
	
	
	
}
