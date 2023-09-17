package com.projectcrud.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.projectcrud.dao.ProductDao;
import com.projectcrud.model.Product;

@Controller
public class MainController {
	@Autowired
	ProductDao productDao;
	@RequestMapping("/")
	public String home(Model m) {
		System.out.println("url hit home");
		List<Product> all = productDao.getAll();
		m.addAttribute("products", all);
		return "index";
	}
	@RequestMapping("/add-form")
	public String addProductForm(Model m) {
		m.addAttribute("title","Add Product");
		return "add_product_form";
	}
	
	@RequestMapping(path = "/handle-product",method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product p ,Model m,HttpServletRequest request) {
		RedirectView redirectView = new RedirectView();
		System.out.println("from add hadler "+p);
		productDao.createProduct(p);
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	@RequestMapping("/delete/{id}")
	public RedirectView deleteProduct(@PathVariable("id") int id,HttpServletRequest request) {
		RedirectView r = new RedirectView();
		
		productDao.deleteProduct(id);
		r.setUrl(request.getContextPath()+"/");
		return r;
		}
	
	@RequestMapping("/update/{id}")
	public String updateForm(@PathVariable("id") int id , Model m) {
				
				Product product = productDao.getProduct(id);
				m.addAttribute("product", product);
				return "update_form";
	}
	@RequestMapping(path = "/handle-product-update",method = RequestMethod.POST)
	public String handleUpdate(@ModelAttribute Product p) {
				System.out.println("fromupdate hadler "+p);
				productDao.update(p);
				return "redirect:/";
				
	}
}
