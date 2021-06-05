package com.fin.app.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.dao.CommonDAO;

@Service("member.memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private CommonDAO dao;
	
	
	@Override
	public Member loginMember(String mId) {
		Member dto=null;
		
		try {
			dto=dao.selectOne("member.loginMember", mId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public void insertMember(Member dto) throws Exception {
		try {
			System.out.println("dto.getmEmail1() : " + dto.getmEmail1());
			System.out.println("dto.getmEmail2() : " + dto.getmEmail2());
			
			if(dto.getmEmail1().length()!=0 && dto.getmEmail2().length()!=0) {
				dto.setmEmail(dto.getmEmail1() + "@" + dto.getmEmail2());
			}
			
			if(dto.getmTel1().length()!=0 && dto.getmTel2().length()!=0 && dto.getmTel3().length()!=0) {
				dto.setmTel(dto.getmTel1() + "-" + dto.getmTel2() + "-" + dto.getmTel3());
			}
			
			long memberSeq = dao.selectOne("member.memberSeq");
			dto.setmNum(memberSeq);
			System.out.println("memberSeq : "+memberSeq);
			dao.insertData("member.client", dto);
			dao.insertData("member.insertMember", dto);
			dao.insertData("member.insertMemberDetail", dto);
			
			//dao.updateData("member.insertMember12", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void updateMember(Member dto) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Member readMember(String mId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteMember(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int dataCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Member> listMember(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
