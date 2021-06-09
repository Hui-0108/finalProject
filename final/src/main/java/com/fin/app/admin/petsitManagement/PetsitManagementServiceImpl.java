package com.fin.app.admin.petsitManagement;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.dao.CommonDAO;

@Service("admin.petsitManagementService")
public class PetsitManagementServiceImpl implements PetsitManagementService {
	@Autowired
	private CommonDAO dao;

	@Override
	public void insertPetsit(Petsit dto, String mId) throws Exception {
		try {
			long mNum = dao.selectOne("adminPetsit.clientSeq");
			
			String mPwd = mId;
			String mNick = mId;
			
			dto.setmNum(mNum);
			dto.setmId(mId);
			dto.setmPwd(mPwd);
			dto.setmNick(mNick);
			
			Date date = new Date();
			
			dto.setPetStart(date);
			
			
			// 펫시터 등록
			dao.insertData("adminPetsit.insertPetSit", dto);
			dao.insertData("adminPetsit.insertMember", dto);
			dao.insertData("adminPetsit.insertPetDetail", dto);
			dao.insertData("adminPetsit.insertMemberDetail", dto);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public void printPetsit(Petsit dto) throws Exception {
		try {
	        Random rand = new Random();
	        String newPetsitNum = ""; //난수가 저장될 변수
			
	        for(int i=0; i<6; i++) {
	            String ran = Integer.toString(rand.nextInt(10));
	            newPetsitNum += ran;
	        }
	        
			String mId = "petsit"+newPetsitNum;
			String mPwd = mId;
			String mNick = mId;
			
			dto.setmId(mId);
			dto.setmPwd(mPwd);
			dto.setmNick(mNick);
			
			Date date = new Date();
			
			dto.setPetStart(date);
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		
	}

	@Override
	public List<Petsit> listPetsit() {
		List<Petsit> list = null;
		
		try {
			list=dao.selectList("adminPetsit.listPetsit");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
