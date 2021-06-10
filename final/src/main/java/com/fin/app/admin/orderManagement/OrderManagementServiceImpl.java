package com.fin.app.admin.orderManagement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fin.app.common.dao.CommonDAO;

@Service("admin.orderManagementService")
public class OrderManagementServiceImpl implements OrderManagementService {
	@Autowired
	private CommonDAO dao;
	
	@Override
	public List<OrderManagement> listOrder() throws Exception {
		List<OrderManagement> list = null;
		
		try {
			list = dao.selectList("adminOrder.listOrder");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}
