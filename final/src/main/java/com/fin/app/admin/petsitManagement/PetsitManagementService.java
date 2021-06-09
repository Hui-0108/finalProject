package com.fin.app.admin.petsitManagement;

import java.util.List;

public interface PetsitManagementService {
	public void insertPetsit(Petsit dto, String mId) throws Exception;
	
	public void printPetsit(Petsit dto) throws Exception;
	
	public List<Petsit> listPetsit();
}
