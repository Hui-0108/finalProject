package com.fin.app.donation;

import com.fin.app.member.Member;

public interface DonationService {

	//회원 정보 불러오기
	public Member readMember(String mId) throws Exception;
	
	//후원 시작
	public void insertDonation(Donation dto) throws Exception;
		
	//후원 정보 변경 (후원 타입 변경/후원 중지)
	public void updateDonation(Donation dto) throws Exception;
	
	//후원 내역 확인
	public Donation readDonation(String mId);
}
