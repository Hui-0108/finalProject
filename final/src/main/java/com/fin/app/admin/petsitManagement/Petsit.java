package com.fin.app.admin.petsitManagement;

import java.util.Date;

public class Petsit {
	private long mNum;
	private int mType;//회원구분(회원/비회원)
	
	private String mId;
	private String mPwd;
	private String mNick;
	private int mRole;//회원권한(운영자0,일반1,펫시터2)
	
	private Date petStart; // 근무시작일
	private int petOnoff; // 활동여부
	private String petAct; // 급여계좌
	
	private int mon; // 근무 스케쥴
	private int tus;
	private int wed;
	private int thu;
	private int fri;
	private int sat;
	private int sun;
	

	public int getPetOnoff() {
		return petOnoff;
	}

	public void setPetOnoff(int petOnoff) {
		this.petOnoff = petOnoff;
	}

	public String getPetAct() {
		return petAct;
	}

	public void setPetAct(String petAct) {
		this.petAct = petAct;
	}

	public int getMon() {
		return mon;
	}

	public void setMon(int mon) {
		this.mon = mon;
	}

	public int getTus() {
		return tus;
	}

	public void setTus(int tus) {
		this.tus = tus;
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

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmPwd() {
		return mPwd;
	}

	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}

	public String getmNick() {
		return mNick;
	}

	public void setmNick(String mNick) {
		this.mNick = mNick;
	}

	public int getmRole() {
		return mRole;
	}

	public void setmRole(int mRole) {
		this.mRole = mRole;
	}

	public Date getPetStart() {
		return petStart;
	}

	public void setPetStart(Date petStart) {
		this.petStart = petStart;
	}
	
	
}
