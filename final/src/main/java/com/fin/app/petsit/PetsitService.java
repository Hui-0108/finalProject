package com.fin.app.petsit;

import java.util.List;
import java.util.Map;

public interface PetsitService {

	//글쓰기
	public void insertPetsit(Petsit dto, String pathname) throws Exception;
	//글리스트
	public List<Petsit> listPetsit(Map<String, Object> map);
	//글갯수(for paging)
	public int dataCount(Map<String, Object> map);
	//글보기
	public Petsit readPetsit(int num);
	//글수정
	public void updatePetsit(Petsit dot, String pathname) throws Exception;
	//글삭제
	public void deletePetsit(int num, String pathname) throws Exception;
	
	//파일insert
	public void insertFile(Petsit dto) throws Exception;
	//파일 list
	public List<Petsit> listFile(int num);
	//파일읽기
	public Petsit readFile(int petImgNum);
	//파일 지우기
	public void deleteFile(Map<String, Object> map) throws Exception;

	
	
	

}
