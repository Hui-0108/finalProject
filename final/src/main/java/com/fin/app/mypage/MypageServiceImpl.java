package com.fin.app.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.dao.CommonDAO;
import com.fin.app.member.Member;

@Service("mypage.mypageService")
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	private CommonDAO dao;
	
	@Override
	public Member getUserDetail(String mId) {
		Member dto = null;
		try {
			dto = dao.selectOne("mypage.selectDetail", mId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

}
