package com.fin.app.admin.memberManagement;

import java.sql.Date;

public class MemberManagement {
	private String mId;
	private String mNick;
	private int mRole; // 회원권한(일반회원1, 펫시터2)
	private long mNum;
	private Date mBirth;
	
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
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
	public long getmNum() {
		return mNum;
	}
	public void setmNum(long mNum) {
		this.mNum = mNum;
	}
	public Date getmBirth() {
		return mBirth;
	}
	public void setmBirth(Date mBirth) {
		this.mBirth = mBirth;
	}
	
	
}
