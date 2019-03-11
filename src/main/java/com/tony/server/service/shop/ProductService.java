package com.tony.server.service.shop;

import java.util.List;

import com.tony.server.model.shop.dto.ProductDTO;

public interface ProductService {
	List<ProductDTO> listProduct();

	ProductDTO detailProduct(int product_id);

	String fileInfo(int product_id);

	void updateProduct(ProductDTO dto);

	void deleteProduct(int product_id);

	void insertProduct(ProductDTO dto);
}