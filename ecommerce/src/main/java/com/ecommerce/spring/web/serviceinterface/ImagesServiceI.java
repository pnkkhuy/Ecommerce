package com.ecommerce.spring.web.serviceinterface;

import java.awt.Image;
import java.util.List;

public interface ImagesServiceI {
	
	List<Image> getAll();
	Image findOneImageByProductID(int productID);
	void deleteImage(int imageID) throws Exception;
	void insertImage(Image image) throws Exception;
	void updateImageByProductID(Image image) throws Exception;
}
