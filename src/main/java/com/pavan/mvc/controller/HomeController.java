package com.pavan.mvc.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.pavan.mvc.dao.ProductDao;
import com.pavan.mvc.model.Product;

@Controller
public class HomeController {

	@Autowired
	private ProductDao productDao;
	
	private Path path;

	@RequestMapping("/")
	public String goHome() {
		return "home";
	}
	@RequestMapping("/productsList")
	public String getProducts(Model model) {
		List<Product> products = productDao.getAllProducts();
		model.addAttribute("products", products);
		return "productsList";
	}

	@RequestMapping("/form")
	public String getForm() {
		return "form";
	}

	@RequestMapping("productsList/viewProduct/{productId}")
	public String viewProduct(@PathVariable Long productId, Model model)
			throws IOException {
		Product product = productDao.getProductById(productId);
		model.addAttribute(product);
		return "viewProduct";
	}

	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}

	@RequestMapping("/admin/productInventory")
	public String productInventory(Model model) {
		List<Product> products = productDao.getAllProducts();
		model.addAttribute("products", products);
		return "productInventory";
	}

	@RequestMapping("/admin/productInventory/addProduct")
	public String addProduct(Model model) {

		Product product = new Product();
		product.setProductCategory("instrument");
		product.setProductCondition("New");
		product.setProductStatus("Active");
		model.addAttribute("product", product);
		return "addProduct";
	}
	
	@RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
	public String addProductPost(@ModelAttribute("product") Product product){
		productDao.addProduct(product);
		/*MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");
		
		if(productImage != null && !productImage.isEmpty()){
			try{
				productImage.transferTo(new File(path.toString()));
			}catch (Exception e){
				e.printStackTrace();
				throw new RuntimeException("Product image saving failed",e);
			}
		}*/
		return "redirect:/admin/productInventory";
	}
	
	@RequestMapping("admin/productInventory/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable Long productId, Model model)
			throws IOException {
		productDao.deleteProduct(productId);
		return "redirect:/admin/productInventory";
	}

}
