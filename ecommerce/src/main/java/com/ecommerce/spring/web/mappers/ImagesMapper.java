package com.ecommerce.spring.web.mappers;

import java.awt.Image;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ImagesMapper {
	
	List<Image> getAll();
	Image findOneImageByProductID(@Param("productID")int productID);
	void deleteImage(@Param("imageID")int imageID) throws Exception;
	void insertImage(Image image) throws Exception;
	void updateImageByProductID(Image image) throws Exception;
}
