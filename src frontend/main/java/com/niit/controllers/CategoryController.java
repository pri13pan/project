/*package com.niit.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.model.Addproduct;
import com.niit.model.Category;
import com.niit.service.CategoryService;

public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/admin/Category")
	@ResponseBody
	public String getCategory(Model model)
	
	{
		List<Addproduct> products=categoryService.getAllAddproducts();
		model.addAttribute("products", products);
		model.addAttribute("category", new Category());
		return "Category";
	}
        @RequestMapping("/admin/Category/savecategory")
        public String savecategory( @ModelAttribute(name="category") Category category)
        {
        	
        	categoryService.savecategory(category);
        	return "success";
        }
        @RequestMapping("/admin/Category/viewcategory")
        public String getAllCategory(Model model)
        {
        	List<Category> categorys=categoryService.getAllcatagories();
        	model.addAttribute("categorys", categorys);
        	return "categorylist";
        }
        @RequestMapping("/admin/Category/viewcategory/{id}")
        public String getCategoryById(@PathVariable int id,Model model)
        {
        Category category=categoryService.getCategoryById(id);
        model.addAttribute("category", category);
        return "viewcategory";
        }
        
        @RequestMapping("/admin/Category/deletecategory/{id}")
        public String deletecategoryById(@PathVariable int id)
        {
        categoryService.deletecategory(id);
        
        return "redirect:/admin/Category/viewcategory";
        }
        
        @RequestMapping("/admin/Category/geteditform/{id}")
        public String getEditForm(@PathVariable int id,Model model)
        {
        	List<Addproduct> products=categoryService.getAllAddproducts();
        	model.addAttribute("products", products);
        Category category=categoryService.getCategoryById(id);
        model.addAttribute("categoryObj", category);
        return "editcategory";
        }
        
        @RequestMapping("/admin/Category/editcategory")
        public String editcategory(@Valid @ModelAttribute(name="categoryObj") Category category)
        {
        	
        categoryService.updatecategory(category);
        return "redirect:/admin/Category/viewcategory";
        }
        


}
*/