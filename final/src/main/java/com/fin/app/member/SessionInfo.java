package com.fin.app.member;

public class SessionInfo {
	private long mNum;//고객번호
	private String mId;//회원아이디
	private String mName;//회원이름
	private int mType; //회원구분(회원/비회원)
	private int mRole; //회원권한(운영자0,일반1,펫시터2)
	private String mNick;//닉네임
	
	public long getmNum() {
		return mNum;
	}
	public void setmNum(long mNum) {
		this.mNum = mNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public int getmType() {
		return mType;
	}
	public void setmType(int mType) {
		this.mType = mType;
	}
	public int getmRole() {
		return mRole;
	}
	public void setmRole(int mRole) {
		this.mRole = mRole;
	}
	public String getmNick() {
		return mNick;
	}
	public void setmNick(String mNick) {
		this.mNick = mNick;
	}
	
	
}
