package com.niit.controllers;


import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

//import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
//import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Addproduct;
import com.niit.model.Category;
//import com.niit.model.Product;
import com.niit.service.ProductService;



@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	@RequestMapping("/admin/productform")
	public String getaddProduct(Model model)
	{
		List<Category> categories=productService.getAllCategories();
		model.addAttribute("categories",categories);
		model.addAttribute("product", new Addproduct());
		return "productform";
	}
	 @RequestMapping("/admin/productform/saveproduct")
	  public String saveProduct(@Valid @ModelAttribute(name="product") Addproduct product,BindingResult result,Model model)
     {
		 if(result.hasErrors())
		 {
			 List<Category> categories=productService.getAllCategories();
			 model.addAttribute("categories", categories);
			 return "productform";
		 }
     	productService.saveProduct(product);
     	MultipartFile image=product.getImage();
     	Path path=Paths.get("C:\\Users\\DELL\\workspace\\jwelshopping_frontend\\src\\main\\webapp\\WEB-INF\\resources\\images\\"+product.getId()+".png");
     	try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
     	
     	return "redirect:/all/productform/viewproduct";
     }
	 
	 @RequestMapping("/all/productform/viewproduct")
     public String getAllAddproducts(Model model)
     {
		 System.out.println(1);
     	List<Addproduct> products=productService.getAllAddproducts();
     	 System.out.println(2);
     	model.addAttribute("products", products);
     	 System.out.println(3);
     	return "productlist";
     }
	 
	 @RequestMapping("/all/productform/viewproduct/{id}")
     public String getAddproductById(@PathVariable int id,Model model)
     {
     Addproduct product=productService.getAddproductById(id);
     model.addAttribute("product", product);
     return "viewproduct";
     }
	 
	@RequestMapping("/admin/productform/deleteproduct/{id}")
     public String deleteProductById(@PathVariable int id)
     {
     productService.deleteProduct(id);
     
     return "redirect:/all/productform/viewproduct";
     }
	
	 @RequestMapping("/admin/productform/geteditform/{id}")
     public String getEditForm(@PathVariable int id,Model model)
     {
		 List<Category> categories=productService.getAllCategories();
			model.addAttribute("categories",categories);	
     Addproduct product=productService.getAddproductById(id);
     model.addAttribute("productObj", product);
     return "editform";
     }
	 
     @RequestMapping("/admin/productform/editproduct")
     public String editProduct(@ModelAttribute(name="productObj") Addproduct product)
     {
     	
     productService.updateProduct(product);
     productService.saveProduct(product);
  	MultipartFile image=product.getImage();
  	Path path=Paths.get("C:\\Users\\DELL\\workspace\\jwelshopping_frontend\\src\\main\\webapp\\WEB-INF\\resources\\images\\"+product.getId()+".png");
  	try {
				image.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
  	
  	return "redirect:/all/productform/viewproduct";
     
    
     }
     @RequestMapping("/all/product/searchbycategory")
     public String selectByCategory(@RequestParam String searchCondition,Model model)
     {
     	model.addAttribute("products",productService.getAllAddproducts());
     	if(searchCondition.equals("All"))
     		model.addAttribute("searchCondition","");
     	else
     		model.addAttribute("searchCondition",searchCondition);
     	return "productlist";
     }
    
     
}
