package com.ecommerce.spring.web.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.spring.web.model.CustomUser;
import com.ecommerce.spring.web.service.AccountsService;
import com.ecommerce.spring.web.service.ImagesService;

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
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/", "/welcome**"} , method = RequestMethod.GET)
	public ModelAndView home() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security + Hibernate Example");
		model.addObject("message", "This is default page!");
	
		model.setViewName("hello");
		
		return model;
	}

	// for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

		ModelAndView model = new ModelAndView();

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			CustomUser userDetail = (CustomUser) auth.getPrincipal();
			model.addObject("username", userDetail.getUsername());

		}

		model.setViewName("403");
		return model;
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
