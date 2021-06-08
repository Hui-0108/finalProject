package com.fin.app.admin.petsitManagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.dao.CommonDAO;

@Service("admin.petsitManagementService")
public class PetsitManagementServiceImpl implements PetsitManagementService {
	@Autowired
	private CommonDAO dao;

	@Override
	public void insertPetsit(Petsit dto) throws Exception {
		try {
			long clientSeq = dao.selectOne("adminPetsit.clientSeq");
			dto.setmNum(clientSeq);
			
			String mId = "petsit"+clientSeq;
			String mPwd = mId;
			String mNick = mId;
			
			dto.setmId(mId);
			dto.setmPwd(mPwd);
			dto.setmNick(mNick);
			
			
			// 펫시터 등록
			dao.insertData("adminPetsit.insertClient", dto);
			dao.insertData("adminPetsit.insertMember", dto);
			dao.insertData("adminPetsit.insertPetDetail", dto);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

}
