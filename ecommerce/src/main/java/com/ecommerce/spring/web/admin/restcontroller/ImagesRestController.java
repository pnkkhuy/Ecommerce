package com.ecommerce.spring.web.admin.restcontroller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.ecommerce.spring.web.service.ImagesService;

@RestController
public class ImagesRestController {

	@Autowired
	ImagesService imagesService;
	
	@GetMapping(value = "/api/image/getImageIDsByProductID/{productID}")
	public long[] getImageIDsByProductID(@PathVariable("productID")int productID) {
		long[] listImageID = imagesService.getImageIDsByProductID(productID);
		return listImageID;
	} 
	
	@PostMapping(value = "/api/image/delete")
	public ResponseEntity<?> deleteImagePost(long key) throws Exception {
		imagesService.deleteImage(key);
		return new ResponseEntity<>(key, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/api/image/getImage/{imageID}", method = RequestMethod.GET)
	@ResponseBody
	public void getImage(final HttpServletResponse response, @PathVariable("imageID")long imageID) throws IOException  {
		
		byte[] bytes = imagesService.getImageByImageID(imageID);
		
	    response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
	    response.getOutputStream().write(bytes);

	    response.getOutputStream().close();		
	}
}
