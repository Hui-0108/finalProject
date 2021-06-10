package com.fin.app.admin.donationManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.dao.CommonDAO;

@Service("admin.donationManagementService")
public class DonationManagementServiceImpl implements DonationManagementService {
	@Autowired
	private CommonDAO dao;
	
	@Override
	public List<DonationManagement> listDonation() throws Exception {
		List<DonationManagement> list = null;
		
		try {
			list = dao.selectList("adminDonation.listDonation");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
