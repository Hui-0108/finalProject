package com.fin.app.admin;

import java.util.List;
import java.util.Map;

public interface AdminService {
	public int joinCount(String cDate);
	public int salesSum(String sDate);
	
	public int joinTot(Map<String, Object> map);
	public int salesTot(Map<String, Object> map);
	
	public int reservPet(Map<String, Object> map);
	
	public List<Admin> bestStore();
	
}
