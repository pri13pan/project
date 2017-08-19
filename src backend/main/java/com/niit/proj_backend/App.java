package com.niit.proj_backend;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBconfiguration;
import com.niit.dao.CustomerDaoImpl;
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Addproduct;
import com.niit.service.CustomerServiceImpl;
import com.niit.service.ProductService;
import com.niit.service.ProductServiceImpl;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        ApplicationContext context=new AnnotationConfigApplicationContext(DBconfiguration.class,ProductDaoImpl.class,ProductServiceImpl.class,CustomerDaoImpl.class,CustomerServiceImpl.class);
       /* ProductService productService=(ProductService)context.getBean("productServiceImpl");   
    
        com.niit.model.Addproduct product=new Addproduct();
        product.setProductName("ring");
        product.setPrice(2000);
        product.setQuantity(1);
        product.setDescription("some description about ring");
        
        productService.saveProduct(product);*/
    
    }
}
