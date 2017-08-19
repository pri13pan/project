package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String login()
	{
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


