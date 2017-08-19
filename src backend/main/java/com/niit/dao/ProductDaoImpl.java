package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Addproduct;
import com.niit.model.Category;
@Repository
public class ProductDaoImpl implements ProductDao{

      public ProductDaoImpl(){
    	  System.out.println("ProductDaoImpl object is created");
      }
	@Autowired
	private SessionFactory sessionFactory;
	public void saveproduct(Addproduct product) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.save(product);
		
	}
	public List<Addproduct> getAllAddproducts() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Addproduct");
		List<Addproduct> products=query.list();
		return products;
	}
	public Addproduct getAddproductById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Addproduct product=(Addproduct)session.get(Addproduct.class, id);
		return product;
	}
	public void deleteProduct(Addproduct product) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.delete(product);
		
	}
	public void editProduct(Addproduct product) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		//session.beginTransaction();
		session.update(product);
		//session.getTransaction().commit();
		
	}
	public List<Category> getAllCategories() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		return categories;
	}
	
	
	
	
	}


