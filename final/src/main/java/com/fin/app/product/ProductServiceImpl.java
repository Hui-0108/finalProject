package com.fin.app.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fin.app.common.FileManager;
import com.fin.app.common.dao.CommonDAO;

@Service("product.productService")
public class ProductServiceImpl implements ProductService{

	@Autowired
	private CommonDAO dao;

	@Autowired
	private FileManager fileManager;
	
	@Override
	public void insertProduct(Product dto, String pathname) throws Exception {
		
		try {
			int seq = dao.selectOne("product.seq");
			dto.setpNum(seq);
			
			dao.insertData("product.insertProduct", dto);

			insertStoreDetail(dto);
			
			if(! dto.getSelectImg().isEmpty()) {
				for(MultipartFile mf: dto.getSelectImg()) {
					String saveFilename = fileManager.doFileUpload(mf, pathname);
					if(saveFilename==null)continue;
					
					dto.setpImgName(saveFilename);
					
					insertProductImage(dto);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}


	@Override
	public int dataCount(Map<String, Object> map) {
		int result = 0;
		
		try {
			result = dao.selectOne("product.dataCount", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}

	@Override
	public List<Product> listProduct(Map<String, Object> map) {
		List<Product> list = null;
		
		try {
			list = dao.selectList("product.listProduct", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public void updateHitCount(int pNum) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Product readProduct(int pNum) {
		Product dto = null;
		
		try {
			dto = dao.selectOne("product.readProduct", pNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public void updateProduct(Product dto, String pathname) throws Exception {
		
		
		try {
			dao.updateData("product.updateProduct", dto);
			
			updateStoreDetail(dto);
			
			if(! dto.getSelectImg().isEmpty()) {
				for(MultipartFile mf: dto.getSelectImg()) {
					String saveFilename = fileManager.doFileUpload(mf, pathname);
					if(saveFilename==null)continue;
					
					dto.setpImgName(saveFilename);
					
					insertProductImage(dto);
				}
			}				
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@Override
	public void deleteProduct(int pNum, String pathname) throws Exception {
	
		try {
			
			List<Product> listProductImage = listProductImage(pNum);
			if(listProductImage != null) {
				for(Product dto: listProductImage) {
					fileManager.doFileDelete(dto.getpImgName(), pathname);
				}
			}
			
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("field", "pNum");
			map.put("pNum", pNum);
			deleteProductImage(map);
			
			dao.deleteData("product.deleteProduct", pNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		
	}

	@Override
	public List<Product> listCategroy() {
		List<Product> list = null;
		
		try {
			list = dao.selectList("product.listCategory");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}



	@Override
	public List<Product> listMainOpt() {
		List<Product> list = null;
		
		try {
			list = dao.selectList("product.listMainOpt");
		} catch (Exception e) {
			e.printStackTrace();
		}			
		return list;
	}


	@Override
	public List<Product> listSubOpt(Map<String, Object> map) {
		List<Product> list = null;
		
		try {
			list = dao.selectList("product.listSubOpt", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void insertStoreDetail(Product dto) throws Exception {
		
		try {
			dao.insertData("product.insertStoreDetail", dto);
		} catch (Exception e) {
			throw e;
		}
		
	}	
	
	@Override
	public List<Product> listStoreDetail(Map<String, Object>map) {
		List<Product> list = null;
		
		try {
			list = dao.selectList("product.listStoreDetail", map);
		} catch (Exception e) {
			e.printStackTrace();	
		}
		return list;
	}
	
	
	@Override
	public Product readStoreDetail(int storeDetailOptNum) {
		Product dto = null;
		
		try {
			dto = dao.selectOne("product.readStoreDetail", storeDetailOptNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return dto;
	}
	
	@Override
	public void updateStoreDetail(Product dto) throws Exception {
		
		try {
			dao.updateData("product.updateStoreDetail", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void deleteStoreDetail(int storeDetailOptNum) throws Exception {
		
		try {
			dao.deleteData("product.deleteStoreDetail", storeDetailOptNum);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
	@Override
	public void insertProductImage(Product dto) throws Exception {
		
		try {
			dao.insertData("product.insertProductImage", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}		
	
	@Override
	public List<Product> listProductImage(int pNum) {
		List<Product> listProductImage = null;
		
		try {
			listProductImage = dao.selectList("product.listProductImage", pNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listProductImage;
	}

	@Override
	public Product readProductImage(int pImgNum) {
		Product dto = null;
		
		try {
			dto = dao.selectOne("product.readProductImage", pImgNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public void deleteProductImage(Map<String, Object> map) throws Exception {
		
		try {
			dao.deleteData("product.deleteProductImage", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;		
		}
	}


}
