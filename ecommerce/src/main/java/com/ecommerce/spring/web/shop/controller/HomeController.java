package com.ecommerce.spring.web.shop.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.spring.web.model.CustomUser;
import com.ecommerce.spring.web.service.AccountsService;
import com.ecommerce.spring.web.service.CategoryService;
import com.ecommerce.spring.web.service.ImagesService;
import com.ecommerce.spring.web.service.ProductsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	AccountsService accountsService;
	
	@Autowired
	ImagesService imagesService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ProductsService productsService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/", "/welcome**"} , method = RequestMethod.GET)
	public String home(Model model) {
		
		model.addAttribute("title", "Spring Security + Hibernate Example");
		model.addAttribute("message", "This is default page!");
		
		model.addAttribute("listCategory", categoryService.getAllAvailableCategory());
		
		return "shop.home.layout";
	}
	
	@RequestMapping(value = "/category/{categoryID}", method = RequestMethod.GET)
	public String listProduct(Model model, @PathVariable("categoryID") int categoryID) throws Exception {
		model.addAttribute("categoryName", categoryService.findOneCategoryByID(categoryID).getCategoryName());
		model.addAttribute("listCategory", categoryService.getAllAvailableCategory());
		model.addAttribute("listProducts", productsService.getListProductsByCategoryID(categoryID));
		return "shop.product.layout";
	}
	
	// for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accesssDenied(Model model) {

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			CustomUser userDetail = (CustomUser) auth.getPrincipal();
			model.addAttribute("username", userDetail.getUsername());

		}
		return "403";
	}
	
	@RequestMapping(value = "/getAvatar", method = RequestMethod.GET)
	@ResponseBody
	public void getAvatar(final HttpServletResponse response) throws IOException  {
		
		String currentUserName = "";			
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			CustomUser userDetail = (CustomUser) auth.getPrincipal();
			currentUserName = userDetail.getUsername();
		}
		
		byte[] bytes = accountsService.getImageByEmail(currentUserName);
		
	    response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
	    response.getOutputStream().write(bytes);

	    response.getOutputStream().close();
		
	}

}
