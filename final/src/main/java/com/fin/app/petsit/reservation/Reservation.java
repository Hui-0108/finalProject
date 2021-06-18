package com.fin.app.petsit.reservation;

public class Reservation {
	
	//펫시터 예약
	private int orderNum;//주문코드 
	private String checkIn;//체크인날짜
	private String checkOut;//체크아웃날짜
	private int mNum;//고객번호
	private int petNum;//글번호
	private int finalPrice;//최종금액
	private String rDate; //예약을 신청한 날짜
	
	//펫시터 상위옵션
	private int petMainOptNum; //상위옵션 번호 (1)
	private String petMainOptName; //상위 옵션명 (견종)
	
	//펫시터 하위옵션 
	private int petSubOptionNum; //하위옵션번호 (1, 2, 3)
	private int petSubOptName; //하위옵션명 (소형, 중형, 대형)

	//펫시터 상세 옵션
	private int petDetailOptNum; //상세옵션번호 2개.. 주말여부, 대중소
	private int sitterPrice; //가격 
	
	
	
}
