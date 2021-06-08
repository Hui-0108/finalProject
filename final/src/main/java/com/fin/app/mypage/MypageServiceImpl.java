package com.fin.app.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.FileManager;
import com.fin.app.common.dao.CommonDAO;

@Service("mypage.mypageService")
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;
	
	@Override
	public Profile getUserDetail(String mId) {
		Profile dto = null;
		try {
			dto = dao.selectOne("mypage.selectDetail", mId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public Profile updateUserDetail(Profile dto, String pathname) throws Exception {
		
		try {
			// 데이터 가공
			if(dto.getmTel1().length()!=0 && dto.getmTel2().length()!=0 && dto.getmTel3().length()!=0) {
				dto.setmTel(dto.getmTel1() + "-" + dto.getmTel2() + "-" + dto.getmTel3());
			}
			if(dto.getmEmail1().length()!=0 && dto.getmEmail2().length()!=0) {
				dto.setmEmail(dto.getmEmail1() + "@" + dto.getmEmail2());
			}
			
			// 프로필사진
			String saveFilename = fileManager.doFileUpload(dto.getUpload(), pathname);
			if(saveFilename != null) {
				dto.setmProfileImg(saveFilename);
				dao.updateData("mypage.updateProfileImg", dto);
			}
			
			// 테이블이 다르기 때문에 두번 update
			dao.updateData("mypage.updateDetail", dto);
			dao.updateData("mypage.updateNick", dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		return dto;
	}

	@Override
	public boolean updatePwd(Profile dto, String mId) throws Exception {
		
		try {
			// 입력받은 현재 비밀번호와 현재세션의 비밀번호 정보 비교
			String currPwd = dto.getCurrPwd();
			if(currPwd.equals(dao.selectOne("mypage.selectCurrPwd", mId))) {
				
				
				dto.setmId(mId);
				
				// 비밀번호 update
				dao.updateData("mypage.updatePwd", dto);
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return false;
		
	}

}
