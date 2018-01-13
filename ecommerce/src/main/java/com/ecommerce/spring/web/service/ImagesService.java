package com.ecommerce.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.spring.web.mappers.ImagesMapper;
import com.ecommerce.spring.web.model.Image;
import com.ecommerce.spring.web.serviceinterface.ImagesServiceI;

@Service("imagesService")
public class ImagesService implements ImagesServiceI {

	@Autowired
	ImagesMapper imagesMapper;
	
	@Override
	public List<Image> getAll() {
		return imagesMapper.getAll();
	}

	@Override
	public long[] getImageIDsByProductID(long productID) {
		Image[] listImage = imagesMapper.getImageIDsByProductID(productID);
		long[] listImageID = new long[listImage.length];
		for (int i = 0; i < listImage.length; i++) {
			listImageID[i] = listImage[i].getImageID();
		}
		return listImageID;
	}
	
	@Override
	public byte[] getImageByImageID(long imageID) {
		return imagesMapper.getImageByImageID(imageID).getImage();
	}

	@Override
	public void deleteImage(long imageID) throws Exception {
		try {
			imagesMapper.deleteImage(imageID);
		} catch(Exception e) {
			throw new Exception("[deleteImage] - Images Service Error: " + e.getMessage());
		}
	}
	
	public void deleteImageFromProductID(long productID) throws Exception {
		try {
			imagesMapper.deleteImageFromProductID(productID);
		} catch(Exception e) {
			throw new Exception("[deleteImageFromProductID] - Images Service Error: " + e.getMessage());
		}
	}

	@Override
	public void insertImage(Image image) throws Exception {
		try {
			imagesMapper.insertImage(image);
		} catch(Exception e) {
			throw new Exception("[insertImage] - Images Service Error: " + e.getMessage());
		}
	}

	@Override
	public void updateImageByProductID(Image image) throws Exception {
		try {
			imagesMapper.updateImageByProductID(image);
		} catch(Exception e) {
			throw new Exception("[updateImageByProductID] - Images Service Error: " + e.getMessage());
		}
	}
	
}
