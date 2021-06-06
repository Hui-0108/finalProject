package com.fin.app.petsit;

import org.springframework.web.multipart.MultipartFile;

public class Petsit {
	
	private int num, listNum;
	
	//펫시터 부가정보
	private String mId; //아이디
	
	private int petStart; //근무시작일
	private String petAct; //급여계좌 (14자리) 
	private int petYN; //반려동물유무 (0 무 1유);
	private int petYard; //마당유무 (0무 1유);
	private int petLarge; //대형견가능유무 (0무 1유);
	private String petContent; //소개글 
	private String petTitle; //글제목
	private int petCertif; //교육증취득일
	
	//펫시터 이미지
	private int petImgNum; //파일번호
	private String petImg; //이미지 파일이름
	private MultipartFile upload; //파일업로드
	
	//펫시터 스케줄 //가능1 불가0
	private int mon; 
	private int tue;
	private int wed;
	private int thu;
	private int fri;
	private int sat;
	private int sun;
	
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getListNum() {
		return listNum;
	}
	public void setListNum(int listNum) {
		this.listNum = listNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public int getPetStart() {
		return petStart;
	}
	public void setPetStart(int petStart) {
		this.petStart = petStart;
	}
	public String getPetAct() {
		return petAct;
	}
	public void setPetAct(String petAct) {
		this.petAct = petAct;
	}
	public int getPetYN() {
		return petYN;
	}
	public void setPetYN(int petYN) {
		this.petYN = petYN;
	}
	public int getPetYard() {
		return petYard;
	}
	public void setPetYard(int petYard) {
		this.petYard = petYard;
	}
	public int getPetLarge() {
		return petLarge;
	}
	public void setPetLarge(int petLarge) {
		this.petLarge = petLarge;
	}
	public String getPetContent() {
		return petContent;
	}
	public void setPetContent(String petContent) {
		this.petContent = petContent;
	}
	public int getPetImgNum() {
		return petImgNum;
	}
	public void setPetImgNum(int petImgNum) {
		this.petImgNum = petImgNum;
	}
	public String getPetImg() {
		return petImg;
	}
	public void setPetImg(String petImg) {
		this.petImg = petImg;
	}
	
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	public int getMon() {
		return mon;
	}
	public void setMon(int mon) {
		this.mon = mon;
	}
	public int getTue() {
		return tue;
	}
	public void setTue(int tue) {
		this.tue = tue;
	}
	public int getWed() {
		return wed;
	}
	public void setWed(int wed) {
		this.wed = wed;
	}
	public int getThu() {
		return thu;
	}
	public void setThu(int thu) {
		this.thu = thu;
	}
	public int getFri() {
		return fri;
	}
	public void setFri(int fri) {
		this.fri = fri;
	}
	public int getSat() {
		return sat;
	}
	public void setSat(int sat) {
		this.sat = sat;
	}
	public int getSun() {
		return sun;
	}
	public void setSun(int sun) {
		this.sun = sun;
	}
	public String getPetTitle() {
		return petTitle;
	}
	public void setPetTitle(String petTitle) {
		this.petTitle = petTitle;
	}
	public int getPetCertif() {
		return petCertif;
	}
	public void setPetCertif(int petCertif) {
		this.petCertif = petCertif;
	}
	
	
	
	
}
