package com.fin.app.mypage;

public interface MypageService {
	// 내정보 확인
	public Profile getUserDetail(String mId);
	// 정보수정
	public Profile updateUserDetail(Profile dto, String pathname) throws Exception;
	// 비밀번호 변경
	public boolean updatePwd(Profile dto, String mId) throws Exception;
	

}
