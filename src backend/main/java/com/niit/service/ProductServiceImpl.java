package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDao;
import com.niit.model.Addproduct;
import com.niit.model.Category;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
	public ProductServiceImpl(){
		System.out.println("ProductServiceImpl object is created");
	}
	
	@Autowired
	private ProductDao productdao;
	
	public void saveProduct(Addproduct product) {
		// TODO Auto-generated method stub
		productdao.saveproduct(product);
		
	}

	public List<Addproduct> getAllAddproducts() {
		// TODO Auto-generated method stub
		return productdao.getAllAddproducts();
	}

	public Addproduct getAddproductById(int id) {
		// TODO Auto-generated method stub
		return productdao.getAddproductById(id);
	}

	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		Addproduct product=getAddproductById(id);
		productdao.deleteProduct(product);
	}

	public void updateProduct(Addproduct product) {
		// TODO Auto-generated method stub
		productdao.editProduct(product);
		
	}

	public List<Category> getAllCategories() {
		// TODO Auto-generated method stub
		return productdao.getAllCategories();
	}

}

