package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartItemDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;

@Service
@Transactional
public class CartItemServiceImpl implements CartItemService{

	@Autowired
	private CartItemDao cartItemDao;
	public void addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		cartItemDao.addCartItem(cartItem);
		
	}

	public void removeCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		cartItemDao.removeCartItem(cartItemId);
		
	}

	public void removeAllCartItems(int cartId) {
		// TODO Auto-generated method stub
		cartItemDao.removeAllCartItem(cartId);
		
	}

	public Cart getCart(int cartId) {
		// TODO Auto-generated method stub
		return cartItemDao.getCart(cartId);
	}

}
