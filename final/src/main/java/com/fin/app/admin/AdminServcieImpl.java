package com.fin.app.admin;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.dao.CommonDAO;

@Service("admin.adminService")
public class AdminServcieImpl implements AdminService {
	@Autowired
	private CommonDAO dao;

	@Override
	public int joinCount(String cDate) {
		int count = 0;
		
		try {
			count = dao.selectOne("adminMain.joinCount", cDate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public int salesSum(String sDate) {
		int sum = 0;
		
		try {
			sum = dao.selectOne("adminMain.salesSum", sDate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return sum;
	}

	@Override
	public int joinTot(Map<String, Object> map) {
		int tot = 0;
		
		try {
			tot = dao.selectOne("adminMain.joinTot", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return tot;
	}

	@Override
	public int salesTot(Map<String, Object> map) {
		int tot = 0;
		
		try {
			tot = dao.selectOne("adminMain.salesTot", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return tot;
	}

	@Override
	public int reservPet(Map<String, Object> map) {
		int tot = 0;
		
		try {
			tot = dao.selectOne("adminMain.reservPet", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return tot;
	}
	
}
