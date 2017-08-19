/*package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CategoryDao;
import com.niit.model.Addproduct;
import com.niit.model.Category;

@Service
@Transactional

public class CategoryServiceImpl implements CategoryService {

@Autowired
private CategoryDao categoryDao;
	public void savecategory(Category category) {
		// TODO Auto-generated method stub
		categoryDao.saveCategory(category);
		
	}

	public List<Category> getAllcatagories() {
		// TODO Auto-generated method stub
		return categoryDao.getAllCategories();
	}

	public Category getCategoryById(int id) {
		// TODO Auto-generated method stub
		return categoryDao.getCategoryById(id);
	}

	public void deletecategory(int id) {
		// TODO Auto-generated method stub
		Category category=getCategoryById(id);
		categoryDao.deleteCategory(category);
	}

	public void updatecategory(Category category) {
		// TODO Auto-generated method stub
		categoryDao.editCategory(category);
	}

	public List<Addproduct> getAllAddproducts() {
		// TODO Auto-generated method stub
		return categoryDao.getAllAddproducts();
	}

}
*/