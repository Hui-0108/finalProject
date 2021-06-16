package com.fin.app.donation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.dao.CommonDAO;
import com.fin.app.member.Member;

@Service("donation.donationService")
public class DonationServiceImpl implements DonationService {
	@Autowired
	private CommonDAO dao;
	
	@Override
	public Member readMember(String mId) throws Exception {
		Member dto=null;
		try {
			dto=dao.selectOne("donation.readMember", mId);
			
			if(dto.getmId() != null) {
				dto.setmId(dto.getmId());
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		return dto;
		
	}
	
	@Override
	public void insertDonation(Donation dto) throws Exception {
		try {
		
			if(dto.getmId() != null) {
				dto.setmId(dto.getmId());
			}
			
			dao.insertData("donation.insertDonation", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}
	
	@Override
	public void updateDonation(Donation dto) throws Exception {
		try {
			if(dto.getmId() != null) {
				dto.setmId(dto.getmId());
			}
			
			dao.updateData("donation.updateDonation", dto);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
	}

	@Override
	public Donation readDonation(String mId) {
		Donation dto=null;
		
		try {
			dto=dao.selectOne("donation.readDonation", mId);
			
			if(dto!=null) {
				if(dto.getDonaState()!=null) {
					
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}


}
