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
