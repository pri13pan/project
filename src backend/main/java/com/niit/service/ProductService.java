package com.niit.service;

 import java.util.List;


import com.niit.model.Addproduct;
import com.niit.model.Category;
 
public interface ProductService {

void saveProduct(Addproduct product);

List<Addproduct>getAllAddproducts();

Addproduct getAddproductById(int id);

void deleteProduct(int id);

void updateProduct(Addproduct product);

List<Category> getAllCategories();

}
