package com.fin.app.mypage;

import com.fin.app.member.Member;

public interface MypageService {
	// 내정보 확인
	public Member getUserDetail(String mId);

}
