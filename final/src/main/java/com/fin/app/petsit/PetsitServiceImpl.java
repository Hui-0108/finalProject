package com.fin.app.petsit;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.FileManager;
import com.fin.app.common.dao.CommonDAO;

@Service("petsit.petsitService")
public class PetsitServiceImpl implements PetsitService {
	@Autowired
	private CommonDAO dao;
	
	@Autowired
	private FileManager fileManager;
	
	//글작성
	@Override
	public void insertPetsit(Petsit dto, String pathname) throws Exception {
		try {
			String saveFilename = fileManager.doFileUpload(dto.getUpload(), pathname);
			if(saveFilename!=null) {
				dto.setPetImg(saveFilename);
				
				dao.insertData("petsit.insertPetsit", dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	//글리스트
	@Override
	public List<Petsit> listPetsit(Map<String, Object> map) {
		List<Petsit> list=null;
		
		try {
			list=dao.selectList("petsit.listPetsit", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	//데이터 갯수
	@Override
	public int dataCount(Map<String, Object> map) {
		int result=0;
		
		try {
			result=dao.selectOne("petsit.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	//글보기
	@Override
	public Petsit readPetsit(int num) {
		Petsit dto = null;
		
		try {
			dto=dao.selectOne("petsit.readPetsit", num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public void updatePetsit(Petsit dot, String pathname) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePetsit(int num, String pathname, String userId) throws Exception {
		// TODO Auto-generated method stub
		
	}

}
