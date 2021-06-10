package com.fin.app.admin.memberManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.dao.CommonDAO;

@Service("admin.memberManagementService")
public class MemberManagementServiceImpl implements MemberManagementService {
	@Autowired
	private CommonDAO dao;	
	
	@Override
	public List<MemberManagement> listMember() {
		List<MemberManagement> list = null;
		
		try {
			list = dao.selectList("adminMember.listMember");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
