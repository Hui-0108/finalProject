package com.fin.app.product;

import java.util.List;
import java.util.Map;

public interface ProductService {
	public void insertProduct(Product dto, String pathname) throws Exception;
	
	public int dataCount(Map<String, Object>map);
	public List<Product> listProduct(Map<String, Object>map);
	
	public void updateHitCount(int pNum) throws Exception;
	
	public Product readProduct (int pNum);
	
	public void updateProduct(Product dto, String pathname) throws Exception;
	public void deleteProduct(int pNum, String pathname) throws Exception;
	
	public List<Product> listCategroy();
	public List<Product> listMainOpt();
	public List<Product> listSubOpt(Map<String, Object>map);
	
	public void insertStoreDetail(Product dto) throws Exception;
	public List<Product> listStoreDetail(Map<String, Object>map);
	public Product readStoreDetail(int storeDetailOptNum);
	public void deleteStoreDetail(int storeDetailOptNum) throws Exception;
	
	public void insertProductImage(Product dto)throws Exception;
	public List<Product> listProductImage(int pNum);
	public Product readProductImage(int pImgNum);
	public void deleteProductImage(Map<String, Object> map) throws Exception;	
}
