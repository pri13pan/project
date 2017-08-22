package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.service.ProductService;

@Controller
public class homecontroller {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/")
	public String homepage(HttpSession session) {
		 session.setAttribute("categories",productService.getAllCategories());
		return "home";
		   
	}

	@RequestMapping("/aboutus")
	public String aboutus()
	{
		return "aboutus";
	}
	@RequestMapping("/contactus")
	public String contactus()
	{
		return "contactus";
	}
	@RequestMapping("/login")
	public String login(@RequestParam (required=false) String error,Model model)
	{
		if(error!=null)
			model.addAttribute("error", "Invalid Username/Password");
		return "login";
	}

	@RequestMapping("/signup")
	public String signup()
	{
	return "signup";	
	}
	@RequestMapping("/admin")
	public String admin()
	{
	return "admin";	
	}
	

	
}


