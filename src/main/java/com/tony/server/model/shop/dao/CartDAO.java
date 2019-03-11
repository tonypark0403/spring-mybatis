package com.tony.server.model.shop.dao;

import java.util.List;

import com.tony.server.model.shop.dto.CartDTO;

public interface CartDAO {
	List<CartDTO> cartMoney();

	void insert(CartDTO dto);

	List<CartDTO> listCart(String userid);

	void delete(int cart_id);

	void deleteAll(String userid);

	void update(int cart_id);

	int sumMoney(String userid);

	int countCart(String userid, int product_id);

	void updateCart(CartDTO dto);

	void modifyCart(CartDTO dto);
}
