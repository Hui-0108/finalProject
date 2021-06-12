package com.fin.app.product;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	private int pNum; //제품코드 
	private int listNum; //리스트번호
	private String pName;//상품명
	private int pPrice;//가격
	private int pDiscountRate;//할인율
	private String pContent;//상세정보
	private int delivType;//배송조건
	private String pDate;//등록일	
	private int pCateNum;//카테고리 번호
	private String pCateName; //카테고리명	
	
	private String pImgName;//이미지파일 이름 
	private int pImgNum;//파일번호
	private List<MultipartFile> selectImg; //이미지 파일 업로드

	//제품 옵션들
	private int storeMainOptNum;//상위옵션번호
	private String storeMainOptName;//상위옵션명
	
	private int storeSubOptNum;//하위옵션변호
	private String storeSubOptName;//하위옵션명
	
	private int storeDetailOptNum;//상세옵션번호
	private int pDetailCnt;//상세옵션수량
	private int pDetailPrice;//최종가격?	
	
	
	public int getStoreMainOptNum() {
		return storeMainOptNum;
	}

	public void setStoreMainOptNum(int storeMainOptNum) {
		this.storeMainOptNum = storeMainOptNum;
	}

	public String getStoreMainOptName() {
		return storeMainOptName;
	}

	public void setStoreMainOptName(String storeMainOptName) {
		this.storeMainOptName = storeMainOptName;
	}

	public int getStoreSubOptNum() {
		return storeSubOptNum;
	}

	public void setStoreSubOptNum(int storeSubOptNum) {
		this.storeSubOptNum = storeSubOptNum;
	}

	public String getStoreSubOptName() {
		return storeSubOptName;
	}

	public void setStoreSubOptName(String storeSubOptName) {
		this.storeSubOptName = storeSubOptName;
	}

	public int getStoreDetailOptNum() {
		return storeDetailOptNum;
	}

	public void setStoreDetailOptNum(int storeDetailOptNum) {
		this.storeDetailOptNum = storeDetailOptNum;
	}

	public int getpDetailCnt() {
		return pDetailCnt;
	}

	public void setpDetailCnt(int pDetailCnt) {
		this.pDetailCnt = pDetailCnt;
	}

	public int getpDetailPrice() {
		return pDetailPrice;
	}

	public void setpDetailPrice(int pDetailPrice) {
		this.pDetailPrice = pDetailPrice;
	}

	public int getpCateNum() {
		return pCateNum;
	}

	public void setpCateNum(int pCateNum) {
		this.pCateNum = pCateNum;
	}

	public int getListNum() {
		return listNum;
	}

	public void setListNum(int listNum) {
		this.listNum = listNum;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public int getpDiscountRate() {
		return pDiscountRate;
	}

	public void setpDiscountRate(int pDiscountRate) {
		this.pDiscountRate = pDiscountRate;
	}

	public String getpContent() {
		return pContent;
	}

	public void setpContent(String pContent) {
		this.pContent = pContent;
	}




	public String getpImgName() {
		return pImgName;
	}

	public void setpImgName(String pImgName) {
		this.pImgName = pImgName;
	}

	public int getpImgNum() {
		return pImgNum;
	}

	public void setpImgNum(int pImgNum) {
		this.pImgNum = pImgNum;
	}

	public int getDelivType() {
		return delivType;
	}

	public void setDelivType(int delivType) {
		this.delivType = delivType;
	}

	public int getpNum() {
		return pNum;
	}

	public void setpNum(int pNum) {
		this.pNum = pNum;
	}

	public String getpCateName() {
		return pCateName;
	}

	public void setpCateName(String pCateName) {
		this.pCateName = pCateName;
	}

	public List<MultipartFile> getSelectImg() {
		return selectImg;
	}

	public void setSelectImg(List<MultipartFile> selectImg) {
		this.selectImg = selectImg;
	}

	public String getpDate() {
		return pDate;
	}

	public void setpDate(String pDate) {
		this.pDate = pDate;
	}
	

	
	
}
